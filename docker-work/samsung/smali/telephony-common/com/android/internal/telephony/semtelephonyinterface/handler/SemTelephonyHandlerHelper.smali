.class public Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;
.super Ljava/lang/Object;
.source "SemTelephonyHandlerHelper.java"


# static fields
.field public static final blacklist CMD_CHANGE_ICC_SIM_PERSO_PASSWORD:I = 0x53

.field public static final blacklist CMD_CHECK_CALL_CONTROL:I = 0x59

.field public static final blacklist CMD_DELETE_GUTI:I = 0x42

.field public static final blacklist CMD_GET_ACTIVATION_DATE:I = 0x4d

.field public static final blacklist CMD_GET_CELL_LOCATION:I = 0x4f

.field public static final blacklist CMD_GET_DISABLE_2G:I = 0x47

.field public static final blacklist CMD_GET_MOBILE_QUALITY:I = 0x5b

.field public static final blacklist CMD_GET_MODEM_ACTIVITY_INFO:I = 0x5c

.field public static final blacklist CMD_GET_NR_MODE:I = 0x55

.field public static final blacklist CMD_GET_VONR_MODE:I = 0x60

.field public static final blacklist CMD_ICCPCSC_CONNECT:I = 0x38

.field public static final blacklist CMD_ICCPCSC_DISCONNECT:I = 0x3a

.field public static final blacklist CMD_ICCPCSC_POWERUP:I = 0x36

.field public static final blacklist CMD_ICCPCSC_TRANSMIT:I = 0x3c

.field public static final blacklist CMD_INVOKE_OEM_RIL_REQUEST_RAW:I = 0x1b

.field public static final blacklist CMD_SET_DISABLE_2G:I = 0x49

.field public static final blacklist CMD_SET_ICC_SIM_PERSO_ENABLED:I = 0x51

.field public static final blacklist CMD_SET_NR_MODE:I = 0x56

.field public static final blacklist CMD_SET_VONR_MODE:I = 0x5e

.field public static final blacklist CMD_SIM_GET_ATR:I = 0x4b

.field public static final blacklist EVENT_GET_NR_MODE_DONE:I = 0x57

