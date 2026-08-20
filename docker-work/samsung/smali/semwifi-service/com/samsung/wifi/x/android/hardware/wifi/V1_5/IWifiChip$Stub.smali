.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2206
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

    .line 2269
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 2270
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 2271
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 2272
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

    .line 2239
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_48

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_5c

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_70

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_84

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_98

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_ac

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_c0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_48
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

    :array_5c
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

    :array_70
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

    :array_84
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

    :array_98
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

    :array_ac
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

    :array_c0
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2214
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.5::IWifiChip"

    const-string v1, "android.hardware.wifi@1.4::IWifiChip"

    const-string v2, "android.hardware.wifi@1.3::IWifiChip"

    const-string v3, "android.hardware.wifi@1.2::IWifiChip"

    const-string v4, "android.hardware.wifi@1.1::IWifiChip"

    const-string v5, "android.hardware.wifi@1.0::IWifiChip"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi@1.5::IWifiChip"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 2279
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 13
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

    const-string v5, "android.hardware.wifi@1.5::IWifiChip"

    const/4 v6, 0x0

    const-string v7, "android.hardware.wifi@1.0::IWifiChip"

    packed-switch p1, :pswitch_data_46a

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_4d2

    goto/16 :goto_468

    .line 3113
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->notifySyspropsChanged()V

    goto/16 :goto_468

    .line 3102
    :sswitch_21
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3104
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 3105
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3106
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 3092
    :sswitch_33
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3094
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->ping()V

    .line 3095
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 3079
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->setHALInstrumentation()V

    goto/16 :goto_468

    .line 3045
    :sswitch_49
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3047
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3048
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3050
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 3052
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 3053
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 3054
    invoke-virtual {p1, v2, v3, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 3055
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {p4, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6f
    if-ge v6, p2, :cond_8f

    mul-int/lit8 v2, v6, 0x20

    int-to-long v2, v2

    .line 3059
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_87

    .line 3061
    array-length v5, v4

    const/16 v7, 0x20

    if-ne v5, v7, :cond_87

    .line 3065
    invoke-virtual {p4, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 3062
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3069
    :cond_8f
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 3071
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 3073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 3034
    :sswitch_9a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 3037
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3038
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 3022
    :sswitch_ac
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3024
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 3025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 3026
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 3027
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 3011
    :sswitch_c2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3013
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 3014
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3015
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 3016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 3000
    :pswitch_d4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 3002
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->triggerSubsystemRestart()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 3003
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 3004
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 3005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2982
    :pswitch_e6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2987
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$27;

    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$27;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getUsableChannels(IIILcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getUsableChannelsCallback;)V

    goto/16 :goto_468

    .line 2962
    :pswitch_ff
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p4, p1, [B

    const-wide/16 v2, 0x2

    .line 2966
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2969
    invoke-virtual {p2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2973
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2974
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2975
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2949
    :pswitch_11d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2951
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$CoexUnsafeChannel;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2952
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2953
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setCoexUnsafeChannels(Ljava/util/ArrayList;I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2954
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2955
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2956
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2936
    :pswitch_137
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 2940
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2941
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2942
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2943
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2921
    :pswitch_151
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2923
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$26;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$26;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->createBridgedApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$createBridgedApIfaceCallback;)V

    goto/16 :goto_468

    .line 2909
    :pswitch_15e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 2912
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setMultiStaUseCase(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2913
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2914
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2897
    :pswitch_174
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2899
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2900
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2901
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2902
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2882
    :pswitch_18a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2884
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$25;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$25;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip;->getCapabilities_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$getCapabilities_1_5Callback;)V

    goto/16 :goto_468

    .line 2866
    :pswitch_197
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 2869
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->createRttController_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$createRttController_1_4Callback;)V

    goto/16 :goto_468

    .line 2854
    :pswitch_1ac
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;

    move-result-object p1

    .line 2857
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->registerEventCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2858
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2859
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2843
    :pswitch_1c6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2845
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->flushRingBufferToFile()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2846
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2847
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2831
    :pswitch_1d8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2834
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->setLatencyMode(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2835
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2836
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2816
    :pswitch_1ee
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2818
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->getCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;)V

    goto/16 :goto_468

    .line 2804
    :pswitch_1fb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;

    move-result-object p1

    .line 2807
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2808
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2809
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2792
    :pswitch_215
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2795
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2796
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2797
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2781
    :pswitch_22b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2783
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2784
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2785
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2786
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2769
    :pswitch_23d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2772
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2773
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2774
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2757
    :pswitch_253
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2760
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2761
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2762
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2742
    :pswitch_269
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2744
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    goto/16 :goto_468

    .line 2731
    :pswitch_276
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2733
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2734
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2735
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2719
    :pswitch_288
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2722
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2723
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2724
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2704
    :pswitch_29e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2706
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 2708
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2709
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 2710
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2711
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2712
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2689
    :pswitch_2c0
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2691
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    goto/16 :goto_468

    .line 2673
    :pswitch_2cd
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 2676
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$20;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    goto/16 :goto_468

    .line 2661
    :pswitch_2e2
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2664
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2665
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2666
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2645
    :pswitch_2f8
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2648
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$19;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    goto/16 :goto_468

    .line 2630
    :pswitch_309
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2632
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    goto/16 :goto_468

    .line 2615
    :pswitch_316
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2617
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    goto/16 :goto_468

    .line 2603
    :pswitch_323
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2606
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2607
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2608
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2587
    :pswitch_339
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2589
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2590
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$16;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    goto/16 :goto_468

    .line 2572
    :pswitch_34a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2574
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    goto/16 :goto_468

    .line 2557
    :pswitch_357
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2559
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    goto/16 :goto_468

    .line 2545
    :pswitch_364
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2548
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2549
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2550
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2529
    :pswitch_37a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2532
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$13;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    goto/16 :goto_468

    .line 2514
    :pswitch_38b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2516
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    goto/16 :goto_468

    .line 2499
    :pswitch_398
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2501
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto/16 :goto_468

    .line 2487
    :pswitch_3a5
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2490
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2491
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2492
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2493
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_468

    .line 2471
    :pswitch_3bb
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2474
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    goto/16 :goto_468

    .line 2456
    :pswitch_3cc
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2458
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    goto/16 :goto_468

    .line 2441
    :pswitch_3d9
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2443
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    goto/16 :goto_468

    .line 2426
    :pswitch_3e6
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2428
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    goto/16 :goto_468

    .line 2411
    :pswitch_3f3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2413
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    goto :goto_468

    .line 2396
    :pswitch_3ff
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    goto :goto_468

    .line 2381
    :pswitch_40b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2383
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    goto :goto_468

    .line 2369
    :pswitch_417
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2371
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2372
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2373
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2374
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_468

    .line 2354
    :pswitch_42c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2356
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    goto :goto_468

    .line 2339
    :pswitch_438
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2341
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    goto :goto_468

    .line 2327
    :pswitch_444
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object p1

    .line 2330
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2331
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2332
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2333
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_468

    .line 2312
    :pswitch_45d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2314
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    :goto_468
    return-void

    nop

    :pswitch_data_46a
    .packed-switch 0x1
        :pswitch_45d
        :pswitch_444
        :pswitch_438
        :pswitch_42c
        :pswitch_417
        :pswitch_40b
        :pswitch_3ff
        :pswitch_3f3
        :pswitch_3e6
        :pswitch_3d9
        :pswitch_3cc
        :pswitch_3bb
        :pswitch_3a5
        :pswitch_398
        :pswitch_38b
        :pswitch_37a
        :pswitch_364
        :pswitch_357
        :pswitch_34a
        :pswitch_339
        :pswitch_323
        :pswitch_316
        :pswitch_309
        :pswitch_2f8
        :pswitch_2e2
        :pswitch_2cd
        :pswitch_2c0
        :pswitch_29e
        :pswitch_288
        :pswitch_276
        :pswitch_269
        :pswitch_253
        :pswitch_23d
        :pswitch_22b
        :pswitch_215
        :pswitch_1fb
        :pswitch_1ee
        :pswitch_1d8
        :pswitch_1c6
        :pswitch_1ac
        :pswitch_197
        :pswitch_18a
        :pswitch_174
        :pswitch_15e
        :pswitch_151
        :pswitch_137
        :pswitch_11d
        :pswitch_ff
        :pswitch_e6
        :pswitch_d4
    .end packed-switch

    :sswitch_data_4d2
    .sparse-switch
        0xf43484e -> :sswitch_c2
        0xf444247 -> :sswitch_ac
        0xf445343 -> :sswitch_9a
        0xf485348 -> :sswitch_49
        0xf494e54 -> :sswitch_41
        0xf504e47 -> :sswitch_33
        0xf524546 -> :sswitch_21
        0xf535953 -> :sswitch_19
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.5::IWifiChip"

    .line 2291
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

    .line 2298
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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
