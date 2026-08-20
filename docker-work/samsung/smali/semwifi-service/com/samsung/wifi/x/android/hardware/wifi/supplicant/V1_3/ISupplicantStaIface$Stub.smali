.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1872
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

    .line 1933
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1934
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1935
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1936
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

    .line 1904
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_40

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_54

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_68

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_7c

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_90

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_a4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_40
    .array-data 1
        0x15t
        -0x63t
        0x48t
        -0x37t
        -0x11t
        -0x48t
        -0x7ft
        -0xct
        0x4dt
        0x5dt
        -0x13t
        -0x58t
        -0x6ft
        0x7bt
        -0x77t
        -0x5t
        0x4dt
        -0x5et
        0x68t
        0x37t
        -0x10t
        0x19t
        0x44t
        0x6dt
        0x6dt
        0x73t
        -0x49t
        0x3et
        -0x5bt
        0x1t
        0xet
        -0x36t
    .end array-data

    :array_54
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

    :array_68
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

    :array_7c
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

    :array_90
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

    :array_a4
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1880
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    const-string v2, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1943
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-string p4, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    const-wide/16 v3, 0x6

    const-wide/16 v5, 0x0

    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    const/4 v8, 0x6

    const-string v9, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_59e

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_612

    goto/16 :goto_59c

    .line 2901
    :sswitch_1a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_59c

    .line 2890
    :sswitch_22
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2893
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2894
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2880
    :sswitch_34
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2882
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->ping()V

    .line 2883
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2867
    :sswitch_42
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2869
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_59c

    .line 2833
    :sswitch_4a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2835
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2836
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2838
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2840
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2841
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2842
    invoke-virtual {p1, v0, v1, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2843
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6e
    if-ge v10, p2, :cond_8e

    mul-int/lit8 v0, v10, 0x20

    int-to-long v0, v0

    .line 2847
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_86

    .line 2849
    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_86

    .line 2853
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 2850
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2857
    :cond_8e
    invoke-virtual {p1, v5, v6, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2859
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2861
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2822
    :sswitch_99
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2825
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2826
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2810
    :sswitch_ab
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2813
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2814
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2815
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2799
    :sswitch_c1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2802
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2803
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2778
    :pswitch_d3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2782
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2785
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2789
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2790
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->filsHlpAddRequest([BLjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2791
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2792
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2767
    :pswitch_f2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2769
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->filsHlpFlushRequest()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2770
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2771
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2772
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2752
    :pswitch_104
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2754
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getKeyMgmtCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getKeyMgmtCapabilities_1_3Callback;)V

    goto/16 :goto_59c

    .line 2740
    :pswitch_111
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2743
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->setMboCellularDataStatus(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2744
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2745
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2725
    :pswitch_127
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getWpaDriverCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getWpaDriverCapabilitiesCallback;)V

    goto/16 :goto_59c

    .line 2710
    :pswitch_134
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2712
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getConnectionCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getConnectionCapabilitiesCallback;)V

    goto/16 :goto_59c

    .line 2698
    :pswitch_141
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2700
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2701
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->registerCallback_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2702
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2703
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2687
    :pswitch_15b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2689
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->stopDppInitiator()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2690
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2691
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2692
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2674
    :pswitch_16d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2678
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppEnrolleeInitiator(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2679
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2680
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2681
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2656
    :pswitch_187
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2659
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2664
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    move-object v0, p0

    .line 2665
    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppConfiguratorInitiator(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2666
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2667
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2668
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2644
    :pswitch_1b6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2647
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->removeDppUri(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2648
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2649
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2650
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2628
    :pswitch_1cc
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2630
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2631
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->addDppPeerUri(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$addDppPeerUriCallback;)V

    goto/16 :goto_59c

    .line 2613
    :pswitch_1dd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2615
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->getKeyMgmtCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$getKeyMgmtCapabilitiesCallback;)V

    goto/16 :goto_59c

    .line 2601
    :pswitch_1ea
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2603
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2604
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->registerCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2605
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2606
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    :pswitch_204
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    .line 2589
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2592
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2593
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2594
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2577
    :pswitch_220
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2580
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2581
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2582
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2565
    :pswitch_236
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2567
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2568
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeExtRadioWork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2569
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2570
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2547
    :pswitch_24c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2550
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2552
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$8;

    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;IILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    goto/16 :goto_59c

    .line 2535
    :pswitch_265
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2538
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2539
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2540
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2524
    :pswitch_27b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2526
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2527
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2528
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2529
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2500
    :pswitch_28d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2504
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2507
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2511
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$7;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    goto/16 :goto_59c

    .line 2488
    :pswitch_2a3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2491
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2492
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2493
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2494
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2468
    :pswitch_2b9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2472
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2475
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2479
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2480
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2481
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2447
    :pswitch_2d4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2451
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2454
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2459
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2460
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2461
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2427
    :pswitch_2f3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p4, p1, [B

    const-wide/16 v0, 0x2

    .line 2431
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2434
    invoke-virtual {p2, v5, v6, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2438
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2439
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2440
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2415
    :pswitch_311
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2418
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2419
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2420
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2421
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2403
    :pswitch_327
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2406
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2407
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2408
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2391
    :pswitch_33d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2394
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2395
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2396
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2397
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2379
    :pswitch_353
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2382
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2383
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2384
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2385
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2367
    :pswitch_369
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2370
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2371
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2372
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2373
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2356
    :pswitch_37f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2358
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2359
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2360
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2345
    :pswitch_391
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2347
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2348
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2349
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2350
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2316
    :pswitch_3a3
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2318
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    goto/16 :goto_59c

    .line 2295
    :pswitch_3b0
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2299
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2302
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2306
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2307
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2308
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2309
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2310
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2273
    :pswitch_3cf
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2277
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2280
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object p4

    .line 2285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2286
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2287
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2288
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2289
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2253
    :pswitch_3f2
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2257
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2260
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2264
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2265
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2266
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2267
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2233
    :pswitch_40d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2237
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2240
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2244
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2245
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2246
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2213
    :pswitch_428
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v8, [B

    .line 2217
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2220
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2224
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2225
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2226
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2227
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2201
    :pswitch_443
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2204
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2205
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2206
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2207
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2190
    :pswitch_459
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2193
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2194
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2195
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2179
    :pswitch_46b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2182
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2183
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2168
    :pswitch_47d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2171
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2172
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2156
    :pswitch_48f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    move-result-object p1

    .line 2159
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2160
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2161
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2144
    :pswitch_4a9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 2147
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2148
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2149
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2132
    :pswitch_4bf
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2135
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2136
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2137
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2120
    :pswitch_4d5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2123
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2124
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2125
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2108
    :pswitch_4eb
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2111
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2112
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2113
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2096
    :pswitch_501
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2099
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2100
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2101
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2102
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_59c

    .line 2076
    :pswitch_517
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 p1, 0x8

    new-array p4, p1, [B

    .line 2080
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2083
    invoke-virtual {p2, v5, v6, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2087
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2088
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2089
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_59c

    .line 2064
    :pswitch_533
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2067
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2068
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2069
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_59c

    .line 2049
    :pswitch_548
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    goto :goto_59c

    .line 2033
    :pswitch_554
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2036
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    goto :goto_59c

    .line 2021
    :pswitch_564
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2024
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    move-result-object p0

    .line 2025
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2026
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2027
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_59c

    .line 2006
    :pswitch_579
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2008
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    goto :goto_59c

    .line 1991
    :pswitch_585
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    goto :goto_59c

    .line 1976
    :pswitch_591
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1978
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    :goto_59c
    return-void

    nop

    :pswitch_data_59e
    .packed-switch 0x1
        :pswitch_591
        :pswitch_585
        :pswitch_579
        :pswitch_564
        :pswitch_554
        :pswitch_548
        :pswitch_533
        :pswitch_517
        :pswitch_501
        :pswitch_4eb
        :pswitch_4d5
        :pswitch_4bf
        :pswitch_4a9
        :pswitch_48f
        :pswitch_47d
        :pswitch_46b
        :pswitch_459
        :pswitch_443
        :pswitch_428
        :pswitch_40d
        :pswitch_3f2
        :pswitch_3cf
        :pswitch_3b0
        :pswitch_3a3
        :pswitch_391
        :pswitch_37f
        :pswitch_369
        :pswitch_353
        :pswitch_33d
        :pswitch_327
        :pswitch_311
        :pswitch_2f3
        :pswitch_2d4
        :pswitch_2b9
        :pswitch_2a3
        :pswitch_28d
        :pswitch_27b
        :pswitch_265
        :pswitch_24c
        :pswitch_236
        :pswitch_220
        :pswitch_204
        :pswitch_1ea
        :pswitch_1dd
        :pswitch_1cc
        :pswitch_1b6
        :pswitch_187
        :pswitch_16d
        :pswitch_15b
        :pswitch_141
        :pswitch_134
        :pswitch_127
        :pswitch_111
        :pswitch_104
        :pswitch_f2
        :pswitch_d3
    .end packed-switch

    :sswitch_data_612
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
        0xf485348 -> :sswitch_4a
        0xf494e54 -> :sswitch_42
        0xf504e47 -> :sswitch_34
        0xf524546 -> :sswitch_22
        0xf535953 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    .line 1955
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

    .line 1962
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
