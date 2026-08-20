.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1713
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

    .line 1772
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1773
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1774
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1775
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

    .line 1744
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_38

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_4c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_60

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_74

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_88

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_38
    .array-data 1
        0x7et
        -0x2t
        0x2bt
        0x5t
        0x7et
        -0x61t
        -0x6dt
        -0x79t
        -0x4dt
        0x50t
        0xet
        0x67t
        -0x51t
        -0x69t
        -0x6ct
        0x2at
        -0x59t
        -0x38t
        0x0t
        -0x72t
        0x6et
        -0x19t
        -0x28t
        -0x24t
        -0x56t
        -0x1ct
        0x10t
        0x7ft
        -0x26t
        -0x7ct
        0x1t
        0x6bt
    .end array-data

    :array_4c
    .array-data 1
        0x21t
        0x75t
        0x7dt
        0xet
        0x5dt
        -0x2ct
        -0x49t
        -0x1ct
        -0x43t
        -0x68t
        0x1at
        0x4at
        0x20t
        0x53t
        0x1bt
        -0x36t
        0x3ct
        0x32t
        0x27t
        0x1at
        -0x27t
        0x77t
        0x7bt
        0x17t
        -0x49t
        0x4et
        -0x4bt
        -0x5ft
        -0x16t
        0x50t
        -0x7dt
        -0x7ct
    .end array-data

    :array_60
    .array-data 1
        0x77t
        0x52t
        -0x1ft
        -0x22t
        -0x6dt
        -0x56t
        -0xbt
        -0x2t
        -0x2dt
        0x70t
        0x11t
        -0x3et
        0x19t
        -0x54t
        0x24t
        0x70t
        0x69t
        -0xat
        -0x51t
        0x32t
        0xbt
        0x8t
        0x10t
        -0x26t
        -0x57t
        -0x7bt
        0x10t
        0x58t
        0x4at
        0x10t
        -0x19t
        -0x4ct
    .end array-data

    :array_74
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

    :array_88
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1721
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1782
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    const-wide/16 v2, 0x6

    const-wide/16 v4, 0x0

    const-string v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const/4 v7, 0x6

    const-string v8, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_514

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_57a

    goto/16 :goto_512

    .line 2639
    :sswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2641
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_512

    .line 2628
    :sswitch_20
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2631
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2632
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2618
    :sswitch_32
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->ping()V

    .line 2621
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2622
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2605
    :sswitch_40
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2607
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_512

    .line 2571
    :sswitch_48
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2574
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2576
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2578
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2579
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2580
    invoke-virtual {p1, v0, v1, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2581
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6c
    if-ge v9, p2, :cond_8c

    mul-int/lit8 v0, v9, 0x20

    int-to-long v0, v0

    .line 2585
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_84

    .line 2587
    array-length v3, v2

    const/16 v6, 0x20

    if-ne v3, v6, :cond_84

    .line 2591
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    .line 2588
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2595
    :cond_8c
    invoke-virtual {p1, v4, v5, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2597
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2560
    :sswitch_97
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2563
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2564
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2548
    :sswitch_a9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2552
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2553
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2554
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2537
    :sswitch_bf
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2540
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2541
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2526
    :pswitch_d1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2528
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->stopDppInitiator()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2529
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2530
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2513
    :pswitch_e3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2517
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppEnrolleeInitiator(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2518
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2519
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2495
    :pswitch_fd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2500
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    move-object v0, p0

    .line 2504
    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppConfiguratorInitiator(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2505
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2506
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2483
    :pswitch_12c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2486
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->removeDppUri(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2487
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2488
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2467
    :pswitch_142
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2470
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->addDppPeerUri(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$addDppPeerUriCallback;)V

    goto/16 :goto_512

    .line 2452
    :pswitch_153
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2454
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->getKeyMgmtCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$getKeyMgmtCapabilitiesCallback;)V

    goto/16 :goto_512

    .line 2440
    :pswitch_160
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2442
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2443
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->registerCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2444
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2445
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    :pswitch_17a
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    .line 2428
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2431
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2432
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2433
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2416
    :pswitch_196
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2419
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2420
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2421
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2422
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2404
    :pswitch_1ac
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2407
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeExtRadioWork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2408
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2409
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2410
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2386
    :pswitch_1c2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2390
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2391
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$8;

    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;IILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    goto/16 :goto_512

    .line 2374
    :pswitch_1db
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2377
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2378
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2379
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2363
    :pswitch_1f1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2365
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2366
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2367
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2368
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2339
    :pswitch_203
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2343
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2346
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2350
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$7;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_512

    .line 2327
    :pswitch_219
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2330
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2331
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2332
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2307
    :pswitch_22f
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2311
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2314
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2318
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2319
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2320
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2321
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2286
    :pswitch_24a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2290
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2293
    invoke-virtual {p4, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2298
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2299
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2300
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2266
    :pswitch_269
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p4, p1, [B

    const-wide/16 v0, 0x2

    .line 2270
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2273
    invoke-virtual {p2, v4, v5, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2277
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2278
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2279
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2254
    :pswitch_287
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2257
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2258
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2259
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2260
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2242
    :pswitch_29d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2244
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2245
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2246
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2247
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2248
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2230
    :pswitch_2b3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2233
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2234
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2235
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2218
    :pswitch_2c9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2221
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2222
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2223
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2206
    :pswitch_2df
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2209
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2210
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2211
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2212
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2195
    :pswitch_2f5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2198
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2199
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2184
    :pswitch_307
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2186
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2187
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2188
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2155
    :pswitch_319
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2157
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    goto/16 :goto_512

    .line 2134
    :pswitch_326
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2138
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2141
    invoke-virtual {p4, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2146
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2147
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2148
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2149
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2112
    :pswitch_345
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2116
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2119
    invoke-virtual {p4, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object p4

    .line 2124
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2125
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2126
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2127
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2092
    :pswitch_368
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2096
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2099
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2103
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2104
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2105
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2106
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2072
    :pswitch_383
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2076
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2079
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2083
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2084
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2085
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2052
    :pswitch_39e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2056
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2059
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2063
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2064
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2065
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2040
    :pswitch_3b9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2043
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2044
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2045
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2029
    :pswitch_3cf
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2031
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2032
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2033
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2018
    :pswitch_3e1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2020
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2021
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2022
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 2007
    :pswitch_3f3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2010
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2011
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1995
    :pswitch_405
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 1998
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1999
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2000
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1983
    :pswitch_41f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1986
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1987
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1988
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1971
    :pswitch_435
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1974
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1975
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1976
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1959
    :pswitch_44b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1962
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1963
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1964
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1947
    :pswitch_461
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1950
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1951
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1952
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1935
    :pswitch_477
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1938
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1939
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1940
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_512

    .line 1915
    :pswitch_48d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p4, p1, [B

    .line 1919
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1922
    invoke-virtual {p2, v4, v5, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1926
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1927
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1928
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_512

    .line 1903
    :pswitch_4a9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1906
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1907
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1908
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_512

    .line 1888
    :pswitch_4be
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto :goto_512

    .line 1872
    :pswitch_4ca
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1875
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto :goto_512

    .line 1860
    :pswitch_4da
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1863
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1864
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1865
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_512

    .line 1845
    :pswitch_4ef
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1847
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_512

    .line 1830
    :pswitch_4fb
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1832
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_512

    .line 1815
    :pswitch_507
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    :goto_512
    return-void

    nop

    :pswitch_data_514
    .packed-switch 0x1
        :pswitch_507
        :pswitch_4fb
        :pswitch_4ef
        :pswitch_4da
        :pswitch_4ca
        :pswitch_4be
        :pswitch_4a9
        :pswitch_48d
        :pswitch_477
        :pswitch_461
        :pswitch_44b
        :pswitch_435
        :pswitch_41f
        :pswitch_405
        :pswitch_3f3
        :pswitch_3e1
        :pswitch_3cf
        :pswitch_3b9
        :pswitch_39e
        :pswitch_383
        :pswitch_368
        :pswitch_345
        :pswitch_326
        :pswitch_319
        :pswitch_307
        :pswitch_2f5
        :pswitch_2df
        :pswitch_2c9
        :pswitch_2b3
        :pswitch_29d
        :pswitch_287
        :pswitch_269
        :pswitch_24a
        :pswitch_22f
        :pswitch_219
        :pswitch_203
        :pswitch_1f1
        :pswitch_1db
        :pswitch_1c2
        :pswitch_1ac
        :pswitch_196
        :pswitch_17a
        :pswitch_160
        :pswitch_153
        :pswitch_142
        :pswitch_12c
        :pswitch_fd
        :pswitch_e3
        :pswitch_d1
    .end packed-switch

    :sswitch_data_57a
    .sparse-switch
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_48
        0xf494e54 -> :sswitch_40
        0xf504e47 -> :sswitch_32
        0xf524546 -> :sswitch_20
        0xf535953 -> :sswitch_18
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    .line 1794
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

    .line 1801
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
