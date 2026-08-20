.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2216
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

    .line 2281
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2282
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 2283
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 2284
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

    .line 2250
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_64

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_78

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_8c

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_a0

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_b4

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_c8

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_dc

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :array_50
    .array-data 1
        -0x18t
        -0x31t
        0x25t
        0x70t
        -0x2et
        -0xdt
        -0x28t
        -0x31t
        0x7at
        0x72t
        0x51t
        -0x18t
        0x5at
        -0x79t
        -0x35t
        -0xat
        0x33t
        -0x30t
        -0x41t
        -0xdt
        -0x3et
        -0x72t
        0x1ct
        -0x65t
        -0x41t
        0x33t
        -0x63t
        -0x16t
        0x4t
        -0x4et
        0x54t
        -0x6t
    .end array-data

    :array_64
    .array-data 1
        -0x5ft
        0x19t
        0x3dt
        0x37t
        -0x9t
        -0x1ft
        0x32t
        0x22t
        -0x41t
        0x79t
        -0x11t
        0x4bt
        0x73t
        -0x25t
        -0x53t
        0x15t
        -0x50t
        -0x10t
        -0x5dt
        0x30t
        -0x30t
        0x33t
        0x56t
        -0x2ft
        0x22t
        0x26t
        -0x24t
        -0x26t
        0x20t
        -0x22t
        0x44t
        -0x59t
    .end array-data

    :array_78
    .array-data 1
        0x2et
        0x7t
        -0x68t
        0x3at
        0x70t
        -0x5ft
        -0x47t
        0x63t
        -0x42t
        -0x18t
        -0x52t
        -0x32t
        0x5t
        0xet
        0x5et
        -0x5bt
        0x3t
        -0x5dt
        -0x23t
        -0x1dt
        0x1et
        0x21t
        -0x57t
        -0x8t
        0x35t
        0x2ct
        -0xft
        0x7et
        -0x6ft
        0x13t
        -0x2dt
        0x47t
    .end array-data

    :array_8c
    .array-data 1
        0x64t
        -0x42t
        0x8t
        0x4bt
        0x6et
        0x1et
        -0xdt
        0x30t
        -0x49t
        0x5ft
        -0x57t
        0x16t
        0x59t
        0x3dt
        -0x40t
        -0x47t
        0x4bt
        0xet
        -0x39t
        -0x5ft
        0x6dt
        0x5ct
        -0x6t
        -0x5bt
        -0x5dt
        0x1et
        0x6ct
        -0x6ft
        0x43t
        -0x38t
        0x28t
        -0x73t
    .end array-data

    :array_a0
    .array-data 1
        0x78t
        0xct
        0x16t
        -0x3t
        -0x13t
        -0x5ft
        0x3bt
        0x77t
        -0x63t
        -0x67t
        0x39t
        0x53t
        -0x5at
        0x7ft
        0x7ct
        -0x5bt
        0x78t
        -0x37t
        0x38t
        -0x5ft
        0x72t
        -0x57t
        0x42t
        0x4ct
        0x1ct
        0x71t
        0x5at
        -0x18t
        0x1bt
        -0x3ct
        0xft
        -0x29t
    .end array-data

    :array_b4
    .array-data 1
        -0x50t
        0x56t
        -0x1ft
        -0x22t
        -0x6t
        -0x4ct
        0x7t
        0x15t
        -0x7ct
        0x21t
        0x45t
        -0x7ct
        0x5t
        0x7dt
        0xbt
        -0x39t
        0x3at
        0x61t
        0x30t
        -0x7ft
        -0x41t
        0x11t
        0x52t
        0x59t
        0x5t
        0x49t
        0x64t
        -0x63t
        0x45t
        -0x7et
        -0x3ft
        0x3ct
    .end array-data

    :array_c8
    .array-data 1
        -0xdt
        -0x12t
        -0x34t
        0x48t
        -0x63t
        -0x15t
        0x4ct
        0x74t
        -0x77t
        0x2ft
        0x59t
        -0x15t
        0x7at
        -0x25t
        0x76t
        -0x70t
        0x63t
        -0x43t
        0x5ct
        0x35t
        0x4at
        -0x3ft
        0x32t
        -0x4at
        0x26t
        -0x5bt
        -0xct
        0x2bt
        0x36t
        0x3dt
        0x36t
        -0x44t
    .end array-data

    :array_dc
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
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2224
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.6::IWifiChip"

    const-string v1, "android.hardware.wifi@1.5::IWifiChip"

    const-string v2, "android.hardware.wifi@1.4::IWifiChip"

    const-string v3, "android.hardware.wifi@1.3::IWifiChip"

    const-string v4, "android.hardware.wifi@1.2::IWifiChip"

    const-string v5, "android.hardware.wifi@1.1::IWifiChip"

    const-string v6, "android.hardware.wifi@1.0::IWifiChip"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi@1.6::IWifiChip"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2291
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

    const-wide/16 v0, 0x0

    const-string p4, "android.hardware.wifi@1.4::IWifiChip"

    const-string v2, "android.hardware.wifi@1.2::IWifiChip"

    const-string v3, "android.hardware.wifi@1.1::IWifiChip"

    const-string v4, "android.hardware.wifi@1.3::IWifiChip"

    const-string v5, "android.hardware.wifi@1.6::IWifiChip"

    const-string v6, "android.hardware.wifi@1.5::IWifiChip"

    const/4 v7, 0x0

    const-string v8, "android.hardware.wifi@1.0::IWifiChip"

    packed-switch p1, :pswitch_data_4b4

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_524

    goto/16 :goto_4b2

    .line 3189
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->notifySyspropsChanged()V

    goto/16 :goto_4b2

    .line 3178
    :sswitch_23
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 3181
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3182
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3183
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 3168
    :sswitch_35
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3170
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->ping()V

    .line 3171
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3172
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 3155
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->setHALInstrumentation()V

    goto/16 :goto_4b2

    .line 3121
    :sswitch_4b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3124
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3126
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 3128
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 3129
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 3130
    invoke-virtual {p1, v2, v3, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3131
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_71
    if-ge v7, p2, :cond_91

    mul-int/lit8 v2, v7, 0x20

    int-to-long v2, v2

    .line 3135
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_89

    .line 3137
    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_89

    .line 3141
    invoke-virtual {p4, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    .line 3138
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3145
    :cond_91
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3147
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3149
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 3110
    :sswitch_9c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 3113
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3114
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 3098
    :sswitch_ae
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 3101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3102
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3103
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 3087
    :sswitch_c4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3090
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3091
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 3072
    :pswitch_d6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3074
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$31;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getSupportedRadioCombinationsMatrix(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getSupportedRadioCombinationsMatrixCallback;)V

    goto/16 :goto_4b2

    .line 3057
    :pswitch_e3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$30;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$30;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getAvailableModes_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getAvailableModes_1_6Callback;)V

    goto/16 :goto_4b2

    .line 3039
    :pswitch_f0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 3042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 3043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 3044
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$29;

    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$29;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->getUsableChannels_1_6(IIILcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$getUsableChannels_1_6Callback;)V

    goto/16 :goto_4b2

    .line 3023
    :pswitch_109
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 3026
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$28;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$28;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip;->createRttController_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$createRttController_1_6Callback;)V

    goto/16 :goto_4b2

    .line 3012
    :pswitch_11e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3014
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->triggerSubsystemRestart()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 3015
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3016
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3017
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2994
    :pswitch_130
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2999
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$27;

    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$27;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getUsableChannels(IIILcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getUsableChannelsCallback;)V

    goto/16 :goto_4b2

    .line 2974
    :pswitch_149
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p4, p1, [B

    const-wide/16 v2, 0x2

    .line 2978
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2981
    invoke-virtual {p2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2985
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2986
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2987
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2961
    :pswitch_167
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2963
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2965
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setCoexUnsafeChannels(Ljava/util/ArrayList;I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2966
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2967
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2948
    :pswitch_181
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2951
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2952
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2953
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2954
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2933
    :pswitch_19b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2935
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$26;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$26;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->createBridgedApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$createBridgedApIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2921
    :pswitch_1a8
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2923
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2924
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setMultiStaUseCase(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2925
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2926
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2927
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2909
    :pswitch_1be
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2912
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2913
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2914
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2894
    :pswitch_1d4
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2896
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$25;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$25;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getCapabilities_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getCapabilities_1_5Callback;)V

    goto/16 :goto_4b2

    .line 2878
    :pswitch_1e1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2880
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 2881
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$24;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->createRttController_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$createRttController_1_4Callback;)V

    goto/16 :goto_4b2

    .line 2866
    :pswitch_1f6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;

    move-result-object p1

    .line 2869
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->registerEventCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2870
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2871
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2855
    :pswitch_210
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2857
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->flushRingBufferToFile()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2858
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2859
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2843
    :pswitch_222
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2846
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->setLatencyMode(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2847
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2848
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2849
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2828
    :pswitch_238
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2830
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->getCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;)V

    goto/16 :goto_4b2

    .line 2816
    :pswitch_245
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;

    move-result-object p1

    .line 2819
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2820
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2821
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2804
    :pswitch_25f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2807
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2808
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2809
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2793
    :pswitch_275
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2795
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2796
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2797
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2781
    :pswitch_287
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2783
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2784
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2785
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2786
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2769
    :pswitch_29d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2772
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2773
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2774
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2754
    :pswitch_2b3
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2756
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    goto/16 :goto_4b2

    .line 2743
    :pswitch_2c0
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2745
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2746
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2747
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2731
    :pswitch_2d2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2734
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2735
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2736
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2716
    :pswitch_2e8
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2719
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2720
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2722
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2723
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2724
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2701
    :pswitch_30a
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2703
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    goto/16 :goto_4b2

    .line 2685
    :pswitch_317
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2687
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 2688
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$20;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    goto/16 :goto_4b2

    .line 2673
    :pswitch_32c
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2676
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2677
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2678
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2657
    :pswitch_342
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2659
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2660
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$19;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2642
    :pswitch_353
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2644
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    goto/16 :goto_4b2

    .line 2627
    :pswitch_360
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2629
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2615
    :pswitch_36d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2618
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2619
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2620
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2599
    :pswitch_383
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2602
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$16;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2584
    :pswitch_394
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2586
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    goto/16 :goto_4b2

    .line 2569
    :pswitch_3a1
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2571
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2557
    :pswitch_3ae
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2560
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2561
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2562
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2541
    :pswitch_3c4
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2544
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$13;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2526
    :pswitch_3d5
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2528
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    goto/16 :goto_4b2

    .line 2511
    :pswitch_3e2
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2513
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2499
    :pswitch_3ef
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2502
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2503
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2504
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_4b2

    .line 2483
    :pswitch_405
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2486
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2468
    :pswitch_416
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2470
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    goto/16 :goto_4b2

    .line 2453
    :pswitch_423
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2455
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    goto/16 :goto_4b2

    .line 2438
    :pswitch_430
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2440
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    goto/16 :goto_4b2

    .line 2423
    :pswitch_43d
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    goto :goto_4b2

    .line 2408
    :pswitch_449
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2410
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    goto :goto_4b2

    .line 2393
    :pswitch_455
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2395
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    goto :goto_4b2

    .line 2381
    :pswitch_461
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2384
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2385
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2386
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2387
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_4b2

    .line 2366
    :pswitch_476
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2368
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    goto :goto_4b2

    .line 2351
    :pswitch_482
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2353
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    goto :goto_4b2

    .line 2339
    :pswitch_48e
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object p1

    .line 2342
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2343
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2344
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_4b2

    .line 2324
    :pswitch_4a7
    invoke-virtual {p2, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2326
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    :goto_4b2
    return-void

    nop

    :pswitch_data_4b4
    .packed-switch 0x1
        :pswitch_4a7
        :pswitch_48e
        :pswitch_482
        :pswitch_476
        :pswitch_461
        :pswitch_455
        :pswitch_449
        :pswitch_43d
        :pswitch_430
        :pswitch_423
        :pswitch_416
        :pswitch_405
        :pswitch_3ef
        :pswitch_3e2
        :pswitch_3d5
        :pswitch_3c4
        :pswitch_3ae
        :pswitch_3a1
        :pswitch_394
        :pswitch_383
        :pswitch_36d
        :pswitch_360
        :pswitch_353
        :pswitch_342
        :pswitch_32c
        :pswitch_317
        :pswitch_30a
        :pswitch_2e8
        :pswitch_2d2
        :pswitch_2c0
        :pswitch_2b3
        :pswitch_29d
        :pswitch_287
        :pswitch_275
        :pswitch_25f
        :pswitch_245
        :pswitch_238
        :pswitch_222
        :pswitch_210
        :pswitch_1f6
        :pswitch_1e1
        :pswitch_1d4
        :pswitch_1be
        :pswitch_1a8
        :pswitch_19b
        :pswitch_181
        :pswitch_167
        :pswitch_149
        :pswitch_130
        :pswitch_11e
        :pswitch_109
        :pswitch_f0
        :pswitch_e3
        :pswitch_d6
    .end packed-switch

    :sswitch_data_524
    .sparse-switch
        0xf43484e -> :sswitch_c4
        0xf444247 -> :sswitch_ae
        0xf445343 -> :sswitch_9c
        0xf485348 -> :sswitch_4b
        0xf494e54 -> :sswitch_43
        0xf504e47 -> :sswitch_35
        0xf524546 -> :sswitch_23
        0xf535953 -> :sswitch_1b
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.6::IWifiChip"

    .line 2303
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

    .line 2310
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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
