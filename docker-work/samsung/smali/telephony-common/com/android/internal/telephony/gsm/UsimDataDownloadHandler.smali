.class public Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;
.super Landroid/os/Handler;
.source "UsimDataDownloadHandler.java"


# instance fields
.field private final blacklist mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneId:I

.field private blacklist mSmsSource:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;I)V
    .registers 4

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 82
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 85
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist acknowledgeSmsWithError(III)V
    .registers 9

    const-string v0, "UsimDataDownloadHandler"

    .line 472
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 v1, -0x1

    if-eq p2, v1, :cond_54

    if-eq p3, v1, :cond_54

    .line 474
    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acknowledgeSms. cause: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p1}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_34
    .catch Lcom/android/ims/ImsException; {:try_start_19 .. :try_end_34} :catch_35

    goto :goto_59

    :catch_35
    move-exception p2

    .line 477
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms failed. Error: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v3, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_59

    .line 481
    :cond_54
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v3, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    :goto_59
    return-void
.end method

.method private blacklist addUsimDataDownloadToMetrics(ZI)V
    .registers 6

    .line 355
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    .line 356
    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSMSPP(ILjava/lang/String;Z)V

    .line 357
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsPP(IZ)V

    return-void
.end method

.method private static blacklist getEnvelopeBodyLength(II)I
    .registers 4

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x7f

    if-le p1, v1, :cond_8

    const/4 p1, 0x2

    goto :goto_9

    :cond_8
    const/4 p1, 0x1

    :goto_9
    add-int/2addr v0, p1

    if-eqz p0, :cond_f

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method private blacklist getImsManager()Lcom/android/ims/ImsManager;
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method private blacklist handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;III)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v4

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 156
    aget-byte v8, v6, v7

    const/16 v9, 0xff

    and-int/2addr v8, v9

    add-int/lit8 v10, v8, 0x1

    .line 158
    array-length v11, v6

    sub-int/2addr v11, v10

    .line 160
    invoke-static {v8, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getEnvelopeBodyLength(II)I

    move-result v12

    add-int/lit8 v13, v12, 0x1

    const/16 v14, 0x7f

    const/4 v9, 0x1

    if-le v12, v14, :cond_2c

    const/16 v16, 0x2

    goto :goto_2e

    :cond_2c
    move/from16 v16, v9

    :goto_2e
    add-int v13, v13, v16

    .line 166
    new-array v15, v13, [B

    const/16 v17, -0x2f

    .line 170
    aput-byte v17, v15, v7

    const/16 v17, -0x7f

    if-le v12, v14, :cond_3f

    .line 172
    aput-byte v17, v15, v9

    const/16 v18, 0x2

    goto :goto_41

    :cond_3f
    move/from16 v18, v9

    :goto_41
    add-int/lit8 v19, v18, 0x1

    int-to-byte v12, v12

    .line 174
    aput-byte v12, v15, v18

    add-int/lit8 v12, v19, 0x1

    .line 177
    sget-object v18, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v15, v19

    add-int/lit8 v7, v12, 0x1

    const/16 v16, 0x2

    .line 178
    aput-byte v16, v15, v12

    add-int/lit8 v12, v7, 0x1

    const/16 v18, -0x7d

    .line 179
    aput-byte v18, v15, v7

    add-int/lit8 v7, v12, 0x1

    .line 180
    aput-byte v17, v15, v12

    if-eqz v8, :cond_79

    add-int/lit8 v12, v7, 0x1

    .line 184
    sget-object v18, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v15, v7

    add-int/lit8 v7, v12, 0x1

    int-to-byte v14, v8

    .line 185
    aput-byte v14, v15, v12

    .line 186
    invoke-static {v6, v9, v15, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v8

    :cond_79
    add-int/lit8 v8, v7, 0x1

    .line 191
    sget-object v12, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SMS_TPDU:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v12}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v15, v7

    const/16 v7, 0x7f

    if-le v11, v7, :cond_8f

    add-int/lit8 v7, v8, 0x1

    .line 193
    aput-byte v17, v15, v8

    move v8, v7

    :cond_8f
    add-int/lit8 v7, v8, 0x1

    int-to-byte v12, v11

    .line 195
    aput-byte v12, v15, v8

    .line 196
    invoke-static {v6, v10, v15, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v11

    if-eq v7, v13, :cond_ab

    const-string v4, "UsimDataDownloadHandler"

    const-string v5, "startDataDownload() calculated incorrect envelope length, aborting."

    .line 201
    invoke-static {v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xff

    .line 203
    invoke-direct {v0, v4, v2, v3}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(III)V

    const/4 v6, 0x0

    .line 205
    invoke-direct {v0, v6, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    return-void

    :cond_ab
    const/4 v6, 0x0

    .line 209
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 211
    iget-object v8, v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x4

    new-array v10, v10, [I

    aput v4, v10, v6

    aput v5, v10, v9

    const/4 v4, 0x2

    aput v2, v10, v4

    const/4 v2, 0x3

    aput v3, v10, v2

    invoke-virtual {v0, v4, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v8, v7, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V

    .line 215
    invoke-direct {v0, v9, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    return-void
.end method

.method private static blacklist is7bitDcs(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0x8c

    if-eqz v0, :cond_d

    and-int/lit16 p0, p0, 0xf4

    const/16 v0, 0xf0

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private blacklist sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;IIII)V
    .registers 16

    .line 247
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 248
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const-string v2, "UsimDataDownloadHandler"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x90

    if-ne v0, v5, :cond_e

    if-eqz v1, :cond_12

    :cond_e
    const/16 v5, 0x91

    if-ne v0, v5, :cond_2c

    .line 252
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM data download succeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_78

    :cond_2c
    const/16 v5, 0x93

    if-ne v0, v5, :cond_3d

    if-nez v1, :cond_3d

    const-string p1, "USIM data download failed: Toolkit busy"

    .line 255
    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd4

    .line 257
    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(III)V

    return-void

    :cond_3d
    const/16 v1, 0x62

    if-eq v0, v1, :cond_5f

    const/16 v1, 0x63

    if-ne v0, v1, :cond_46

    goto :goto_5f

    .line 264
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SW1/SW2 response from UICC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 261
    :cond_5f
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM data download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    move v0, v3

    .line 268
    :goto_78
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v1, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_125

    .line 269
    array-length v6, p1

    if-nez v6, :cond_83

    goto/16 :goto_125

    :cond_83
    const/4 v6, 0x2

    const/4 v7, 0x7

    if-eqz v0, :cond_91

    .line 293
    array-length v8, p1

    add-int/lit8 v8, v8, 0x5

    new-array v8, v8, [B

    .line 294
    aput-byte v3, v8, v3

    .line 295
    aput-byte v7, v8, v4

    goto :goto_a0

    .line 297
    :cond_91
    array-length v8, p1

    add-int/lit8 v8, v8, 0x6

    new-array v8, v8, [B

    .line 298
    aput-byte v3, v8, v3

    const/16 v9, -0x2b

    .line 299
    aput-byte v9, v8, v4

    const/4 v4, 0x3

    .line 301
    aput-byte v7, v8, v6

    move v6, v4

    :goto_a0
    add-int/lit8 v4, v6, 0x1

    int-to-byte p3, p3

    .line 304
    aput-byte p3, v8, v6

    add-int/lit8 p3, v4, 0x1

    int-to-byte v6, p2

    .line 305
    aput-byte v6, v8, v4

    .line 307
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->is7bitDcs(I)Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 308
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v7

    add-int/lit8 v4, p3, 0x1

    int-to-byte p2, p2

    .line 309
    aput-byte p2, v8, p3

    goto :goto_c0

    :cond_ba
    add-int/lit8 v4, p3, 0x1

    .line 311
    array-length p2, p1

    int-to-byte p2, p2

    aput-byte p2, v8, p3

    .line 314
    :goto_c0
    array-length p2, p1

    invoke-static {p1, v3, v8, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result p1

    if-eqz p1, :cond_11b

    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result p1

    if-eqz p1, :cond_11b

    if-eq p4, v1, :cond_11b

    if-eq p5, v1, :cond_11b

    .line 318
    :try_start_d8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "acknowledgeSmsWithPdu. smsAckPdu: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p1

    invoke-virtual {p1, p4, p5, v8}, Lcom/android/ims/ImsManager;->acknowledgeSmsWithPdu(II[B)V
    :try_end_f7
    .catch Lcom/android/ims/ImsException; {:try_start_d8 .. :try_end_f7} :catch_f8

    goto :goto_124

    :catch_f8
    move-exception p1

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "acknowledgeSmsWithPdu failed. Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 324
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-interface {p0, v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_124

    .line 327
    :cond_11b
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 328
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-interface {p0, v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V

    :goto_124
    return-void

    :cond_125
    :goto_125
    if-eqz v0, :cond_168

    .line 272
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result p1

    if-eqz p1, :cond_162

    iget-object p1, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result p1

    if-eqz p1, :cond_162

    if-eq p4, v1, :cond_162

    if-eq p5, v1, :cond_162

    .line 274
    :try_start_13b
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p1

    invoke-virtual {p1, p4, p5, v4}, Lcom/android/ims/ImsManager;->acknowledgeSms(III)V
    :try_end_142
    .catch Lcom/android/ims/ImsException; {:try_start_13b .. :try_end_142} :catch_143

    goto :goto_16d

    :catch_143
    move-exception p1

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "acknowledgeSms failed. Error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_16d

    .line 280
    :cond_162
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v4, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_16d

    :cond_168
    const/16 p1, 0xd5

    .line 283
    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(III)V

    :goto_16d
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_80

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "UsimDataDownloadHandler"

    if-eq v0, v3, :cond_46

    if-eq v0, v2, :cond_25

    .line 412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring unexpected message, what="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 400
    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 401
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x0

    if-nez p1, :cond_39

    const-string p1, "Successfully wrote SMS-PP message to UICC"

    .line 402
    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, v1, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_8d

    :cond_39
    const-string v1, "Failed to write SMS-PP message to UICC"

    .line 405
    invoke-static {v5, v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p1, 0xff

    invoke-interface {p0, v4, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_8d

    .line 380
    :cond_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 382
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, [I

    .line 383
    aget v10, v0, v3

    .line 384
    aget v11, v0, v2

    .line 386
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_72

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UICC Send Envelope failure, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd5

    .line 389
    invoke-direct {p0, p1, v10, v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->acknowledgeSmsWithError(III)V

    return-void

    .line 395
    :cond_72
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/uicc/IccIoResult;

    aget v8, v0, v4

    aget v9, v0, v1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->sendSmsAckForEnvelopeResponse(Lcom/android/internal/telephony/uicc/IccIoResult;IIII)V

    goto :goto_8d

    .line 372
    :cond_80
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 373
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 374
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mSmsSource:I

    .line 375
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;III)V

    :goto_8d
    return-void
.end method

.method blacklist handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;I)I
    .registers 8

    const-string v0, "UsimDataDownloadHandler"

    const/4 v1, -0x1

    if-eqz p1, :cond_17

    .line 106
    sget-object v2, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "Received SMS-PP data download, sending to UICC."

    .line 108
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p2, p3, v1, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;III)I

    move-result p0

    return p0

    :cond_17
    const-string p1, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    .line 113
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    .line 119
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 117
    invoke-interface {v0, v2, p1, p2, v3}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 120
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    return v1
.end method

.method public blacklist handleUsimDataDownloadWithPdu(IILcom/android/internal/telephony/uicc/UsimServiceTable;[BI)V
    .registers 8

    .line 449
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mPhoneId:I

    invoke-static {v0, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->semCreateFromPdu(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object p4

    if-nez p4, :cond_9

    return-void

    :cond_9
    const-string v0, "UsimDataDownloadHandler"

    if-eqz p3, :cond_1e

    .line 454
    sget-object v1, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/uicc/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z

    move-result p3

    if-eqz p3, :cond_1e

    const-string p3, "Received SMS-PP data download, sending to UICC."

    .line 456
    invoke-static {v0, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0, p4, p5, p1, p2}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;III)I

    goto :goto_45

    :cond_1e
    const-string p1, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    .line 459
    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p1

    .line 460
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 463
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 464
    invoke-virtual {p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    .line 465
    invoke-virtual {p0, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 463
    invoke-interface {p2, p4, p1, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 466
    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->addUsimDataDownloadToMetrics(ZI)V

    :goto_45
    return-void
.end method

.method public blacklist startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;III)I
    .registers 5

    .line 138
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->mSmsSource:I

    const/4 p2, 0x1

    .line 139
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, -0x1

    return p0

    :cond_f
    const-string p0, "UsimDataDownloadHandler"

    const-string p1, "startDataDownload failed to send message to start data download."

    .line 144
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0
.end method
