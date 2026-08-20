.class public Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MDMBlockedSmsMmsReceiver.java"


# static fields
.field private static blacklist mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

.field private static blacklist mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

.field private static blacklist mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;
    .registers 2

    .line 44
    sget-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    invoke-direct {v0}, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    .line 47
    :cond_b
    instance-of v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v0, :cond_14

    .line 48
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    sput-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_1c

    .line 49
    :cond_14
    instance-of v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v0, :cond_1c

    .line 50
    check-cast p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    sput-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 52
    :cond_1c
    :goto_1c
    sget-object p0, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mMDMBlockedSmsMmsReceiver:Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;

    return-object p0
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received blocked SmsMms intent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MDMBlockedSmsMmsReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_f7

    const/4 v4, 0x0

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v12, "smsBlockHandler"

    const/4 v13, -0x1

    const/4 v14, 0x1

    if-eqz v5, :cond_55

    const-string v3, "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

    .line 64
    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v14, :cond_42

    .line 66
    sget-object v4, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    goto :goto_47

    :cond_42
    const/4 v3, 0x2

    if-ne v0, v3, :cond_47

    .line 68
    sget-object v4, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    :cond_47
    :goto_47
    if-eqz v4, :cond_4c

    .line 71
    invoke-virtual {v4, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleBlockedSms([BI)V

    .line 74
    :cond_4c
    invoke-virtual {v1, v14}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v12, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f7

    .line 76
    :cond_55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 81
    :try_start_61
    sget-object v5, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    if-eqz v5, :cond_67

    :goto_65
    move-object v15, v5

    goto :goto_6d

    .line 83
    :cond_67
    sget-object v5, Lcom/android/internal/telephony/MDMBlockedSmsMmsReceiver;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    if-eqz v5, :cond_6c

    goto :goto_65

    :cond_6c
    move-object v15, v4

    :goto_6d
    const-string v4, "com.samsung.android.knox.intent.extra.MESSAGE_ID_INTERNAL"

    .line 87
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.knox.intent.extra.SUB_ID_INTERNAL"

    .line 88
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

    .line 89
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v15, :cond_f0

    .line 91
    sget-object v6, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    const/4 v7, 0x0

    const/16 v16, 0x0

    if-eqz v5, :cond_8e

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v9, v5

    goto :goto_90

    :cond_8e
    move/from16 v9, v16

    :goto_90
    if-eqz v4, :cond_97

    .line 93
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_99

    :cond_97
    const-wide/16 v4, 0x0

    :goto_99
    move-wide/from16 v17, v4

    move-object v4, v6

    move-object v5, v2

    move-object v6, v7

    move-object v7, v15

    move-object v8, v10

    move-object/from16 v19, v10

    move-wide/from16 v10, v17

    .line 91
    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IJ)I

    move-result v4

    if-ne v4, v13, :cond_f0

    const-string v4, "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

    .line 96
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v5, v16

    .line 98
    :goto_b7
    array-length v6, v2

    if-ge v5, v6, :cond_c3

    .line 99
    aget-byte v6, v2, v5

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    .line 101
    :cond_c3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f0

    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v19

    .line 102
    invoke-virtual {v15, v4, v0, v2, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_d6} :catch_d7

    goto :goto_f0

    :catch_d7
    move-exception v0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDMBlockedSmsMmsReceiver onReceive exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_f0
    :goto_f0
    invoke-virtual {v1, v14}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v12, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f7
    :goto_f7
    return-void
.end method
