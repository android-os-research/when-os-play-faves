.class public Lcom/android/ims/SecImsManager;
.super Lcom/android/ims/ImsManager;
.source "SecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/SecImsManager$WfcDataBaseManager;
    }
.end annotation


# static fields
.field private static final blacklist IMS_SERVICE_NAME:Ljava/lang/String; = "ims6"

.field private static blacklist MDEC_ACTIVATION:Ljava/lang/String; = null

.field private static blacklist MDEC_DEVICE_TYPE:Ljava/lang/String; = null

.field private static blacklist MDEC_DEVICE_TYPE_PD:Ljava/lang/String; = null

.field private static blacklist MDEC_DEVICE_TYPE_SD:Ljava/lang/String; = null

.field private static final blacklist SAMSUNG_IMS_SERVICE_NAME:Ljava/lang/String; = "ims6"

.field private static final blacklist TAG:Ljava/lang/String; = "SecImsManager"

.field private static blacklist VOICE_CS:I

.field private static blacklist VOICE_VOLTE:I

.field private static blacklist VT_DISABLED:I

.field private static blacklist VT_ENABLED:I


# instance fields
.field private final blacklist WAIT_TIMEOUT_MS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/ims/SecImsManager;->VOICE_VOLTE:I

    .line 63
    const/4 v1, 0x1

    sput v1, Lcom/android/ims/SecImsManager;->VOICE_CS:I

    .line 65
    sput v0, Lcom/android/ims/SecImsManager;->VT_ENABLED:I

    .line 66
    sput v1, Lcom/android/ims/SecImsManager;->VT_DISABLED:I

    .line 70
    const-string v0, "cmc_activation"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_ACTIVATION:Ljava/lang/String;

    .line 71
    const-string v0, "cmc_device_type"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE:Ljava/lang/String;

    .line 72
    const-string v0, "pd"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE_PD:Ljava/lang/String;

    .line 73
    const-string v0, "sd"

    sput-object v0, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE_SD:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/ims/SecImsManager;->WAIT_TIMEOUT_MS:I

    .line 80
    return-void
.end method

.method private blacklist getEnhanced4gLtePropName()Ljava/lang/String;
    .registers 3

    .line 218
    iget v0, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 219
    const-string v0, "voicecall_type2"

    return-object v0

    .line 221
    :cond_8
    const-string v0, "voicecall_type"

    return-object v0
.end method

