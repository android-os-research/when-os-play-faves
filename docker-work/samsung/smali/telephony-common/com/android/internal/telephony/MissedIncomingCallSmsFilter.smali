.class public Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;
.super Ljava/lang/Object;
.source "MissedIncomingCallSmsFilter.java"


# static fields
.field private static final blacklist PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "MissedIncomingCallSmsFilter"


# instance fields
.field private blacklist mCarrierConfig:Landroid/os/PersistableBundle;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_1d

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    :cond_1d
    return-void
.end method

.method private blacklist createMissedIncomingCallEvent(JLjava/lang/String;I)V
    .registers 9

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telecom"

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_3e

    .line 318
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_23

    const/4 v2, 0x0

    const-string v3, "tel"

    .line 321
    invoke-static {v3, p3, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v2, "android.telecom.extra.INCOMING_CALL_ADDRESS"

    .line 323
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_23
    const-string p3, "com.samsung.telecom.extra.CALL_PRESENTATION"

    .line 326
    invoke-virtual {v1, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "android.telecom.extra.CALL_CREATED_EPOCH_TIME_MILLIS"

    .line 331
    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_3e
    return-void
.end method

.method private blacklist getEpochTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .line 163
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p0

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 166
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :cond_12
    const-string v0, "yyyyMMddHHmm"

    .line 174
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 179
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    return-wide p0
.end method

.method private blacklist getPresentation(Ljava/lang/String;)I
    .registers 2

    const-string p0, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    .line 341
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    goto :goto_1f

    :cond_a
    const-string p0, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    .line 343
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    goto :goto_1f

    :cond_14
    const-string p0, "\u516c\u8846\u96fb\u8a71"

    .line 345
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x4

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x1

    :goto_1f
    return p0
.end method

.method private static blacklist makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .registers 3

    .line 301
    new-instance p0, Landroid/telecom/PhoneAccountHandle;

    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object p0
.end method

.method private blacklist processSms(Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 194
    iget-object v1, v7, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v2, "missed_incoming_call_sms_pattern_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_115

    .line 196
    array-length v3, v1

    if-nez v3, :cond_14

    goto/16 :goto_115

    .line 202
    :cond_14
    iget-object v3, v7, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v4, "DCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-eqz v8, :cond_4d

    const-string v4, "\n"

    .line 207
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6d77\u5916"

    .line 208
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 209
    array-length v5, v4

    add-int/lit8 v6, v0, 0x2

    if-ge v5, v6, :cond_41

    .line 210
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "Missed incoming call SMS length is too short!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 214
    :cond_41
    aget-object v5, v4, v0

    add-int/2addr v0, v9

    .line 215
    aget-object v0, v4, v0

    .line 217
    invoke-direct {v7, v0}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->getPresentation(Ljava/lang/String;)I

    move-result v4

    move-object v10, v0

    move v11, v4

    goto :goto_50

    :cond_4d
    move-object v5, v0

    move-object v10, v3

    move v11, v9

    .line 221
    :goto_50
    array-length v4, v1

    move v6, v2

    :goto_52
    if-ge v6, v4, :cond_10d

    aget-object v12, v1, v6

    const/16 v0, 0x21

    .line 224
    :try_start_58
    invoke-static {v12, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_5c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_58 .. :try_end_5c} :catch_e9

    .line 231
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_109

    const-wide/16 v12, 0x0

    :try_start_68
    const-string v1, "month"

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_6e} :catch_8b

    :try_start_6e
    const-string v2, "day"

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_74
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_74} :catch_89

    :try_start_74
    const-string v4, "hour"

    .line 237
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_7a} :catch_87

    :try_start_7a
    const-string v5, "minute"

    .line 238
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_80
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_80} :catch_8e

    move-object v6, v4

    move-object/from16 v16, v5

    move-wide v14, v12

    move-object v4, v1

    move-object v5, v2

    goto :goto_98

    :catch_87
    move-object v4, v3

    goto :goto_8e

    :catch_89
    move-object v2, v3

    goto :goto_8d

    :catch_8b
    move-object v1, v3

    move-object v2, v1

    :goto_8d
    move-object v4, v2

    .line 248
    :catch_8e
    :goto_8e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v16, v3

    move-wide v14, v5

    move-object v5, v2

    move-object v6, v4

    move-object v4, v1

    :goto_98
    :try_start_98
    const-string v1, "year"

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_9e} :catch_a0

    move-object v2, v1

    goto :goto_a1

    :catch_a0
    move-object v2, v3

    :goto_a1
    cmp-long v1, v14, v12

    if-nez v1, :cond_c7

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v16

    .line 260
    :try_start_ac
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->getEpochTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v1, v14, v12

    if-nez v1, :cond_c7

    .line 262
    sget-object v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get the time. Use the current time."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_bf} :catch_c0

    goto :goto_c7

    .line 269
    :catch_c0
    sget-object v1, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get the time for missed incoming call"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    :goto_c7
    const-string v1, ""

    if-eqz v8, :cond_d6

    .line 275
    :try_start_cb
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    if-ne v11, v9, :cond_d4

    goto :goto_dc

    :cond_d4
    move-object v10, v1

    goto :goto_dc

    :cond_d6
    const-string v2, "callerId"

    .line 280
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_dc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cb .. :try_end_dc} :catch_de

    :goto_dc
    move-object v1, v10

    goto :goto_e5

    .line 286
    :catch_de
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v2, "Caller id is not provided or can\'t be parsed."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_e5
    invoke-direct {v7, v14, v15, v1, v11}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->createMissedIncomingCallEvent(JLjava/lang/String;I)V

    return v9

    :catch_e9
    move-exception v0

    move-object v13, v0

    .line 226
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Configuration error. Unexpected missed incoming call sms pattern: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", e="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_52

    .line 294
    :cond_10d
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "SMS did not match any missed incoming call SMS pattern."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 197
    :cond_115
    :goto_115
    sget-object v0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->TAG:Ljava/lang/String;

    const-string v1, "Missed incoming call SMS pattern is not configured!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private blacklist shouldReplaceLineFeed(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "\uff83\uff9a\uff8b\uff9e\u96fb\u8a71"

    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "\u6d77\u5916"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "\u516c\u8846\u96fb\u8a71"

    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method


# virtual methods
.method public blacklist filter([[BLjava/lang/String;)Z
    .registers 6

    .line 112
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    .line 117
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->mCarrierConfig:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_59

    const-string v1, "missed_incoming_call_sms_originator_string_array"

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 121
    aget-object p1, p1, v2

    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 123
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_59

    .line 124
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 127
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->shouldReplaceLineFeed(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_44

    const-string p2, "\\s\n"

    const-string v0, "\n"

    .line 129
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_44
    const-string p2, "\n\n"

    .line 132
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 133
    array-length p2, p1

    move v0, v2

    :goto_4c
    if-ge v2, p2, :cond_58

    aget-object v1, p1, v2

    .line 134
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->processSms(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_58
    move v2, v0

    :cond_59
    return v2
.end method
