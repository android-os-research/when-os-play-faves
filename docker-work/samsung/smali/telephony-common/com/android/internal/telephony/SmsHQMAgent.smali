.class public Lcom/android/internal/telephony/SmsHQMAgent;
.super Ljava/lang/Object;
.source "SmsHQMAgent.java"


# static fields
.field private static blacklist mInstance:Lcom/android/internal/telephony/SmsHQMAgent;


# instance fields
.field private blacklist mBigdataSmsReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/SmsHQMAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent$1;-><init>(Lcom/android/internal/telephony/SmsHQMAgent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mBigdataSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SMS_BIG_DATA_INFO"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mBigdataSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mContext:Landroid/content/Context;

    :try_start_1e
    const-string v0, "HqmManagerService"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SemHqmManager;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_28} :catch_29

    goto :goto_40

    :catch_29
    move-exception p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmsHQMAgent"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/SmsHQMAgent;
    .registers 2

    .line 99
    sget-object v0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    if-nez v0, :cond_b

    .line 100
    new-instance v0, Lcom/android/internal/telephony/SmsHQMAgent;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsHQMAgent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    .line 103
    :cond_b
    sget-object p0, Lcom/android/internal/telephony/SmsHQMAgent;->mInstance:Lcom/android/internal/telephony/SmsHQMAgent;

    return-object p0
.end method

.method private blacklist getPLMN(I)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    if-gez p1, :cond_1a

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPLMN : invalid slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsHQMAgent"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_1a
    const-string v0, "gsm.operator.numeric"

    const-string v1, "00101#"

    .line 189
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    array-length v2, v0

    if-le v2, p1, :cond_56

    .line 192
    aget-object p1, v0, p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_3d

    .line 194
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_56

    .line 196
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v1, :cond_55

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    :cond_55
    move-object v1, p1

    :cond_56
    :goto_56
    return-object v1
.end method

.method private blacklist sendToImsLogAgent(ILandroid/content/ContentValues;)V
    .registers 7

    const-string v0, "SmsHQMAgent"

    :try_start_2
    const-string v1, "content://com.sec.imsservice.log"

    .line 247
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 248
    iget-object p0, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[SMS BigData] sendToImsLogAgent : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_43

    goto :goto_57

    .line 251
    :catch_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[SMS BigData] fail to send bigdata : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_57
    return-void
.end method


# virtual methods
.method public blacklist sendDRCSToImsLogAgent(Ljava/lang/String;I)V
    .registers 6

    .line 234
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "feature"

    const-string v2, "DRCS"

    .line 236
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "send_mode"

    .line 237
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "overwrite_mode"

    .line 238
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method

.method public blacklist sendSDACInfoToHQM(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 119
    iget-object v3, v0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v4, "SmsHQMAgent"

    if-nez v3, :cond_35

    .line 121
    :try_start_c
    iget-object v3, v0, Lcom/android/internal/telephony/SmsHQMAgent;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1a

    const-string v5, "HqmManagerService"

    .line 122
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/SemHqmManager;

    iput-object v3, v0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 124
    :cond_1a
    iget-object v3, v0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_1c} :catch_1f

    if-nez v3, :cond_35

    return-void

    :catch_1f
    move-exception v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const-string v3, "gsm.operator.isroaming"

    const/4 v5, 0x0

    .line 133
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 134
    iget-object v6, v0, Lcom/android/internal/telephony/SmsHQMAgent;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    if-eqz v6, :cond_48

    .line 137
    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getDefaultSmsPhoneId()I

    move-result v5

    .line 140
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\"PLMN\":\""

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/SmsHQMAgent;->getPLMN(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"RgSt\":\""

    .line 143
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-ne v3, v5, :cond_78

    const-string v3, "6"

    .line 145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_78
    const-string v3, "2"

    .line 147
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7d
    if-eqz v1, :cond_87

    const-string v3, "\",\"NSDA\":\""

    .line 151
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    if-eqz v2, :cond_91

    const-string v1, "\",\"OSDA\":\""

    .line 156
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    if-eqz p3, :cond_d5

    const-string v1, "\",\"DMAC\":\"True"

    .line 161
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"PIME\":\""

    .line 162
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/SemDMACdata;->getPreInstalledMsgAppError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"TSSA\":\""

    .line 164
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/SemDMACdata;->getTssActivated()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"CAID\":\""

    .line 166
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/SemDMACdata;->getCarrierActivatedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"ISUL\":\""

    .line 168
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/SemDMACdata;->getIsUnLockedPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"MCNC\":\""

    .line 170
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/SemDMACdata;->getMccmnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_da

    :cond_d5
    const-string v1, "\",\"DMAC\":\"False"

    .line 173
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_da
    const-string v1, "\""

    .line 176
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMS BigData] sendSDACInfoToHQM : data- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v7, v0, Lcom/android/internal/telephony/SmsHQMAgent;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v8, 0x0

    const-string v9, "Telephony"

    const-string v10, "SDAC"

    const-string v11, "sm"

    const-string v12, "0.0"

    const-string v13, "sec"

    const-string v14, ""

    const-string v16, ""

    invoke-virtual/range {v7 .. v16}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public blacklist sendSMOTInfoToHQM(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 212
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "feature"

    const-string v2, "SMOT"

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "gsm.operator.isroaming"

    const-string v2, "false"

    .line 215
    invoke-static {p3, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x6

    goto :goto_27

    :cond_26
    const/4 v1, 0x2

    :goto_27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RgSt"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/SmsHQMAgent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    const-string v2, "CSDA"

    .line 218
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    const-string v1, "MOMT"

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_49

    const-string p1, "ITER"

    .line 222
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_49
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/SmsHQMAgent;->sendToImsLogAgent(ILandroid/content/ContentValues;)V

    return-void
.end method
