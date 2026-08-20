.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1490
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

    .line 1549
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1550
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1551
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1552
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

    .line 1521
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

    :array_4c
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

    :array_60
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

    :array_74
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

    .line 1498
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.3::IWifiChip"

    const-string v1, "android.hardware.wifi@1.2::IWifiChip"

    const-string v2, "android.hardware.wifi@1.1::IWifiChip"

    const-string v3, "android.hardware.wifi@1.0::IWifiChip"

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

    const-string p0, "android.hardware.wifi@1.3::IWifiChip"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1559
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "android.hardware.wifi@1.2::IWifiChip"

    const-string v0, "android.hardware.wifi@1.1::IWifiChip"

    const-string v1, "android.hardware.wifi@1.3::IWifiChip"

    const/4 v2, 0x0

    const-string v3, "android.hardware.wifi@1.0::IWifiChip"

    packed-switch p1, :pswitch_data_374

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3c6

    goto/16 :goto_372

    .line 2236
    :sswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2238
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->notifySyspropsChanged()V

    goto/16 :goto_372

    .line 2225
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2228
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2229
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2230
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2215
    :sswitch_2d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->ping()V

    .line 2218
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2202
    :sswitch_3b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->setHALInstrumentation()V

    goto/16 :goto_372

    .line 2168
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2171
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2173
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2175
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 2176
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2177
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2178
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge v2, p2, :cond_89

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 2182
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_81

    .line 2184
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_81

    .line 2188
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 2185
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    const-wide/16 v0, 0x0

    .line 2192
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2194
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2157
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2160
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2161
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2145
    :sswitch_a8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2149
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2150
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2134
    :sswitch_be
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2137
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2138
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2123
    :pswitch_d0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2125
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->flushRingBufferToFile()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2126
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2127
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2128
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2111
    :pswitch_e2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2114
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->setLatencyMode(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2115
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2116
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2117
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2096
    :pswitch_f8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->getCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;)V

    goto/16 :goto_372

    .line 2084
    :pswitch_105
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;

    move-result-object p1

    .line 2087
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2088
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2089
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2072
    :pswitch_11f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2075
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2076
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2077
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2061
    :pswitch_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2064
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2065
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2049
    :pswitch_147
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2052
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2053
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2054
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2037
    :pswitch_15d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2040
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2041
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2042
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 2022
    :pswitch_173
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    goto/16 :goto_372

    .line 2011
    :pswitch_180
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2014
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2015
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1999
    :pswitch_192
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 2002
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2003
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2004
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1984
    :pswitch_1a8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1988
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1990
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1991
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1992
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1969
    :pswitch_1ca
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1971
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    goto/16 :goto_372

    .line 1953
    :pswitch_1d7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 1956
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$20;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    goto/16 :goto_372

    .line 1941
    :pswitch_1ec
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1944
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1945
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1946
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1947
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1925
    :pswitch_202
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1928
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$19;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    goto/16 :goto_372

    .line 1910
    :pswitch_213
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    goto/16 :goto_372

    .line 1895
    :pswitch_220
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    goto/16 :goto_372

    .line 1883
    :pswitch_22d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1886
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1887
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1888
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1867
    :pswitch_243
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1870
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$16;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    goto/16 :goto_372

    .line 1852
    :pswitch_254
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    goto/16 :goto_372

    .line 1837
    :pswitch_261
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    goto/16 :goto_372

    .line 1825
    :pswitch_26e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1828
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1829
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1830
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1809
    :pswitch_284
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1812
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$13;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    goto/16 :goto_372

    .line 1794
    :pswitch_295
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1796
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    goto/16 :goto_372

    .line 1779
    :pswitch_2a2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto/16 :goto_372

    .line 1767
    :pswitch_2af
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1770
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1771
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1772
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_372

    .line 1751
    :pswitch_2c5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1754
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    goto/16 :goto_372

    .line 1736
    :pswitch_2d6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1738
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    goto/16 :goto_372

    .line 1721
    :pswitch_2e3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    goto/16 :goto_372

    .line 1706
    :pswitch_2f0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    goto/16 :goto_372

    .line 1691
    :pswitch_2fd
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    goto :goto_372

    .line 1676
    :pswitch_309
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    goto :goto_372

    .line 1661
    :pswitch_315
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    goto :goto_372

    .line 1649
    :pswitch_321
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1652
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1653
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1654
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_372

    .line 1634
    :pswitch_336
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    goto :goto_372

    .line 1619
    :pswitch_342
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    goto :goto_372

    .line 1607
    :pswitch_34e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object p1

    .line 1610
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1611
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1612
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_372

    .line 1592
    :pswitch_367
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    :goto_372
    return-void

    nop

    :pswitch_data_374
    .packed-switch 0x1
        :pswitch_367
        :pswitch_34e
        :pswitch_342
        :pswitch_336
        :pswitch_321
        :pswitch_315
        :pswitch_309
        :pswitch_2fd
        :pswitch_2f0
        :pswitch_2e3
        :pswitch_2d6
        :pswitch_2c5
        :pswitch_2af
        :pswitch_2a2
        :pswitch_295
        :pswitch_284
        :pswitch_26e
        :pswitch_261
        :pswitch_254
        :pswitch_243
        :pswitch_22d
        :pswitch_220
        :pswitch_213
        :pswitch_202
        :pswitch_1ec
        :pswitch_1d7
        :pswitch_1ca
        :pswitch_1a8
        :pswitch_192
        :pswitch_180
        :pswitch_173
        :pswitch_15d
        :pswitch_147
        :pswitch_135
        :pswitch_11f
        :pswitch_105
        :pswitch_f8
        :pswitch_e2
        :pswitch_d0
    .end packed-switch

    :sswitch_data_3c6
    .sparse-switch
        0xf43484e -> :sswitch_be
        0xf444247 -> :sswitch_a8
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf504e47 -> :sswitch_2d
        0xf524546 -> :sswitch_1b
        0xf535953 -> :sswitch_13
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.3::IWifiChip"

    .line 1571
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

    .line 1578
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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
