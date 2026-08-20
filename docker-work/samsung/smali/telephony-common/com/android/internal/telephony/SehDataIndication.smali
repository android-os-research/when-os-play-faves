.class public Lcom/android/internal/telephony/SehDataIndication;
.super Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;
.source "SehDataIndication.java"


# static fields
.field public static final blacklist SETTINGS_GLOBAL:Ljava/lang/String; = "global"

.field public static final blacklist SETTINGS_SECURE:Ljava/lang/String; = "secure"

.field public static final blacklist SETTINGS_SYSTEM:Ljava/lang/String; = "system"

.field public static final blacklist SIM_APN_URI:Landroid/net/Uri;

.field public static final blacklist SPRINT_GLOBAL_APN:Ljava/lang/String; = "cinet.spcs"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const-string v0, "content://telephony/carriers/sim_apn_list"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SehDataIndication;->SIM_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method


# virtual methods
.method public final blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "1c18f89373d68cf0030dbdb95f4a9287fe232a2e"

    return-object p0
.end method

.method public final blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehApnProfile;
    .registers 14

    .line 93
    new-instance v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/data/SehApnProfile;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v1, v1, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v2, 0x0

    .line 98
    aget v1, v1, v2

    goto :goto_18

    :cond_17
    const/4 v1, -0x1

    .line 101
    :goto_18
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needApnProfileIndication invalid subid"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v3

    .line 107
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v2, v2, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v2, Lcom/android/internal/telephony/SehDataIndication;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "apn"

    const-string v7, "protocol"

    const-string v8, "user"

    const-string v9, "password"

    const-string v10, "authtype"

    const-string v11, "roaming_protocol"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_5d
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_5d} :catch_109
    .catchall {:try_start_27 .. :try_end_5d} :catchall_107

    if-eqz p1, :cond_101

    .line 111
    :try_start_5f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_101

    :cond_65
    const-string v1, "apn"

    .line 113
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cinet.spcs"

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_80

    :cond_78
    const-string v2, "cdma"

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 157
    :goto_80
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_101

    .line 121
    :cond_88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_8c
    .catch Landroid/database/SQLException; {:try_start_5f .. :try_end_8c} :catch_ff
    .catchall {:try_start_5f .. :try_end_8c} :catchall_12b

    const-string v4, ""

    if-eqz v2, :cond_93

    .line 122
    :try_start_90
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->apn:Ljava/lang/String;

    goto :goto_95

    .line 124
    :cond_93
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->apn:Ljava/lang/String;

    :goto_95
    const-string v1, "protocol"

    .line 126
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 128
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->proto:Ljava/lang/String;

    goto :goto_aa

    .line 130
    :cond_a8
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->proto:Ljava/lang/String;

    :goto_aa
    const-string v1, "roaming_protocol"

    .line 132
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 134
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->roamingProto:Ljava/lang/String;

    goto :goto_bf

    .line 136
    :cond_bd
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->roamingProto:Ljava/lang/String;

    :goto_bf
    const-string v1, "user"

    .line 138
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 140
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->user:Ljava/lang/String;

    goto :goto_d4

    .line 142
    :cond_d2
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->user:Ljava/lang/String;

    :goto_d4
    const-string v1, "password"

    .line 144
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 146
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->pw:Ljava/lang/String;

    goto :goto_e9

    .line 148
    :cond_e7
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->pw:Ljava/lang/String;

    :goto_e9
    const-string v1, "authtype"

    .line 150
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 152
    iput-object v4, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->auth:Ljava/lang/String;

    goto :goto_101

    .line 154
    :cond_fc
    iput-object v1, v0, Lvendor/samsung/hardware/radio/data/SehApnProfile;->auth:Ljava/lang/String;
    :try_end_fe
    .catch Landroid/database/SQLException; {:try_start_90 .. :try_end_fe} :catch_ff
    .catchall {:try_start_90 .. :try_end_fe} :catchall_12b

    goto :goto_101

    :catch_ff
    move-exception v0

    goto :goto_10b

    :cond_101
    :goto_101
    if-eqz p1, :cond_106

    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_106
    return-object v0

    :catchall_107
    move-exception p0

    goto :goto_12d

    :catch_109
    move-exception v0

    move-object p1, v3

    .line 161
    :goto_10b
    :try_start_10b
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needApnProfileIndication sql execption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_10b .. :try_end_125} :catchall_12b

    if-eqz p1, :cond_12a

    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_12a
    return-object v3

    :catchall_12b
    move-exception p0

    move-object v3, p1

    :goto_12d
    if-eqz v3, :cond_132

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_132
    throw p0
.end method

.method public blacklist needPacketUsage(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehPacketUsage;
    .registers 4

    .line 80
    new-instance p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;

    invoke-direct {p0}, Lvendor/samsung/hardware/radio/data/SehPacketUsage;-><init>()V

    const-string v0, "rmnet"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->rxBytes:J

    .line 83
    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->txBytes:J

    goto :goto_20

    .line 85
    :cond_14
    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->rxBytes:J

    .line 86
    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvendor/samsung/hardware/radio/data/SehPacketUsage;->txBytes:J

    :goto_20
    return-object p0
.end method

.method public blacklist needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "system"

    .line 174
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 175
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_48

    :cond_16
    const-string v0, "global"

    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 177
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_48

    :cond_2b
    const-string v0, "secure"

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 179
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    goto :goto_48

    .line 208
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const-string p1, "needSettingValueIndication wrong table value."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_48
    return p0
.end method

.method public blacklist rrcStateChanged(ILvendor/samsung/hardware/radio/data/SehRrcStateInfo;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 62
    iget-object p1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b50

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 64
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mRRCStateChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_1b

    .line 65
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method

.method public blacklist timerStatusChangedInd(I[I)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processIndication(I)V

    .line 72
    iget-object p1, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    const/16 v0, 0x2b3b

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/SemRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 74
    iget-object p0, p0, Lcom/android/internal/telephony/SehDataIndication;->mRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p0, p0, Lcom/android/internal/telephony/SemBaseCommands;->mT3346TimerRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p0, :cond_1b

    .line 75
    new-instance p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1b
    return-void
.end method