.method private blacklist getFeatureValue(II)Z
    .registers 10
    .param p1, "feature"    # I
    .param p2, "rat"    # I

    .line 388
    const-string v0, "SecImsManager"

    const-string v1, "getFeatureValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 390
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v2, [Z

    .line 391
    .local v2, "returnValue":[Z
    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 394
    :try_start_12
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/MmTelFeatureConnection;

    new-instance v5, Lcom/android/ims/SecImsManager$1;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/ims/SecImsManager$1;-><init>(Lcom/android/ims/SecImsManager;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/ims/MmTelFeatureConnection;->queryEnabledCapabilities(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_22} :catch_23

    .line 410
    goto :goto_41

    .line 406
    :catch_23
    move-exception v4

    .line 408
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFeatureValue : exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 414
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_41
    const-wide/16 v4, 0xc8

    :try_start_43
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_48} :catch_49

    .line 417
    goto :goto_4d

    .line 415
    :catch_49
    move-exception v4

    .line 416
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 418
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFeatureValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-boolean v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    aget-boolean v0, v2, v3

    return v0
.end method

.method private blacklist getRegistrationNetworkType(I)I
    .registers 3
    .param p1, "technology"    # I

    .line 596
    packed-switch p1, :pswitch_data_e

    .line 604
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 598
    :pswitch_5
    const/16 v0, 0x14

    return v0

    .line 602
    :pswitch_8
    const/16 v0, 0x12

    return v0

    .line 600
    :pswitch_b
    const/16 v0, 0xd

    return v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getSamsungImsService()Lcom/android/ims/internal/IImsService;
    .registers 4

    .line 83
    const-string v0, "ims6"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_11

    .line 86
    const-string v1, "SecImsManager"

    const-string v2, "getSamsungImsService: binder does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_11
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getVtPropName()Ljava/lang/String;
    .registers 3

    .line 226
    iget v0, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 227
    const-string v0, "videocall_type2"

    return-object v0

    .line 229
    :cond_8
    const-string v0, "videocall_type"

    return-object v0
.end method

.method private blacklist isSecEpdgNotSupported()Z
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v2, "epdg_support"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 383
    move v3, v1

    goto :goto_11

    :cond_10
    nop

    :goto_11
    move v0, v3

    .line 384
    .local v0, "setting":Z
    return v0
.end method

.method private blacklist isSubIdValid(I)Z
    .registers 3
    .param p1, "subId"    # I

    .line 319
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method


# virtual methods
.method public blacklist acknowledgeSmsWithPdu(II[B)V
    .registers 8
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->acknowledgeSmsWithPdu(II[B)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 643
    nop

    .line 644
    return-void

    .line 640
    :catch_d
    move-exception v0

    .line 641
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "acknowledgeSmsWithPdu()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist changeAudioPath(I)V
    .registers 6
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 428
    :try_start_0
    const-string v0, "SecImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAudioPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 430
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->changeAudioPath(II)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_59} :catch_5b

    .line 435
    nop

    .line 436
    return-void

    .line 432
    :catch_5b
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "changeAudioPath()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getInitialCallNetworkType(I)I
    .registers 8
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "networkType":I
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getSamsungImsService()Lcom/android/ims/internal/IImsService;

    move-result-object v1

    .line 577
    .local v1, "imsservice":Lcom/android/ims/internal/IImsService;
    if-eqz v1, :cond_28

    .line 579
    :try_start_7
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->getE911CallCount(I)I

    move-result v2

    .line 580
    .local v2, "e911Callcount":I
    if-nez v2, :cond_1c

    .line 581
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v3

    .line 582
    .local v3, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v3, :cond_1c

    .line 583
    invoke-interface {v3}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/ims/SecImsManager;->getRegistrationNetworkType(I)I

    move-result v4
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1d

    move v0, v4

    .line 589
    .end local v2    # "e911Callcount":I
    .end local v3    # "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    :cond_1c
    goto :goto_28

    .line 586
    :catch_1d
    move-exception v2

    .line 587
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/android/ims/ImsException;

    const/16 v4, 0x6a

    const-string v5, "getInitialCallNetworkType()"

    invoke-direct {v3, v5, v2, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 591
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialCallNetworkType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecImsManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 487
    :catch_d
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "getTrn()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist getWfcMode(Z)I
    .registers 9
    .param p1, "roaming"    # Z

    .line 289
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 290
    invoke-super {p0, p1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    return v0

    .line 294
    :cond_b
    const-string v0, "SecImsManager"

    const-string v1, "wifi_call_preferred"

    const/4 v2, 0x0

    if-nez p1, :cond_35

    .line 295
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v3, v1, v2, v4}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 297
    .local v1, "mode":I
    invoke-static {v1, p1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToGoogleWfcMode(IZ)I

    move-result v2

    .line 298
    .local v2, "setting":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWfcMode - setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1    # "mode":I
    goto :goto_6b

    .line 304
    .end local v2    # "setting":I
    :cond_35
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v5, "wifi_call_when_roaming"

    const/4 v6, -0x1

    invoke-static {v3, v5, v6, v4}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    .line 306
    .local v3, "mode":I
    if-ne v3, v6, :cond_50

    .line 307
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v4, v1, v2, v5}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    .line 309
    invoke-static {v3, v2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToGoogleWfcMode(IZ)I

    move-result v1

    move v2, v1

    .local v1, "setting":I
    goto :goto_55

    .line 311
    .end local v1    # "setting":I
    :cond_50
    invoke-static {v3, p1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToGoogleWfcMode(IZ)I

    move-result v1

    move v2, v1

    .line 313
    .restart local v2    # "setting":I
    :goto_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWfcMode (roaming) - setting="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v3    # "mode":I
    :goto_6b
    return v2
.end method

.method public blacklist isCmcEmergencyCallSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/ims/MmTelFeatureConnection;->isCmcEmergencyCallSupported(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 513
    :catch_f
    move-exception v0

    .line 514
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "isCmcEmergencyCallSupported()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist isEnhanced4gLteModeSettingEnabledByUser()Z
    .registers 7

    .line 138
    const-string v0, "SecImsManager"

    .line 139
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 138
    const-string v3, "volte_vt_enabled"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 142
    .local v1, "setting":I
    sget v2, Lcom/android/ims/SecImsManager;->VOICE_CS:I

    .line 144
    .local v2, "propValue":I
    :try_start_11
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getEnhanced4gLtePropName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_1f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_11 .. :try_end_1f} :catch_21

    move v2, v3

    .line 147
    goto :goto_3c

    .line 145
    :catch_21
    move-exception v3

    .line 146
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getEnhanced4gLtePropName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NotFound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnhanced4gLteModeSettingEnabledByUser : sub DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", system prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v0, Lcom/android/ims/SecImsManager;->VOICE_VOLTE:I

    if-ne v2, v0, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    return v0
.end method

.method public blacklist isMultiDeviceCallContinuityEnabledByUser()Z
    .registers 8

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "activated":Z
    const-string v1, ""

    .line 527
    .local v1, "devicetype":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/ims/SecImsManager;->MDEC_ACTIVATION:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_11} :catch_18

    if-ne v4, v3, :cond_15

    .line 528
    move v4, v3

    goto :goto_16

    :cond_15
    move v4, v2

    :goto_16
    move v0, v4

    .line 531
    goto :goto_33

    .line 529
    :catch_18
    move-exception v4

    .line 530
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/ims/SecImsManager;->MDEC_ACTIVATION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NotFound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecImsManager"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_33
    if-eqz v0, :cond_41

    .line 533
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_41
    if-eqz v0, :cond_4c

    sget-object v4, Lcom/android/ims/SecImsManager;->MDEC_DEVICE_TYPE_SD:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move v2, v3

    :cond_4c
    return v2
.end method

.method public blacklist isVolteEnabledByPlatform()Z
    .registers 5

    .line 99
    const-string v0, "SecImsManager"

    const-string v1, "isVolteEnabledByPlatform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.volte_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_35

    .line 106
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2f

    goto :goto_35

    .line 111
    :cond_2f
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z

    move-result v0

    return v0

    .line 108
    :cond_35
    :goto_35
    return v3
.end method

.method public blacklist isVolteProvisionedOnDevice()Z
    .registers 2

    .line 130
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->isVolteProvisioned()Z

    move-result v0

    return v0
.end method

.method public blacklist isVtEnabledByPlatform()Z
    .registers 5

    .line 173
    const-string v0, "SecImsManager"

    const-string v1, "isVtEnabledByPlatformForSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "persist.dbg.vt_avail_ovr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 176
    return v2

    .line 179
    :cond_12
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 180
    invoke-direct {p0, v0, v2}, Lcom/android/ims/SecImsManager;->getFeatureValue(II)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1f
    move v1, v2

    .line 179
    :cond_20
    return v1
.end method

.method public blacklist isVtEnabledByUser()Z
    .registers 7

    .line 189
    const-string v0, "SecImsManager"

    .line 190
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 189
    const-string v3, "vt_ims_enabled"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v2}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v1

    .line 193
    .local v1, "setting":I
    sget v2, Lcom/android/ims/SecImsManager;->VT_DISABLED:I

    .line 195
    .local v2, "propValue":I
    :try_start_11
    iget-object v3, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getVtPropName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_1f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_11 .. :try_end_1f} :catch_21

    move v2, v3

    .line 198
    goto :goto_3c

    .line 196
    :catch_21
    move-exception v3

    .line 197
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getVtPropName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NotFound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_3c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVtEnabledByUser : sub DB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", system prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget v0, Lcom/android/ims/SecImsManager;->VT_ENABLED:I

    if-ne v2, v0, :cond_62

    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    return v0
.end method

.method public blacklist isVtProvisionedOnDevice()Z
    .registers 2

    .line 238
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->isVtProvisioned()Z

    move-result v0

    return v0
.end method

.method public blacklist isWfcEnabledByPlatform()Z
    .registers 6

    .line 257
    const-string v0, "SecImsManager"

    const-string v1, "isWfcEnabledByPlatform"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.dbg.wfc_avail_ovr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_40

    .line 260
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2f

    goto :goto_40

    .line 265
    :cond_2f
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v2, "epdg_support"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_3d

    .line 266
    goto :goto_3e

    :cond_3d
    move v3, v4

    :goto_3e
    move v0, v3

    .line 267
    .local v0, "setting":Z
    return v0

    .line 262
    .end local v0    # "setting":Z
    :cond_40
    :goto_40
    return v3
.end method

.method public blacklist isWfcEnabledByUser()Z
    .registers 5

    .line 275
    const-string v0, "SecImsManager"

    const-string v1, "isWfcEnabledByUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 277
    invoke-super {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    return v0

    .line 279
    :cond_12
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v2, "wifi_call_enable"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 280
    move v3, v1

    goto :goto_23

    :cond_22
    nop

    :goto_23
    move v0, v3

    .line 281
    .local v0, "setting":Z
    return v0
.end method

.method public blacklist isWfcProvisionedOnDevice()Z
    .registers 2

    .line 246
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 247
    invoke-super {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice()Z

    move-result v0

    return v0

    .line 249
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist sendPublishDialog(Lcom/android/internal/telephony/PublishDialog;)V
    .registers 6
    .param p1, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 503
    nop

    .line 504
    return-void

    .line 500
    :catch_f
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "sendPublishDialog()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist sendRpSmma(Ljava/lang/String;)V
    .registers 6
    .param p1, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1}, Lcom/android/ims/MmTelFeatureConnection;->sendRpSmma(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 631
    nop

    .line 632
    return-void

    .line 628
    :catch_d
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "sendRpSmma()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setEnhanced4gLteModeSetting(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnhanced4gLteModeSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 162
    invoke-static {p1}, Lcom/android/ims/SecImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "volte_vt_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getEnhanced4gLtePropName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_34

    sget v2, Lcom/android/ims/SecImsManager;->VOICE_VOLTE:I

    goto :goto_36

    :cond_34
    sget v2, Lcom/android/ims/SecImsManager;->VOICE_CS:I

    :goto_36
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 166
    return-void
.end method

.method public blacklist setRetryCount(II)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/MmTelFeatureConnection;->setRetryCount(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 618
    nop

    .line 619
    return-void

    .line 616
    :catch_d
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setRetryCount()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setTtyMode(I)V
    .registers 7
    .param p1, "ttyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 559
    const-string v0, "ims6"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v0

    .line 560
    .local v0, "imsservice":Lcom/android/ims/internal/IImsService;
    if-eqz v0, :cond_1d

    .line 562
    :try_start_c
    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/android/ims/internal/IImsService;->setTtyMode(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 566
    goto :goto_1d

    .line 563
    :catch_12
    move-exception v1

    .line 564
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "setTtyMode()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 568
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public blacklist setVideoCrtAudio(Z)V
    .registers 6
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 470
    :try_start_0
    const-string v0, "SecImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoCrtAudio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    .line 472
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    iget v1, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/ims/MmTelFeatureConnection;->setVideoCrtAudio(IZ)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_59} :catch_5b

    .line 477
    nop

    .line 478
    return-void

    .line 474
    :catch_5b
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "setVideoCrtAudio()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist setVtSetting(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVtSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 211
    invoke-static {p1}, Lcom/android/ims/SecImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v2, "vt_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getVtPropName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_34

    sget v2, Lcom/android/ims/SecImsManager;->VT_ENABLED:I

    goto :goto_36

    :cond_34
    sget v2, Lcom/android/ims/SecImsManager;->VT_DISABLED:I

    :goto_36
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    return-void
.end method

.method public blacklist setWfcMode(IZ)V
    .registers 9
    .param p1, "wfcMode"    # I
    .param p2, "roaming"    # Z

    .line 347
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 348
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/SecImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 349
    const-string v1, "SecImsManager"

    if-nez p2, :cond_2f

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfcMode - setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    nop

    .line 352
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    const-string v2, "wfc_ims_mode"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 354
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWfcMode(roaming) - setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    nop

    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    const-string v2, "wfc_ims_roaming_mode"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_4f
    :goto_4f
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 361
    return-void

    .line 365
    :cond_56
    if-eqz p2, :cond_71

    .line 366
    iget-object v1, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v3, "wifi_call_when_roaming"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4, v2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    .line 368
    .local v1, "mode":I
    if-eq v1, v4, :cond_71

    .line 370
    invoke-static {p1, p2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToSecWfcMode(IZ)I

    move-result v2

    .line 371
    .local v2, "setting":I
    iget-object v4, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    invoke-static {v4, v3, v2, v5}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 372
    return-void

    .line 376
    .end local v1    # "mode":I
    .end local v2    # "setting":I
    :cond_71
    const/4 p2, 0x0

    .line 377
    invoke-static {p1, p2}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->convertToSecWfcMode(IZ)I

    move-result v1

    .line 378
    .local v1, "setting":I
    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v4, "wifi_call_preferred"

    invoke-static {v2, v4, v1, v3}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 379
    return-void
.end method

.method public blacklist setWfcSetting(Z)V
    .registers 7
    .param p1, "enabled"    # Z

    .line 328
    invoke-virtual {p0}, Lcom/android/ims/SecImsManager;->getSubId()I

    move-result v0

    .line 329
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/android/ims/SecImsManager;->isSubIdValid(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 330
    nop

    .line 331
    invoke-static {p1}, Lcom/android/ims/SecImsManager;->booleanToPropertyString(Z)Ljava/lang/String;

    move-result-object v1

    .line 330
    const-string v2, "wfc_ims_enabled"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_14
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->isSecEpdgNotSupported()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 335
    return-void

    .line 338
    :cond_1b
    move v1, p1

    .line 339
    .local v1, "setting":I
    iget-object v2, p0, Lcom/android/ims/SecImsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/SecImsManager;->mPhoneId:I

    const-string v4, "wifi_call_enable"

    invoke-static {v2, v4, v1, v3}, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 340
    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/MmTelFeatureConnection;->startLocalRingBackTone(III)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 445
    :catch_d
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "startLocalRingBackTone()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist stopLocalRingBackTone()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/SecImsManager;->mMmTelConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/MmTelFeatureConnection;

    invoke-virtual {v0}, Lcom/android/ims/MmTelFeatureConnection;->stopLocalRingBackTone()I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 458
    :catch_d
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const/16 v2, 0x6a

    const-string v3, "stopLocalRingBackTone()"

    invoke-direct {v1, v3, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public blacklist triggerAutoConfigurationForApp(I)V
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 543
    invoke-direct {p0}, Lcom/android/ims/SecImsManager;->getSamsungImsService()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    .line 544
    .local v0, "imsservice":Lcom/android/ims/internal/IImsService;
    if-eqz v0, :cond_15

    .line 546
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsService;->triggerAutoConfigurationForApp(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 550
    goto :goto_15

    .line 547
    :catch_a
    move-exception v1

    .line 548
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const/16 v3, 0x6a

    const-string v4, "triggerAutoConfigurationForApp()"

    invoke-direct {v2, v4, v1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 552
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method public blacklist updateImsServiceConfig()V
    .registers 3

    .line 122
    const-string v0, "SecImsManager"

    const-string v1, "updateImsServiceConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
