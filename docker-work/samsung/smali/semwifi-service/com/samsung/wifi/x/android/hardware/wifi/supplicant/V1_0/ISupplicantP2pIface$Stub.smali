.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2573
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .registers 3

    .line 2628
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2629
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 2630
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 2631
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 2602
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_28

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_3c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_50

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_28
    .array-data 1
        0x49t
        0x7t
        0x41t
        0x3t
        0x38t
        -0x3bt
        -0x18t
        -0x25t
        -0x12t
        -0x3ct
        -0x4bt
        -0x13t
        -0x3et
        0x60t
        -0x72t
        -0x5dt
        0x23t
        -0xbt
        0x56t
        0x19t
        0x45t
        -0x8t
        -0x7ft
        0xat
        -0x8t
        0x18t
        0x10t
        -0x3ct
        0x7bt
        0x1t
        -0x6ft
        -0x7ct
    .end array-data

    :array_3c
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
    .end array-data

    :array_50
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2581
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2638
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    const-string p4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_580

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_5ee

    goto/16 :goto_57f

    .line 3588
    :sswitch_16
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3590
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_57f

    .line 3577
    :sswitch_1e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3579
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 3580
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3581
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3567
    :sswitch_30
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->ping()V

    .line 3570
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3554
    :sswitch_3e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3556
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_57f

    .line 3520
    :sswitch_46
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3522
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3523
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3525
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 3527
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 3528
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 3529
    invoke-virtual {p1, v0, v1, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3530
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6a
    if-ge v8, p2, :cond_8a

    mul-int/lit8 v0, v8, 0x20

    int-to-long v0, v0

    .line 3534
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_82

    .line 3536
    array-length v3, v2

    const/16 v6, 0x20

    if-ne v3, v6, :cond_82

    .line 3540
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 3537
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3544
    :cond_8a
    invoke-virtual {p1, v4, v5, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3546
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3548
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3509
    :sswitch_95
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3511
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 3512
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3513
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3497
    :sswitch_a7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 3500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3501
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3502
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3486
    :sswitch_bd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3489
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3490
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3491
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3475
    :pswitch_cf
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3477
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3478
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3479
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3463
    :pswitch_e1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3466
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3467
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3468
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3451
    :pswitch_f7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3454
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3455
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3456
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3436
    :pswitch_10d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3438
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    goto/16 :goto_57f

    .line 3421
    :pswitch_11a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3423
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    goto/16 :goto_57f

    .line 3401
    :pswitch_127
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 3405
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3408
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3412
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3413
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3414
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3389
    :pswitch_142
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3392
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3393
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3394
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3377
    :pswitch_158
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3380
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3381
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3382
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3383
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3352
    :pswitch_16e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3354
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v6, [B

    .line 3357
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3360
    invoke-virtual {p2, v4, v5, p4, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3364
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$11;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_57f

    .line 3339
    :pswitch_188
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3342
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3343
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3344
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3345
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3346
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3318
    :pswitch_1a2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v6, [B

    .line 3323
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3326
    invoke-virtual {p2, v4, v5, p4, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3330
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3331
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3332
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3306
    :pswitch_1c1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 3309
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3310
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3311
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3312
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3294
    :pswitch_1d7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3296
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 3297
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3298
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3299
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3300
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3269
    :pswitch_1ed
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 3273
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 3276
    invoke-virtual {p4, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3280
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3281
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$10;

    invoke-direct {p4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    goto/16 :goto_57f

    .line 3258
    :pswitch_207
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3260
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3261
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3262
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3245
    :pswitch_219
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3249
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3250
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3251
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3252
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3232
    :pswitch_233
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3236
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3237
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3238
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3220
    :pswitch_24d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3223
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3224
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3225
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3226
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3207
    :pswitch_263
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 3210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3211
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3212
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3213
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3183
    :pswitch_27d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 3187
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3190
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3194
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$9;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    goto/16 :goto_57f

    .line 3159
    :pswitch_293
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 3163
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3166
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3170
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$8;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    goto/16 :goto_57f

    .line 3147
    :pswitch_2a9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3149
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3150
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3151
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3152
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3134
    :pswitch_2bf
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3137
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 3138
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3139
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3140
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3141
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3121
    :pswitch_2d9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3124
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 3125
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3126
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3127
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3100
    :pswitch_2f3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p4, v6, [B

    .line 3105
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3108
    invoke-virtual {p2, v4, v5, p4, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3112
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3113
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3114
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3070
    :pswitch_312
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v6, [B

    .line 3075
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 3078
    invoke-virtual {v0, v4, v5, p4, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v0, v6, [B

    .line 3084
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3087
    invoke-virtual {p2, v4, v5, v0, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3091
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3092
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3093
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3050
    :pswitch_33a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 3054
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 3057
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3061
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3062
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3063
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3038
    :pswitch_355
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3041
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3042
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3043
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3025
    :pswitch_36b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 3028
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 3029
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3030
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3031
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 3004
    :pswitch_385
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 3008
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 3011
    invoke-virtual {p4, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 3015
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 3016
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 3017
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3018
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3019
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2993
    :pswitch_3a4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2995
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2996
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2997
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2998
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2964
    :pswitch_3b6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v1, v6, [B

    .line 2968
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p1

    .line 2971
    invoke-virtual {p1, v4, v5, v1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2976
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 2979
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2980
    new-instance v7, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$7;

    invoke-direct {v7, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    goto/16 :goto_57f

    .line 2953
    :pswitch_3e1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2955
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2956
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2957
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2942
    :pswitch_3f3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2944
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2945
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2946
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2930
    :pswitch_405
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2933
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2934
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2935
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2917
    :pswitch_41b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2921
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2922
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2923
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2904
    :pswitch_435
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2907
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2908
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2909
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2910
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2892
    :pswitch_44f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2895
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2896
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2897
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2863
    :pswitch_465
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2865
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    goto/16 :goto_57f

    .line 2851
    :pswitch_472
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    move-result-object p1

    .line 2854
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2855
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2856
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2857
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2839
    :pswitch_48c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 2842
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2843
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2844
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2827
    :pswitch_4a2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2830
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2831
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2832
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2815
    :pswitch_4b8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2818
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2819
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2820
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2821
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2803
    :pswitch_4ce
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2806
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2807
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2808
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2791
    :pswitch_4e4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2794
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2795
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2796
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_57f

    .line 2771
    :pswitch_4fa
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p4, p1, [B

    .line 2775
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2778
    invoke-virtual {p2, v4, v5, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2782
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2783
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2784
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_57f

    .line 2759
    :pswitch_516
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2762
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2763
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2764
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2765
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_57f

    .line 2744
    :pswitch_52b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto :goto_57f

    .line 2728
    :pswitch_537
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2730
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2731
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto :goto_57f

    .line 2716
    :pswitch_547
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2719
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2720
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2721
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_57f

    .line 2701
    :pswitch_55c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2703
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_57f

    .line 2686
    :pswitch_568
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2688
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_57f

    .line 2671
    :pswitch_574
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2673
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    :goto_57f
    return-void

    :pswitch_data_580
    .packed-switch 0x1
        :pswitch_574
        :pswitch_568
        :pswitch_55c
        :pswitch_547
        :pswitch_537
        :pswitch_52b
        :pswitch_516
        :pswitch_4fa
        :pswitch_4e4
        :pswitch_4ce
        :pswitch_4b8
        :pswitch_4a2
        :pswitch_48c
        :pswitch_472
        :pswitch_465
        :pswitch_44f
        :pswitch_435
        :pswitch_41b
        :pswitch_405
        :pswitch_3f3
        :pswitch_3e1
        :pswitch_3b6
        :pswitch_3a4
        :pswitch_385
        :pswitch_36b
        :pswitch_355
        :pswitch_33a
        :pswitch_312
        :pswitch_2f3
        :pswitch_2d9
        :pswitch_2bf
        :pswitch_2a9
        :pswitch_293
        :pswitch_27d
        :pswitch_263
        :pswitch_24d
        :pswitch_233
        :pswitch_219
        :pswitch_207
        :pswitch_1ed
        :pswitch_1d7
        :pswitch_1c1
        :pswitch_1a2
        :pswitch_188
        :pswitch_16e
        :pswitch_158
        :pswitch_142
        :pswitch_127
        :pswitch_11a
        :pswitch_10d
        :pswitch_f7
        :pswitch_e1
        :pswitch_cf
    .end packed-switch

    :sswitch_data_5ee
    .sparse-switch
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_46
        0xf494e54 -> :sswitch_3e
        0xf504e47 -> :sswitch_30
        0xf524546 -> :sswitch_1e
        0xf535953 -> :sswitch_16
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 2650
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2657
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
