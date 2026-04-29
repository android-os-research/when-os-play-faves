---
id: cat1-speedymovil
vendor: Multiple OEMs (Telcel/SpeedyMobil preload)
package: com.speedymovil.wire
verdict: CONFIRMED_HIGH
tag: BOOT_GRANT
category: cat1_silent_default_grant
---

# cat1-speedymovil · `com.speedymovil.wire`: Silent Boot Grant with Push-Triggered Dialing and IMEI Exfiltration

## Metadata
| Field | Value |
|---|---|
| Vendor | Multiple OEMs (Telcel-partnered builds) |
| Package | `com.speedymovil.wire` |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat1 — Silent Default Grant (user-revocable via Settings) |
| Auth strength | Name only |
| Threat type | Boot-time dangerous permission grant; app-level push-triggered dialing + IMEI SMS exfiltration |
| Main paper reference | §(subsec:telcel-speedymovil-default-grants) |

## Boot Grant

`DefaultPermissionGrantPolicy` hardcodes `com.speedymovil.wire` with grants for `READ_PHONE_STATE`, `CALL_PHONE`, `RECEIVE_SMS`, and `PROCESS_OUTGOING_CALLS` — all requiring user consent on AOSP. Grants apply only to system apps.

## App-Level Capabilities (Static Analysis + FlowDroid)

### Push-Triggered Silent Dialing

Push command `"z"` schedules a delayed dial via `PhoneManager.onMessage`. The dialer selects `ACTION_CALL` when `CALL_PHONE` is granted (silent call), falling back to `ACTION_DIAL` otherwise:

```smali
const-string v2, "z"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
...
# Dial runnable scheduled after v3 seconds
new-instance v4, Lorg/mbte/dialmyapp/phone/PhoneManager$b;
...
invoke-virtual {application, v4, v2, v3, v6},
    Lorg/mbte/dialmyapp/app/BaseApplication;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
```

Permission-gated call vs. dial selection:
```smali
const-string v1, "android.permission.CALL_PHONE"
invoke-static {v0, v1}, Lorg/mbte/dialmyapp/util/PermissionUtils;->checkPermissionGranted(...)Z
move-result v0
if-nez v0, :cond_1
const/4 p2, 0x1       # CALL_PHONE not granted → force DIAL
:cond_1
if-eqz p2, :cond_5
const-string p2, "android.intent.action.DIAL"
goto :goto_0
:cond_5
const-string p2, "android.intent.action.CALL"
```

### Device Identifier Persistence + SMS Exfiltration

Serial/IMEI is read (`Build.SERIAL`, `Build.getSerial()`, fallback `UUID.randomUUID()`) and stored in `SharedPreferences` as `dma_stored_serial`. FlowDroid confirms `getDeviceId()` → `dma_stored_IMEI` and the outbound SMS payload includes `"dma@i:" + getDeviceId()`, with the tainted value reaching `SmsManager.sendTextMessage`.

**FlowDroid sink (IMEI → SharedPreferences):**
```xml
<Sink Statement="virtualinvoke $r3.<...PreferencesHolder: void putStringAndCommit(...)>
    (\"dma_stored_IMEI\", $r2)"
     Method="<m.e.b.l.c: java.lang.String d(android.content.Context)>"/>
<Sources>
  <Source Statement="$r2 = virtualinvoke $r5.<android.telephony.TelephonyManager:
       java.lang.String getDeviceId()>()"
       Method="<m.e.b.l.c: java.lang.String d(android.content.Context)>"/>
</Sources>
```

**FlowDroid sink (IMEI → SMS):**
```xml
<Sink Statement="virtualinvoke $r6.<android.telephony.SmsManager:
     void sendTextMessage(...)>($r2, null, $r3, null, null)"
     Method="<org.mbte.dialmyapp.phone.PhoneManager: void B(java.lang.String,java.lang.String)>"/>
<Sources>
  <Source Statement="$r2 = virtualinvoke $r5.<android.telephony.TelephonyManager:
       java.lang.String getDeviceId()>()"
       Method="<m.e.b.l.c: java.lang.String d(android.content.Context)>"/>
</Sources>
```

## Notes

- These are statically observed capabilities; we do not assert confirmed malicious intent.
- No dynamic verification was performed for the app-level behavior (no device with active Telcel SIM available).
- Boot grant confirmed statically in multiple Telcel-partnered OEM firmware images.
