.class public Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.super Ljava/lang/Object;
.source "BaseNfcLedCoverController.java"


# static fields
.field public static final CMD_INTERNAL_LED_ACCEPT_REJECT:I = 0x11

.field public static final CMD_INTERNAL_LED_CALL_INPROGRESS:I = 0x3

.field public static final CMD_INTERNAL_LED_REPLY:I = 0xd1

.field public static final CMD_LED_ALARM:I = 0x6

.field public static final CMD_LED_BATTERY_CHARGING:I = 0xc

.field public static final CMD_LED_BATTERY_CHARGING_WIRELESS:I = 0x13

.field public static final CMD_LED_BATTERY_LOW:I = 0xb

.field public static final CMD_LED_CALL_END:I = 0x4

.field public static final CMD_LED_CALL_INCOMING:I = 0x2

.field public static final CMD_LED_CLOCK:I = 0xf

.field public static final CMD_LED_FACTORY_MODE:I = 0xe0

.field public static final CMD_LED_INDICATOR:I = 0x10

.field public static final CMD_LED_MISSED_EVENT:I = 0x9

.field public static final CMD_LED_MUSIC:I = 0xd

.field public static final CMD_LED_NEW_MESSAGE:I = 0x5

.field public static final CMD_LED_OFF:I = 0x12

.field public static final CMD_LED_POWER_ON:I = 0x1

.field public static final CMD_LED_VIDEO_CALL_INCOMING:I = 0x14

.field public static final CMD_LED_VOICE_RECORDER:I = 0xe

.field public static final CMD_LED_VOLUME:I = 0xa

.field public static final DEBUG:Z = true

.field public static final EVENT_RESULT_ACCEPT:B = 0x1t

.field public static final EVENT_RESULT_REJECT:B = 0x2t

.field public static final EVENT_RESULT_TAP_LEFT:B = 0x3t

.field public static final EVENT_RESULT_TAP_MID:B = 0x4t

.field public static final EVENT_RESULT_TAP_RIGHT:B = 0x5t

.field public static final EVENT_TOUCH_POLL_INTERVAL:J = 0x64L

.field public static final EVENT_TYPE_ALARM:I = 0x1

.field public static final EVENT_TYPE_CALL:I = 0x0

.field public static final EVENT_TYPE_FACTORY:I = 0x5

.field public static final EVENT_TYPE_MAX:I = 0x5

.field public static final EVENT_TYPE_SCHEDULE:I = 0x3

.field public static final EVENT_TYPE_SYSTEM_INTERNAL_EVENT:I = 0x4

.field public static final EVENT_TYPE_TIMER:I = 0x2

.field public static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field public static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field public static final SAFE_DEBUG:Z = false

.field public static final SYSTEM_EVENT_AUTH_RESPONSE:I = 0x6

.field public static final SYSTEM_EVENT_FOTA_IN_PROGRESS_REQUEST:I = 0x7

.field public static final SYSTEM_EVENT_FOTA_IN_PROGRESS_RESPONSE:I = 0x8

.field public static final SYSTEM_EVENT_KEY_FOTA_IN_PROGRESS:Ljava/lang/String; = "fota_in_progress"

.field public static final SYSTEM_EVENT_KEY_LED_OFF_COMMAND:Ljava/lang/String; = "led_off_command"

.field public static final SYSTEM_EVENT_KEY_SEND_COMMAND_CONTENT:Ljava/lang/String; = "send_command_content"

.field public static final SYSTEM_EVENT_KEY_SEND_COMMAND_ID:Ljava/lang/String; = "send_command_id"

.field public static final SYSTEM_EVENT_KEY_TOUCH_LISTENER_RESPONSE:Ljava/lang/String; = "lcd_touch_listener_respone"

.field public static final SYSTEM_EVENT_KEY_TOUCH_LISTENER_TYPE:Ljava/lang/String; = "lcd_touch_listener_type"

.field public static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field public static final SYSTEM_EVENT_KEY_TYPE_DISABLE_LCD_OFF_BY_COVER:Ljava/lang/String; = "lcd_off_disabled_by_cover"

.field public static final SYSTEM_EVENT_LCD_OFF_DISABLED_BY_COVER:I = 0x4

.field public static final SYSTEM_EVENT_LED_OFF:I = 0x0

.field public static final SYSTEM_EVENT_NOTIFICATION_ADD:I = 0x2

.field public static final SYSTEM_EVENT_NOTIFICATION_REMOVE:I = 0x3

.field public static final SYSTEM_EVENT_POWER_BUTTON:I = 0x1

.field public static final SYSTEM_EVENT_SEND_COMMAND:I = 0x5

.field public static final SYSTEM_EVENT_TYPE_DISABLE_LCD_OFF_BY_COVER:I = 0x1

.field public static final SYSTEM_EVENT_TYPE_TOUCH_RESPONSE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final EVENT_TYPE_POWER_KEY:I

.field public mContext:Landroid/content/Context;

.field public mIsLedCoverAttached:Z

.field public mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    const/16 p1, 0xa

    .line 90
    iput p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->EVENT_TYPE_POWER_KEY:I

    .line 123
    iput-object p2, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "power"

    .line 125
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 126
    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public final acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .registers 5

    .line 223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 225
    :try_start_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-nez p0, :cond_16

    .line 226
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    .line 229
    sget-object p1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "Shouldn\'t happen"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :cond_16
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public addLedNotification(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, " Current NfcLedCoverController state:"

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsLEDCoverAttached="

    .line 167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  "

    .line 169
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getByteDataString([B)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_5

    const-string p0, "null"

    return-object p0

    .line 179
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 180
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_2b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 181
    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 183
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_c

    .line 188
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_17

    .line 191
    sget-object v0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v1, "Could not get NfcAdapter"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_17
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method public notifyAuthenticationResponse()V
    .registers 1

    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .registers 5

    .line 245
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 247
    :try_start_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 248
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    .line 251
    sget-object p1, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->TAG:Ljava/lang/String;

    const-string v2, "Shouldn\'t happen"

    invoke-static {p1, v2, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_16
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 3

    return-void
.end method

.method public sendPowerKeyToCover()V
    .registers 1

    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public setLcdOffDisabledByCover(Z)V
    .registers 5

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event_type"

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lcd_off_disabled_by_cover"

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->sendSystemEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public updateNfcLedCoverAttachStateLocked(ZI)V
    .registers 3

    return-void
.end method
