.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1850
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

    .line 1907
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1908
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1909
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1910
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

    .line 1880
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_30

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_44

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_58

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_6c

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_30
    .array-data 1
        0x12t
        0x2t
        0x11t
        0x37t
        0x1ft
        -0x23t
        0x29t
        -0x5t
        0x13t
        0x48t
        0x37t
        0x7t
        0x1dt
        0x43t
        0x2at
        0x30t
        0x2dt
        0x7bt
        0x60t
        -0x17t
        -0x47t
        0x5at
        -0xat
        0x11t
        -0x23t
        -0x73t
        -0x22t
        -0x7at
        -0x43t
        0x1ft
        0x77t
        -0x12t
    .end array-data

    :array_44
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

    :array_58
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

    :array_6c
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1858
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1917
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

    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x6

    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const-string v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_5cc

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_63e

    goto/16 :goto_5ca

    .line 2904
    :sswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_5ca

    .line 2893
    :sswitch_20
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2896
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2897
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2883
    :sswitch_32
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2885
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->ping()V

    .line 2886
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2870
    :sswitch_40
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_5ca

    .line 2836
    :sswitch_48
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2839
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2841
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2843
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2844
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2845
    invoke-virtual {p1, v0, v1, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2846
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6c
    if-ge v9, p2, :cond_8c

    mul-int/lit8 v0, v9, 0x20

    int-to-long v0, v0

    .line 2850
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_84

    .line 2852
    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_84

    .line 2856
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    .line 2853
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2860
    :cond_8c
    invoke-virtual {p1, v5, v6, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2862
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2825
    :sswitch_97
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2828
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2829
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2813
    :sswitch_a9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2817
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2818
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2802
    :sswitch_bf
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2805
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2806
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2790
    :pswitch_d1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2793
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->setMacRandomization(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2794
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2795
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2765
    :pswitch_e7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2767
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2768
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 2770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    new-array v8, v7, [B

    .line 2773
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2776
    invoke-virtual {v0, v5, v6, v8, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move-object v5, v8

    .line 2781
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->addGroup_1_2(Ljava/util/ArrayList;Ljava/lang/String;ZI[BZ)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2782
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2783
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2754
    :pswitch_11a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2756
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2757
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2758
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2759
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2742
    :pswitch_12c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2745
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2746
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2747
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2730
    :pswitch_142
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2733
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2734
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2735
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2715
    :pswitch_158
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2717
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    goto/16 :goto_5ca

    .line 2700
    :pswitch_165
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2702
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    goto/16 :goto_5ca

    .line 2680
    :pswitch_172
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2684
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2687
    invoke-virtual {p2, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2691
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2692
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2693
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2668
    :pswitch_18d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2671
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2672
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2673
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2674
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2656
    :pswitch_1a3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2659
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2660
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2661
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2631
    :pswitch_1b9
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2633
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v7, [B

    .line 2636
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2639
    invoke-virtual {p2, v5, v6, p4, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2643
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$11;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_5ca

    .line 2618
    :pswitch_1d3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2620
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2621
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2622
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2623
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2624
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2625
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2597
    :pswitch_1ed
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v7, [B

    .line 2602
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2605
    invoke-virtual {p2, v5, v6, p4, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2609
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2610
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2611
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2585
    :pswitch_20c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2588
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2589
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2590
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2573
    :pswitch_222
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 2576
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2577
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2578
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2548
    :pswitch_238
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2552
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2555
    invoke-virtual {p4, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2560
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$10;

    invoke-direct {p4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    goto/16 :goto_5ca

    .line 2537
    :pswitch_252
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2540
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2541
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2542
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2524
    :pswitch_264
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2527
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2528
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2529
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2530
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2511
    :pswitch_27e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2515
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2516
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2517
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2499
    :pswitch_298
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2502
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2503
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2486
    :pswitch_2ae
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2490
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2491
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2492
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2493
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2462
    :pswitch_2c8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2466
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2469
    invoke-virtual {p2, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2473
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$9;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    goto/16 :goto_5ca

    .line 2438
    :pswitch_2de
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2442
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2445
    invoke-virtual {p2, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2449
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$8;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    goto/16 :goto_5ca

    .line 2426
    :pswitch_2f4
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2429
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2430
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2431
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2432
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2413
    :pswitch_30a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2416
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2417
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2418
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2419
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2420
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2400
    :pswitch_324
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2403
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2404
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2405
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2406
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2379
    :pswitch_33e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p4, v7, [B

    .line 2384
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2387
    invoke-virtual {p2, v5, v6, p4, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2391
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2392
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2393
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2394
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2349
    :pswitch_35d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v7, [B

    .line 2354
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 2357
    invoke-virtual {v0, v5, v6, p4, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v0, v7, [B

    .line 2363
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2366
    invoke-virtual {p2, v5, v6, v0, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2370
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2371
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2372
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2329
    :pswitch_385
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2333
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2336
    invoke-virtual {p2, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2340
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2341
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2342
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2343
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2317
    :pswitch_3a0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2320
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2321
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2322
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2304
    :pswitch_3b6
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2307
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2308
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2309
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2310
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2311
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2283
    :pswitch_3d0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v7, [B

    .line 2287
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2290
    invoke-virtual {p4, v5, v6, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2295
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2296
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2297
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2298
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2272
    :pswitch_3ef
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2274
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2275
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2276
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2243
    :pswitch_401
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v1, v7, [B

    .line 2247
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p1

    .line 2250
    invoke-virtual {p1, v5, v6, v1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2255
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2256
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    .line 2257
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    .line 2258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2259
    new-instance v7, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$7;

    invoke-direct {v7, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    move-object v0, p0

    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    goto/16 :goto_5ca

    .line 2232
    :pswitch_42c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2235
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2236
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2237
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2221
    :pswitch_43e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2223
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2224
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2225
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2226
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2209
    :pswitch_450
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2212
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2213
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2214
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2215
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2196
    :pswitch_466
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 2200
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2201
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2202
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2203
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2183
    :pswitch_480
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2187
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2188
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2189
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2171
    :pswitch_49a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 2174
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2175
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2176
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2142
    :pswitch_4b0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2144
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    goto/16 :goto_5ca

    .line 2130
    :pswitch_4bd
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    move-result-object p1

    .line 2133
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2134
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2135
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2136
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2118
    :pswitch_4d7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 2121
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2122
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2123
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2124
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2106
    :pswitch_4ed
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2109
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2110
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2111
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2094
    :pswitch_503
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2097
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2098
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2099
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2100
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2082
    :pswitch_519
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2085
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2086
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2087
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2070
    :pswitch_52f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2073
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2074
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2075
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_5ca

    .line 2050
    :pswitch_545
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p4, p1, [B

    .line 2054
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2057
    invoke-virtual {p2, v5, v6, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2061
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2062
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2063
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2064
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ca

    .line 2038
    :pswitch_561
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2041
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2042
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2043
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ca

    .line 2023
    :pswitch_576
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2025
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto :goto_5ca

    .line 2007
    :pswitch_582
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2010
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto :goto_5ca

    .line 1995
    :pswitch_592
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1998
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 1999
    invoke-virtual {p3, v9}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2000
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_5ca

    .line 1980
    :pswitch_5a7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_5ca

    .line 1965
    :pswitch_5b3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1967
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_5ca

    .line 1950
    :pswitch_5bf
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1952
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    :goto_5ca
    return-void

    nop

    :pswitch_data_5cc
    .packed-switch 0x1
        :pswitch_5bf
        :pswitch_5b3
        :pswitch_5a7
        :pswitch_592
        :pswitch_582
        :pswitch_576
        :pswitch_561
        :pswitch_545
        :pswitch_52f
        :pswitch_519
        :pswitch_503
        :pswitch_4ed
        :pswitch_4d7
        :pswitch_4bd
        :pswitch_4b0
        :pswitch_49a
        :pswitch_480
        :pswitch_466
        :pswitch_450
        :pswitch_43e
        :pswitch_42c
        :pswitch_401
        :pswitch_3ef
        :pswitch_3d0
        :pswitch_3b6
        :pswitch_3a0
        :pswitch_385
        :pswitch_35d
        :pswitch_33e
        :pswitch_324
        :pswitch_30a
        :pswitch_2f4
        :pswitch_2de
        :pswitch_2c8
        :pswitch_2ae
        :pswitch_298
        :pswitch_27e
        :pswitch_264
        :pswitch_252
        :pswitch_238
        :pswitch_222
        :pswitch_20c
        :pswitch_1ed
        :pswitch_1d3
        :pswitch_1b9
        :pswitch_1a3
        :pswitch_18d
        :pswitch_172
        :pswitch_165
        :pswitch_158
        :pswitch_142
        :pswitch_12c
        :pswitch_11a
        :pswitch_e7
        :pswitch_d1
    .end packed-switch

    :sswitch_data_63e
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

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 1929
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

    .line 1936
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