.field public static final blacklist EVENT_SET_NR_MODE_DONE:I = 0x58


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field private blacklist mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mSemMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$UDb-MIerpMWAE3OqIE51-aXVIGg(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->lambda$getCallback$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1067
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1068
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getSemCommandsInterfaces()[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    return-void
.end method

.method private blacklist changeIccSimPersoPassword(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_CHANGE_ICC_SIM_PERSO_PASSWORD"

    .line 759
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 762
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 764
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_30

    .line 768
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_30
    return-void
.end method

.method private blacklist checkCallControl(Landroid/os/Message;)V
    .registers 5

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_CHECK_CALL_CONTROL"

    .line 952
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 955
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 957
    iget-object v2, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 959
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/Phone;->checkCallControl(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p0

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    if-nez p0, :cond_37

    const-string p0, "checkCallControl: fail to check call control"

    .line 963
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 964
    invoke-static {v1, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 965
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_37
    return-void
.end method

.method private blacklist connectIccPcsc(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_CONNECT"

    .line 564
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 568
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 570
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_26
    return-void
.end method

.method private blacklist deepCopyModemActivitySpecificInfo([Landroid/telephony/ActivityStatsTechSpecificInfo;)[Landroid/telephony/ActivityStatsTechSpecificInfo;
    .registers 10

    .line 1188
    array-length p0, p1

    .line 1189
    new-array v0, p0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p0, :cond_29

    .line 1191
    new-instance v2, Landroid/telephony/ActivityStatsTechSpecificInfo;

    aget-object v3, p1, v1

    .line 1192
    invoke-virtual {v3}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getRat()I

    move-result v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getFrequencyRange()I

    move-result v4

    aget-object v5, p1, v1

    .line 1193
    invoke-virtual {v5}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getTransmitTimeMillis()[I

    move-result-object v5

    aget-object v6, p1, v1

    .line 1194
    invoke-virtual {v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;->getReceiveTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_29
    return-object v0
.end method

.method private blacklist deleteGuti(Landroid/os/Message;)V
    .registers 7

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_DELETE_GUTI"

    .line 431
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 435
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 436
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 439
    :try_start_17
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x68

    .line 440
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 441
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_24

    goto :goto_29

    :catch_24
    const-string v3, "IOException in open channel"

    .line 443
    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const-string v3, "DELETE_GUTI-TEST"

    .line 445
    invoke-static {v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x43

    .line 447
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 446
    invoke-virtual {v3, v1, p0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 450
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_58

    :catch_43
    move-exception p0

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMD_DELETE_GUTI : close fail - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void
.end method

.method private blacklist disconnectIccPcsc(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_DISCONNECT"

    .line 527
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 530
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 532
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_26
    return-void
.end method

.method private blacklist getActivationDate(Landroid/os/Message;)V
    .registers 7

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_ACTIVATION_DATE"

    .line 626
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 630
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 631
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    .line 634
    :try_start_1f
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xd

    .line 635
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    .line 636
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 637
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception v3

    const-string v4, "writeByte failed"

    .line 639
    invoke-static {v0, v4, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    :goto_36
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 645
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p0

    const-string p1, "close failed"

    .line 647
    invoke-static {v0, p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    return-void
.end method

.method private blacklist getAtr(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SIM_GET_ATR"

    .line 399
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getUiccProfileFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v0

    if-nez v0, :cond_25

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getAtr: No UICC"

    .line 404
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 405
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 406
    monitor-enter p1

    .line 407
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 408
    monitor-exit p1

    goto :goto_30

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p0

    .line 410
    :cond_25
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x4c

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 411
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->getAtr(Landroid/os/Message;)V

    :goto_30
    return-void
.end method

.method private blacklist getCellLocation(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_CELL_LOCATION"

    .line 715
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 718
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Landroid/os/WorkSource;

    .line 720
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 722
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/Phone;->getCellIdentity(Landroid/os/WorkSource;Landroid/os/Message;)V

    goto :goto_24

    .line 724
    :cond_21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_24
    return-void
.end method

.method private blacklist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_f

    .line 317
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private blacklist getDefaultSubscription()I
    .registers 1

    .line 312
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private blacklist getDisable2G(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_DISABLE_2G"

    .line 370
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getDisable2g(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getMobileQuality(Landroid/os/Message;)V
    .registers 8

    const-string v0, "getMobileQuality - close failed. "

    const-string v1, "SemTelephonyHandlerHelper"

    .line 1036
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1037
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x2

    .line 1040
    :try_start_f
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, -0x7b

    .line 1041
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x0

    .line 1042
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x4

    .line 1043
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1045
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1046
    iget-object v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1047
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1048
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_3b

    .line 1051
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1054
    :cond_3b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_42} :catch_52
    .catchall {:try_start_f .. :try_end_42} :catchall_50

    .line 1059
    :try_start_42
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1060
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_81

    :catch_49
    move-exception p0

    .line 1062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_74

    :catchall_50
    move-exception p0

    goto :goto_82

    :catch_52
    move-exception p0

    .line 1056
    :try_start_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileQuality - writeByte failed. "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_53 .. :try_end_67} :catchall_50

    .line 1059
    :try_start_67
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1060
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6d} :catch_6e

    goto :goto_81

    :catch_6e
    move-exception p0

    .line 1062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    return-void

    .line 1059
    :goto_82
    :try_start_82
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 1060
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_88} :catch_89

    goto :goto_9c

    :catch_89
    move-exception p1

    .line 1062
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :goto_9c
    throw p0
.end method

.method private blacklist getModemActivityInfo(Landroid/os/Message;)V
    .registers 10

    .line 1071
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1073
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 1075
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/Phone;->getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_3b

    .line 1077
    :cond_18
    iget-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p0, Landroid/os/ResultReceiver;

    .line 1078
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1079
    new-instance v7, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1080
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v5, v0, [I

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    const-string v0, "controller_activity"

    .line 1079
    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 1081
    invoke-virtual {p0, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_3b
    return-void
.end method

.method private blacklist getNrMode(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_NR_MODE"

    .line 789
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 792
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v0, 0x57

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 793
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 794
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 796
    iget-object p1, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->getNrDisableMode(Landroid/os/Message;)V

    goto :goto_3c

    :cond_27
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getNrMode: getPhone is null or not support NR"

    .line 798
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/4 v1, -0x1

    aput v1, p0, v0

    .line 800
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 801
    monitor-enter p1

    .line 802
    :try_start_38
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit p1

    :goto_3c
    return-void

    :catchall_3d
    move-exception p0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method private blacklist getPhone(I)Lcom/android/internal/telephony/Phone;
    .registers 2

    .line 304
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 305
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p0, 0x0

    .line 308
    :cond_b
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .registers 4

    .line 615
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_16

    :cond_c
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :goto_16
    return-object p0
.end method

.method private blacklist getUiccProfileFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 2

    .line 620
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_14

    .line 622
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method private blacklist getVoNrMode(Landroid/os/Message;)V
    .registers 5

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_GET_VONR_MODE"

    .line 934
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 937
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 938
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 939
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 941
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/Phone;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_40

    :cond_26
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getVoNrMode: getPhone is null"

    .line 943
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance p0, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, v1, v1, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 945
    monitor-enter p1

    .line 946
    :try_start_3c
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 947
    monitor-exit p1

    :goto_40
    return-void

    :catchall_41
    move-exception p0

    monitor-exit p1
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_41

    throw p0
.end method

.method private blacklist invokeOemRilRequestRaw(Landroid/os/Message;)V
    .registers 5

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_INVOKE_OEM_RIL_REQUEST_RAW"

    .line 1011
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1014
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1015
    iget-object v2, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 1017
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_2f

    :cond_27
    const-string p0, "invokeOemRilRequestRaw: getPhone is null"

    .line 1019
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_2f
    return-void
.end method

.method private blacklist isModemActivityInfoValid(Landroid/telephony/ModemActivityInfo;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1092
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p0, v1

    .line 1093
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    .line 1095
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1096
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v2

    int-to-long v4, p0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3e

    .line 1097
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3e

    .line 1098
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v2

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3e

    if-gt v1, p0, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    return v0
.end method

.method private synthetic blacklist lambda$getCallback$0(Landroid/os/Message;)Z
    .registers 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage - message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephonyHandlerHelper"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_f1

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_ed

    const/16 v2, 0x42

    if-eq v0, v2, :cond_e9

    const/16 v2, 0x43

    if-eq v0, v2, :cond_e5

    packed-switch v0, :pswitch_data_f6

    packed-switch v0, :pswitch_data_10a

    .line 295
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SemMainThreadHandler - Unexpected message code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f4

    .line 283
    :pswitch_48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetVoNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 279
    :pswitch_4d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getVoNrMode(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 275
    :pswitch_52
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetVoNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 271
    :pswitch_57
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setVoNrMode(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 291
    :pswitch_5c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetModemActivityInfo(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 287
    :pswitch_61
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getModemActivityInfo(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 267
    :pswitch_66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getMobileQuality(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 263
    :pswitch_6b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onCheckCallControlDone(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 259
    :pswitch_70
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->checkCallControl(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 255
    :pswitch_75
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 251
    :pswitch_7a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetNrModeDone(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 247
    :pswitch_7f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setNrMode(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 243
    :pswitch_84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getNrMode(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 239
    :pswitch_89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onChangeIccSimPersoPassword(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 235
    :pswitch_8e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->changeIccSimPersoPassword(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 231
    :pswitch_93
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetIccSimPersoEnabled(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 227
    :pswitch_98
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setIccSimPersoEnabled(Landroid/os/Message;)V

    goto/16 :goto_f4

    .line 223
    :pswitch_9d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetCellLocationDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 219
    :pswitch_a1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCellLocation(Landroid/os/Message;)V

    goto :goto_f4

    .line 215
    :pswitch_a5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetActivationDateDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 211
    :pswitch_a9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getActivationDate(Landroid/os/Message;)V

    goto :goto_f4

    .line 191
    :pswitch_ad
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetAtrDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 187
    :pswitch_b1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getAtr(Landroid/os/Message;)V

    goto :goto_f4

    .line 207
    :pswitch_b5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onSetDisable2GDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 203
    :pswitch_b9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setDisable2G(Landroid/os/Message;)V

    goto :goto_f4

    .line 199
    :pswitch_bd
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onGetDisable2GDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 195
    :pswitch_c1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getDisable2G(Landroid/os/Message;)V

    goto :goto_f4

    .line 175
    :pswitch_c5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onTransmitIccPcscDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 171
    :pswitch_c9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->transmitIccPcsc(Landroid/os/Message;)V

    goto :goto_f4

    .line 167
    :pswitch_cd
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onDisconnectIccPcscDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 163
    :pswitch_d1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->disconnectIccPcsc(Landroid/os/Message;)V

    goto :goto_f4

    .line 159
    :pswitch_d5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onConnectIccPcscDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 155
    :pswitch_d9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->connectIccPcsc(Landroid/os/Message;)V

    goto :goto_f4

    .line 151
    :pswitch_dd
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onPowerUpIccPcscDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 147
    :pswitch_e1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->powerUpIccPcsc(Landroid/os/Message;)V

    goto :goto_f4

    .line 183
    :cond_e5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onDeleteGutiDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 179
    :cond_e9
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->deleteGuti(Landroid/os/Message;)V

    goto :goto_f4

    .line 143
    :cond_ed
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->onInvokeOemRilRequestRawDone(Landroid/os/Message;)V

    goto :goto_f4

    .line 139
    :cond_f1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->invokeOemRilRequestRaw(Landroid/os/Message;)V

    :goto_f4
    const/4 p0, 0x1

    return p0

    :pswitch_data_f6
    .packed-switch 0x36
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x47
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_98
        :pswitch_93
        :pswitch_8e
        :pswitch_89
        :pswitch_84
        :pswitch_7f
        :pswitch_7a
        :pswitch_75
        :pswitch_70
        :pswitch_6b
        :pswitch_66
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
        :pswitch_4d
        :pswitch_48
    .end packed-switch
.end method

.method private blacklist mergeModemActivityInfo(Landroid/telephony/ModemActivityInfo;)V
    .registers 13

    .line 1138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1141
    :goto_7
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 1143
    invoke-virtual {p1, v2}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoRat(I)I

    move-result v3

    .line 1144
    invoke-virtual {p1, v2}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoFrequencyRange(I)I

    move-result v4

    move v5, v1

    move v6, v5

    .line 1148
    :goto_17
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    array-length v7, v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_3d

    .line 1149
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v7, v5}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoRat(I)I

    move-result v7

    if-ne v3, v7, :cond_3a

    if-nez v6, :cond_3a

    const/4 v7, 0x6

    if-ne v3, v7, :cond_36

    .line 1152
    iget-object v7, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v7, v5}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoFrequencyRange(I)I

    move-result v7

    if-ne v4, v7, :cond_3a

    .line 1153
    invoke-direct {p0, p1, v3, v4}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;II)V

    goto :goto_39

    .line 1157
    :cond_36
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;I)V

    :goto_39
    move v6, v8

    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_3d
    if-nez v6, :cond_58

    .line 1164
    new-instance v5, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1168
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v6

    .line 1169
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v9

    long-to-int v7, v9

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    new-array v3, v8, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    aput-object v5, v3, v1

    .line 1170
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1173
    :cond_5b
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1176
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1178
    new-instance v0, Landroid/telephony/ModemActivityInfo;

    .line 1180
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v3

    .line 1181
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v5}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 1182
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v1

    iget-object v9, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    return-void
.end method

.method private blacklist onChangeIccSimPersoPassword(Landroid/os/Message;)V
    .registers 3

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onChangeIccSimPersoPassword"

    .line 773
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 776
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 778
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_18

    .line 779
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1c

    .line 781
    :cond_18
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 783
    :goto_1c
    monitor-enter p1

    .line 784
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 785
    monitor-exit p1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p0
.end method

.method private blacklist onCheckCallControlDone(Landroid/os/Message;)V
    .registers 6

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_CHECK_CALL_CONTROL_DONE"

    .line 970
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 973
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 974
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 976
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_91

    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_91

    .line 977
    check-cast p0, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 978
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 979
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_29

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_2d

    :cond_29
    const/16 p0, 0x91

    if-ne v2, p0, :cond_87

    :cond_2d
    if-eqz v1, :cond_7d

    .line 980
    array-length p0, v1

    if-eqz p0, :cond_7d

    const/4 p0, 0x0

    aget-byte p0, v1, p0

    if-nez p0, :cond_38

    goto :goto_7d

    :cond_38
    const/4 v2, 0x1

    if-ne p0, v2, :cond_47

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onCheckCallControlDone, not allowed"

    .line 984
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NotAllowed"

    .line 985
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9a

    :cond_47
    const/4 v2, 0x2

    if-ne p0, v2, :cond_73

    const/4 p0, 0x4

    const/4 v0, 0x3

    .line 987
    aget-byte v0, v1, v0

    invoke-static {v1, p0, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemTelephonyHandlerHelper"

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckCallControlDone, allowed with modification, modifiedNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_64

    move-object v2, p0

    goto :goto_66

    :cond_64
    const-string v2, "xxxx"

    :goto_66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9a

    :cond_73
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, undefined result"

    .line 992
    invoke-static {p0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9a

    :cond_7d
    :goto_7d
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, allowed with no modification"

    .line 981
    invoke-static {p0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9a

    :cond_87
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, error status word "

    .line 996
    invoke-static {p0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_9a

    :cond_91
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v1, "onCheckCallControlDone, failed to check call control"

    .line 1001
    invoke-static {p0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1005
    :goto_9a
    monitor-enter p1

    .line 1006
    :try_start_9b
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1007
    monitor-exit p1

    return-void

    :catchall_a0
    move-exception p0

    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method private blacklist onConnectIccPcscDone(Landroid/os/Message;)V
    .registers 6

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_CONNECT_DONE"

    .line 537
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 539
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 542
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_41

    .line 543
    check-cast v0, [B

    .line 545
    array-length p0, v0

    if-lez p0, :cond_3f

    .line 546
    array-length p0, v0

    new-array p0, p0, [B

    .line 547
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "SemTelephonyHandlerHelper"

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_3f
    const/4 p0, 0x0

    goto :goto_60

    :cond_41
    const-string v0, "SemTelephonyHandlerHelper"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in EVENT_ICCPCSC_CONNECT_DONE with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/16 v0, 0x6f

    aput-byte v0, p0, v1

    .line 556
    :goto_60
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 558
    monitor-enter p1

    .line 559
    :try_start_63
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 560
    monitor-exit p1

    return-void

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method private blacklist onDeleteGutiDone(Landroid/os/Message;)V
    .registers 5

    .line 416
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 417
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    const-string v0, "SemTelephonyHandlerHelper"

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_DELETE_GUTI_DONE response came, ar.exception and ar.result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_2e

    .line 421
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_32

    .line 423
    :cond_2e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 425
    :goto_32
    monitor-enter p1

    .line 426
    :try_start_33
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 427
    monitor-exit p1

    return-void

    :catchall_38
    move-exception p0

    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method private blacklist onDisconnectIccPcscDone(Landroid/os/Message;)V
    .registers 6

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_DISCONNECT_DONE"

    .line 498
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 500
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 504
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_41

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_41

    .line 505
    check-cast v0, [B

    .line 507
    array-length p0, v0

    if-lez p0, :cond_3f

    .line 508
    array-length p0, v0

    new-array p0, p0, [B

    .line 509
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "SemTelephonyHandlerHelper"

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISCONNECT response :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_3f
    const/4 p0, 0x0

    goto :goto_60

    :cond_41
    const-string v0, "SemTelephonyHandlerHelper"

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in EVENT_ICCPCSC_DISCONNECT_DONE with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/16 v0, 0x6f

    aput-byte v0, p0, v1

    .line 519
    :goto_60
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 521
    monitor-enter p1

    .line 522
    :try_start_63
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 523
    monitor-exit p1

    return-void

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_68

    throw p0
.end method

.method private blacklist onGetActivationDateDone(Landroid/os/Message;)V
    .registers 15

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onGetActivationDateDone"

    .line 652
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 654
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 657
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 677
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v0, :cond_73

    .line 657
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_73

    .line 658
    check-cast v0, [B

    new-array p0, v5, [B

    .line 661
    aget-byte v8, v0, v6

    aput-byte v8, p0, v7

    .line 662
    aget-byte v8, v0, v7

    aput-byte v8, p0, v6

    move v8, v7

    move v9, v8

    :goto_30
    if-ge v8, v5, :cond_3c

    shl-int/lit8 v9, v9, 0x8

    .line 665
    aget-byte v10, p0, v8

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 669
    :cond_3c
    aget-byte p0, v0, v5

    .line 670
    aget-byte v8, v0, v3

    .line 671
    aget-byte v10, v0, v2

    .line 672
    aget-byte v11, v0, v1

    .line 673
    aget-byte v0, v0, v4

    const-string v12, "%04d-%02d-%02d %02d:%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 674
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9f

    :cond_73
    const-string v0, "SemTelephonyHandlerHelper"

    .line 676
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in EVENT_GET_ACTIVATION_DATE_DONE with exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "%04d-%02d-%02d %02d:%02d:%02d"

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v8, v0, v7

    aput-object v8, v0, v6

    aput-object v8, v0, v5

    aput-object v8, v0, v3

    aput-object v8, v0, v2

    aput-object v8, v0, v1

    .line 677
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 679
    :goto_9f
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 680
    monitor-enter p1

    .line 681
    :try_start_a2
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 682
    monitor-exit p1

    return-void

    :catchall_a7
    move-exception p0

    monitor-exit p1
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method private blacklist onGetAtrDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SIM_GET_ATR_DONE"

    .line 377
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 379
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 380
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_18

    .line 381
    iget-object p0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_4c

    :cond_18
    const-string v1, ""

    .line 383
    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_28

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getAtr: Empty Response"

    .line 385
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 386
    :cond_28
    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_45

    const-string v0, "SemTelephonyHandlerHelper"

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtr: CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_45
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getAtr: Unknown exception"

    .line 390
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_4c
    monitor-enter p1

    .line 394
    :try_start_4d
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit p1

    return-void

    :catchall_52
    move-exception p0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw p0
.end method

.method private blacklist onGetCellLocationDone(Landroid/os/Message;)V
    .registers 6

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "onGetCellLocationDone"

    .line 686
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 689
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 691
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1a

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 692
    iput-object v1, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6d

    .line 694
    :cond_1a
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_26

    const-string p1, "SemTelephonyHandlerHelper"

    const-string v1, "onGetCellLocationDone is fail. Empty response"

    .line 695
    invoke-static {p1, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :cond_26
    const-string v1, "SemTelephonyHandlerHelper"

    .line 697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetCellLocationDone is fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_3e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 702
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    goto :goto_5d

    .line 704
    :cond_49
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mContext:Landroid/content/Context;

    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    iget-object p1, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result p0

    :goto_5d
    const/4 p1, 0x2

    if-ne p0, p1, :cond_66

    .line 707
    new-instance p0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {p0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    goto :goto_6b

    :cond_66
    new-instance p0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {p0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    :goto_6b
    iput-object p0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 709
    :goto_6d
    monitor-enter v0

    .line 710
    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 711
    monitor-exit v0

    return-void

    :catchall_73
    move-exception p0

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_73

    throw p0
.end method

.method private blacklist onGetDisable2GDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_DISABLE_2G_DONE"

    .line 348
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 351
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 353
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 354
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_47

    :cond_1a
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 357
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2f

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "disable2g is fail. Empty response"

    .line 359
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_2f
    const-string v0, "SemTelephonyHandlerHelper"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable2g is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_47
    monitor-enter p1

    .line 365
    :try_start_48
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 366
    monitor-exit p1

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method private blacklist onGetModemActivityInfo(Landroid/os/Message;)V
    .registers 15

    .line 1200
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1201
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1202
    iget-object v0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, Landroid/os/ResultReceiver;

    .line 1206
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_31

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1207
    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1208
    new-instance v3, Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1212
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    new-array v4, v4, [I

    invoke-direct {v3, v2, v2, v4, v2}, Landroid/telephony/ActivityStatsTechSpecificInfo;-><init>(II[II)V

    aput-object v3, v1, v2

    .line 1214
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    iput-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1218
    :cond_31
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    if-nez v1, :cond_64

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_64

    .line 1220
    check-cast v4, Landroid/telephony/ModemActivityInfo;

    .line 1221
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->isModemActivityInfoValid(Landroid/telephony/ModemActivityInfo;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1222
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mergeModemActivityInfo(Landroid/telephony/ModemActivityInfo;)V

    .line 1227
    :cond_45
    new-instance v3, Landroid/telephony/ModemActivityInfo;

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1228
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v6

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1229
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v8

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1230
    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v10

    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivitySpecificInfo:[Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->deepCopyModemActivitySpecificInfo([Landroid/telephony/ActivityStatsTechSpecificInfo;)[Landroid/telephony/ActivityStatsTechSpecificInfo;

    move-result-object v12

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Landroid/telephony/ModemActivityInfo;-><init>(JJJ[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    goto :goto_81

    .line 1233
    :cond_64
    iget-object p0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string p1, "SemTelephonyHandlerHelper"

    if-nez p0, :cond_71

    const-string p0, " Empty response "

    .line 1234
    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    goto :goto_82

    .line 1237
    :cond_71
    instance-of p0, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz p0, :cond_7c

    const-string p0, " CommandException "

    .line 1238
    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    goto :goto_82

    :cond_7c
    const-string p0, " Unknown exception "

    .line 1242
    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    move p0, v2

    .line 1248
    :goto_82
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz v3, :cond_8f

    const-string p0, "controller_activity"

    .line 1250
    invoke-virtual {p1, p0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_94

    :cond_8f
    const-string v1, "exception"

    .line 1254
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1256
    :goto_94
    invoke-virtual {v0, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private blacklist onGetNrModeDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_NR_MODE_DONE"

    .line 808
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 811
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 813
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 814
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_47

    :cond_1a
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 817
    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 818
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2f

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "getNrMode is fail. Empty response"

    .line 819
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_2f
    const-string v0, "SemTelephonyHandlerHelper"

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNrMode is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_47
    monitor-enter p1

    .line 825
    :try_start_48
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 826
    monitor-exit p1

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method private blacklist onGetVoNrModeDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_GET_VONR_MODE_DONE"

    .line 909
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 912
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 914
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    .line 921
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_30

    .line 914
    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_30

    .line 915
    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2d

    .line 916
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_58

    .line 918
    :cond_2d
    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_58

    .line 921
    :cond_30
    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_51

    const-string v0, "SemTelephonyHandlerHelper"

    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVoNrModeDone: CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_51
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onGetVoNrModeDone: Unknown exception"

    .line 925
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :goto_58
    monitor-enter p1

    .line 929
    :try_start_59
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 930
    monitor-exit p1

    return-void

    :catchall_5e
    move-exception p0

    monitor-exit p1
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_5e

    throw p0
.end method

.method private blacklist onInvokeOemRilRequestRawDone(Landroid/os/Message;)V
    .registers 3

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_INVOKE_OEM_RIL_REQUEST_RAW_DONE"

    .line 1025
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 1028
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 1029
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 1030
    monitor-enter p1

    .line 1031
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1032
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private blacklist onPowerUpIccPcscDone(Landroid/os/Message;)V
    .registers 6

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_POWERUP_DONE"

    .line 575
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 579
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 581
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_59

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_59

    .line 582
    check-cast v0, [B

    const-string p0, "SemTelephonyHandlerHelper"

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATR Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    array-length p0, v0

    if-lez p0, :cond_57

    .line 586
    array-length p0, v0

    new-array p0, p0, [B

    .line 587
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "SemTelephonyHandlerHelper"

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATR info :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    :cond_57
    const/4 p0, 0x0

    goto :goto_78

    :cond_59
    const-string v0, "SemTelephonyHandlerHelper"

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in EVENT_ICCPCSC_POWERUP_DONE with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/16 v0, 0x6f

    aput-byte v0, p0, v1

    .line 597
    :goto_78
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 599
    monitor-enter p1

    .line 600
    :try_start_7b
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 601
    monitor-exit p1

    return-void

    :catchall_80
    move-exception p0

    monitor-exit p1
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_80

    throw p0
.end method

.method private blacklist onSetDisable2GDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_DISABLE_2G_DONE"

    .line 321
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 324
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 326
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_18

    .line 327
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_34

    .line 329
    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    const-string v0, "SemTelephonyHandlerHelper"

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisable2g is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_34
    monitor-enter p1

    .line 333
    :try_start_35
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 334
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method private blacklist onSetIccSimPersoEnabled(Landroid/os/Message;)V
    .registers 3

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "onSetIccSimPersoEnabled"

    .line 743
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 746
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 748
    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p0, :cond_18

    .line 749
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1c

    .line 751
    :cond_18
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 753
    :goto_1c
    monitor-enter p1

    .line 754
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 755
    monitor-exit p1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw p0
.end method

.method private blacklist onSetNrModeDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_NR_MODE_DONE"

    .line 852
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 855
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 857
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_18

    .line 858
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_34

    .line 860
    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    const-string v0, "SemTelephonyHandlerHelper"

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrMode is fail. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_34
    monitor-enter p1

    .line 864
    :try_start_35
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 865
    monitor-exit p1

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method private blacklist onSetVoNrModeDone(Landroid/os/Message;)V
    .registers 5

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_SET_VONR_MODE_DONE"

    .line 869
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 872
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 874
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_18

    .line 875
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_40

    .line 877
    :cond_18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 878
    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_39

    const-string v0, "SemTelephonyHandlerHelper"

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoNrMode: CommandException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_39
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setVoNrMode: Unknown exception"

    .line 881
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_40
    monitor-enter p1

    .line 885
    :try_start_41
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 886
    monitor-exit p1

    return-void

    :catchall_46
    move-exception p0

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_46

    throw p0
.end method

.method private blacklist onTransmitIccPcscDone(Landroid/os/Message;)V
    .registers 6

    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "EVENT_ICCPCSC_TRANSMIT_DONE"

    .line 457
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/AsyncResult;

    .line 460
    iget-object p1, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 463
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_58

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_58

    .line 464
    check-cast v0, [B

    const-string p0, "SemTelephonyHandlerHelper"

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result Length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    array-length p0, v0

    if-lez p0, :cond_56

    .line 468
    array-length p0, v0

    new-array p0, p0, [B

    .line 469
    array-length v2, v0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "SemTelephonyHandlerHelper"

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_56
    const/4 p0, 0x0

    goto :goto_77

    :cond_58
    const-string v0, "SemTelephonyHandlerHelper"

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/16 v0, 0x6f

    aput-byte v0, p0, v1

    .line 480
    :goto_77
    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 482
    monitor-enter p1

    .line 483
    :try_start_7a
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 484
    monitor-exit p1

    return-void

    :catchall_7f
    move-exception p0

    monitor-exit p1
    :try_end_81
    .catchall {:try_start_7a .. :try_end_81} :catchall_7f

    throw p0
.end method

.method private blacklist powerUpIccPcsc(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_POWERUP"

    .line 605
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 608
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 610
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_26
    return-void
.end method

.method private blacklist setDisable2G(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_DISABLE_2G"

    .line 338
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 343
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->setDisable2g(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist setIccSimPersoEnabled(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_ICC_SIM_PERSO_ENABLED"

    .line 729
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 731
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 732
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 734
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhoneFromRequest(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 736
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_34

    .line 738
    :cond_31
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_34
    return-void
.end method

.method private blacklist setNrMode(Landroid/os/Message;)V
    .registers 8

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_NR_MODE"

    .line 830
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 833
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 835
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x0

    .line 836
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 837
    aget v4, v0, v3

    const/4 v5, 0x2

    .line 838
    aget v0, v0, v5

    if-ne v0, v3, :cond_23

    move v1, v3

    .line 839
    :cond_23
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 841
    iget-object p1, v0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p1, v2, v1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->setNrDisableMode(IZLandroid/os/Message;)V

    goto :goto_3f

    :cond_2f
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setNrMode: getPhone is null or not support NR"

    .line 843
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 845
    monitor-enter p1

    .line 846
    :try_start_3b
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 847
    monitor-exit p1

    :goto_3f
    return-void

    :catchall_40
    move-exception p0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    throw p0
.end method

.method private blacklist setVoNrMode(Landroid/os/Message;)V
    .registers 6

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_SET_VoNR_MODE"

    .line 890
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 893
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v0, 0x5f

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 894
    iget-object v0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x1

    .line 895
    aget v2, v0, v1

    .line 896
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    const/4 p1, 0x0

    .line 898
    aget v0, v0, p1

    if-ne v0, v1, :cond_27

    goto :goto_28

    :cond_27
    move v1, p1

    :goto_28
    invoke-virtual {v2, v1, p0, v3}, Lcom/android/internal/telephony/Phone;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_46

    :cond_2c
    const-string p0, "SemTelephonyHandlerHelper"

    const-string v0, "setVoNrMode: getPhone is null"

    .line 900
    invoke-static {p0, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance p0, Landroid/os/AsyncResult;

    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-direct {p0, v3, v3, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object p0, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;

    .line 902
    monitor-enter p1

    .line 903
    :try_start_42
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 904
    monitor-exit p1

    :goto_46
    return-void

    :catchall_47
    move-exception p0

    monitor-exit p1
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private blacklist transmitIccPcsc(Landroid/os/Message;)V
    .registers 4

    const-string v0, "SemTelephonyHandlerHelper"

    const-string v1, "CMD_ICCPCSC_TRANSMIT"

    .line 488
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 491
    iget-object v1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 493
    iget-object p1, p1, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->argument:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_26
    return-void
.end method

.method private blacklist updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;I)V
    .registers 10

    .line 1120
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v1, v0, [I

    .line 1121
    invoke-virtual {p1, p2}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v2

    .line 1122
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v3, p2}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v0, :cond_1d

    .line 1125
    aget v5, v2, v4

    aget v6, v3, v4

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1127
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p2, v1}, Landroid/telephony/ModemActivityInfo;->setTransmitTimeMillis(I[I)V

    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1130
    invoke-virtual {p1, p2}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0, p2}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide p0

    add-long/2addr v1, p0

    .line 1128
    invoke-virtual {v0, p2, v1, v2}, Landroid/telephony/ModemActivityInfo;->setReceiveTimeMillis(IJ)V

    return-void
.end method

.method private blacklist updateLastModemActivityInfo(Landroid/telephony/ModemActivityInfo;II)V
    .registers 11

    .line 1103
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v1, v0, [I

    .line 1104
    invoke-virtual {p1, p2, p3}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v2

    .line 1105
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v3, p2, p3}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v0, :cond_1d

    .line 1108
    aget v5, v2, v4

    aget v6, v3, v4

    add-int/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 1111
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v0, p2, p3, v1}, Landroid/telephony/ModemActivityInfo;->setTransmitTimeMillis(II[I)V

    .line 1112
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1115
    invoke-virtual {p1, p2, p3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 1116
    invoke-virtual {p0, p2, p3}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide p0

    add-long/2addr v1, p0

    .line 1112
    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/telephony/ModemActivityInfo;->setReceiveTimeMillis(IIJ)V

    return-void
.end method


# virtual methods
.method blacklist getCallback()Landroid/os/Handler$Callback;
    .registers 2

    .line 135
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;)V

    return-object v0
.end method

.method blacklist setSemMainThreadHandler(Landroid/os/Handler;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->mSemMainThreadHandler:Landroid/os/Handler;

    return-void
.end method
