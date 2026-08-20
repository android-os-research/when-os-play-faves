.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2045
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

    .line 2100
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2101
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 2102
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 2103
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

    .line 2074
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

    .line 2053
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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

    const-string p0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2110
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

    const-wide/16 v4, 0x0

    const-string p4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const/4 v6, 0x6

    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_44c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_4a2

    goto/16 :goto_44b

    .line 2858
    :sswitch_16
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2860
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_44b

    .line 2847
    :sswitch_1e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2850
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2851
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2837
    :sswitch_30
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->ping()V

    .line 2840
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2824
    :sswitch_3e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_44b

    .line 2790
    :sswitch_46
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2793
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2795
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2797
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2798
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2799
    invoke-virtual {p1, v0, v1, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2800
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6a
    if-ge v8, p2, :cond_8a

    mul-int/lit8 v0, v8, 0x20

    int-to-long v0, v0

    .line 2804
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_82

    .line 2806
    array-length v3, v2

    const/16 v6, 0x20

    if-ne v3, v6, :cond_82

    .line 2810
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 2807
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2814
    :cond_8a
    invoke-virtual {p1, v4, v5, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2816
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2779
    :sswitch_95
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2781
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2782
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2783
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2767
    :sswitch_a7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2771
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2772
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2756
    :sswitch_bd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2758
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2759
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2760
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2744
    :pswitch_cf
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2747
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2748
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2749
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2750
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2732
    :pswitch_e5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2735
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeExtRadioWork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2736
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2737
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2714
    :pswitch_fb
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2716
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2719
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$8;

    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;IILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    goto/16 :goto_44b

    .line 2702
    :pswitch_114
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2705
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2706
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2707
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2691
    :pswitch_12a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2694
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2695
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2667
    :pswitch_13c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2671
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2674
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2678
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$7;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_44b

    .line 2655
    :pswitch_152
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2658
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2659
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2660
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2635
    :pswitch_168
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2639
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2642
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2646
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2647
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2648
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2614
    :pswitch_183
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2618
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2621
    invoke-virtual {p4, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2626
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2627
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2628
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2594
    :pswitch_1a2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p4, p1, [B

    const-wide/16 v0, 0x2

    .line 2598
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2601
    invoke-virtual {p2, v4, v5, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2605
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2606
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2607
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2582
    :pswitch_1c0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2585
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2586
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2587
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2570
    :pswitch_1d6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2573
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2574
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2575
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2558
    :pswitch_1ec
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2561
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2562
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2563
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2546
    :pswitch_202
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2549
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2550
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2551
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2552
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2534
    :pswitch_218
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2537
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2538
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2539
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2523
    :pswitch_22e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2525
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2526
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2527
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2512
    :pswitch_240
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2515
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2516
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2483
    :pswitch_252
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    goto/16 :goto_44b

    .line 2462
    :pswitch_25f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2466
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2469
    invoke-virtual {p4, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2474
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2475
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2476
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2477
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2440
    :pswitch_27e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2444
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2447
    invoke-virtual {p4, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2451
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object p4

    .line 2452
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2453
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2454
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2455
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2456
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2420
    :pswitch_2a1
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2424
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2427
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2431
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2432
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2433
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2400
    :pswitch_2bc
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2404
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2407
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2411
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2412
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2413
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2414
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2380
    :pswitch_2d7
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 2384
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2387
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2391
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2392
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2393
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2394
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2368
    :pswitch_2f2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2371
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2372
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2373
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2374
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2357
    :pswitch_308
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2359
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2360
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2361
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2362
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2346
    :pswitch_31a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2348
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2349
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2350
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2351
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2335
    :pswitch_32c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2338
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2339
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2340
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2323
    :pswitch_33e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2326
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2327
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2328
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2329
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2311
    :pswitch_358
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 2314
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2315
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2316
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2317
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2299
    :pswitch_36e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2302
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2303
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2304
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2305
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2287
    :pswitch_384
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2290
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2291
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2292
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2275
    :pswitch_39a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2278
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2279
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2280
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2263
    :pswitch_3b0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2266
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2267
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2268
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_44b

    .line 2243
    :pswitch_3c6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p4, p1, [B

    .line 2247
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2250
    invoke-virtual {p2, v4, v5, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2254
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2255
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2256
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2257
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_44b

    .line 2231
    :pswitch_3e2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2234
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2235
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2236
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_44b

    .line 2216
    :pswitch_3f7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2218
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto :goto_44b

    .line 2200
    :pswitch_403
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2203
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto :goto_44b

    .line 2188
    :pswitch_413
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2191
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2192
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2193
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2194
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_44b

    .line 2173
    :pswitch_428
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2175
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_44b

    .line 2158
    :pswitch_434
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2160
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_44b

    .line 2143
    :pswitch_440
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2145
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    :goto_44b
    return-void

    :pswitch_data_44c
    .packed-switch 0x1
        :pswitch_440
        :pswitch_434
        :pswitch_428
        :pswitch_413
        :pswitch_403
        :pswitch_3f7
        :pswitch_3e2
        :pswitch_3c6
        :pswitch_3b0
        :pswitch_39a
        :pswitch_384
        :pswitch_36e
        :pswitch_358
        :pswitch_33e
        :pswitch_32c
        :pswitch_31a
        :pswitch_308
        :pswitch_2f2
        :pswitch_2d7
        :pswitch_2bc
        :pswitch_2a1
        :pswitch_27e
        :pswitch_25f
        :pswitch_252
        :pswitch_240
        :pswitch_22e
        :pswitch_218
        :pswitch_202
        :pswitch_1ec
        :pswitch_1d6
        :pswitch_1c0
        :pswitch_1a2
        :pswitch_183
        :pswitch_168
        :pswitch_152
        :pswitch_13c
        :pswitch_12a
        :pswitch_114
        :pswitch_fb
        :pswitch_e5
        :pswitch_cf
    .end packed-switch

    :sswitch_data_4a2
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

    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    .line 2122
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

    .line 2129
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
