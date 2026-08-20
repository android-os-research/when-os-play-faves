.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1320
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

    .line 1381
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1382
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1383
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1384
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

    .line 1352
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

    :array_54
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

    :array_68
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

    :array_7c
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

    :array_90
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

    .line 1328
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.4::IWifiChip"

    const-string v1, "android.hardware.wifi@1.3::IWifiChip"

    const-string v2, "android.hardware.wifi@1.2::IWifiChip"

    const-string v3, "android.hardware.wifi@1.1::IWifiChip"

    const-string v4, "android.hardware.wifi@1.0::IWifiChip"

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

    const-string p0, "android.hardware.wifi@1.4::IWifiChip"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1391
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

    const-string p4, "android.hardware.wifi@1.4::IWifiChip"

    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    const-string v2, "android.hardware.wifi@1.3::IWifiChip"

    const/4 v3, 0x0

    const-string v4, "android.hardware.wifi@1.0::IWifiChip"

    packed-switch p1, :pswitch_data_3a4

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3fa

    goto/16 :goto_3a3

    .line 2096
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3a3

    .line 2085
    :sswitch_1d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2088
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2089
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 2075
    :sswitch_2f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->ping()V

    .line 2078
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2079
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 2062
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->setHALInstrumentation()V

    goto/16 :goto_3a3

    .line 2028
    :sswitch_45
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2030
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2031
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2033
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2035
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 2036
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 2037
    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2038
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6b
    if-ge v3, p2, :cond_8b

    mul-int/lit8 v0, v3, 0x20

    int-to-long v0, v0

    .line 2042
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_83

    .line 2044
    array-length v4, v2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_83

    .line 2048
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 2045
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    const-wide/16 v0, 0x0

    .line 2052
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2054
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2056
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 2017
    :sswitch_98
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2020
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2021
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 2005
    :sswitch_aa
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2009
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2010
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2011
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1994
    :sswitch_c0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1997
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1998
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1978
    :pswitch_d2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 1981
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$24;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$24;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->createRttController_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$createRttController_1_4Callback;)V

    goto/16 :goto_3a3

    .line 1966
    :pswitch_e7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;

    move-result-object p1

    .line 1969
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip;->registerEventCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1970
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1971
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1972
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1955
    :pswitch_101
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->flushRingBufferToFile()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1958
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1959
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1943
    :pswitch_113
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1946
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->setLatencyMode(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1947
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1948
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1928
    :pswitch_129
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$23;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$23;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip;->getCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiChip$getCapabilities_1_3Callback;)V

    goto/16 :goto_3a3

    .line 1916
    :pswitch_136
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;

    move-result-object p1

    .line 1919
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1920
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1921
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1922
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1904
    :pswitch_150
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1907
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1908
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1909
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1910
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1893
    :pswitch_166
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1895
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1896
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1897
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1881
    :pswitch_178
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1884
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1885
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1886
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1869
    :pswitch_18e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1872
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1873
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1874
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1854
    :pswitch_1a4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1856
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    goto/16 :goto_3a3

    .line 1843
    :pswitch_1b1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1846
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1847
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1831
    :pswitch_1c3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1834
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1835
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1836
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1816
    :pswitch_1d9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1819
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1820
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1821
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1822
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1823
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1824
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1825
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1801
    :pswitch_1fb
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    goto/16 :goto_3a3

    .line 1785
    :pswitch_208
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 1788
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$20;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    goto/16 :goto_3a3

    .line 1773
    :pswitch_21d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1776
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1777
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1778
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1757
    :pswitch_233
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1760
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$19;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1742
    :pswitch_244
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    goto/16 :goto_3a3

    .line 1727
    :pswitch_251
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1729
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1715
    :pswitch_25e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1718
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1719
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1720
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1699
    :pswitch_274
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1702
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$16;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1684
    :pswitch_285
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    goto/16 :goto_3a3

    .line 1669
    :pswitch_292
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1671
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1657
    :pswitch_29f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1660
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1661
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1662
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1641
    :pswitch_2b5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1644
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$13;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1626
    :pswitch_2c6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    goto/16 :goto_3a3

    .line 1611
    :pswitch_2d3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1599
    :pswitch_2e0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1602
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1603
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1604
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3a3

    .line 1583
    :pswitch_2f6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1586
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1568
    :pswitch_307
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    goto/16 :goto_3a3

    .line 1553
    :pswitch_314
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    goto/16 :goto_3a3

    .line 1538
    :pswitch_321
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    goto/16 :goto_3a3

    .line 1523
    :pswitch_32e
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    goto :goto_3a3

    .line 1508
    :pswitch_33a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    goto :goto_3a3

    .line 1493
    :pswitch_346
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    goto :goto_3a3

    .line 1481
    :pswitch_352
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1484
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1485
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1486
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3a3

    .line 1466
    :pswitch_367
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    goto :goto_3a3

    .line 1451
    :pswitch_373
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    goto :goto_3a3

    .line 1439
    :pswitch_37f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object p1

    .line 1442
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1443
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1444
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3a3

    .line 1424
    :pswitch_398
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    :goto_3a3
    return-void

    :pswitch_data_3a4
    .packed-switch 0x1
        :pswitch_398
        :pswitch_37f
        :pswitch_373
        :pswitch_367
        :pswitch_352
        :pswitch_346
        :pswitch_33a
        :pswitch_32e
        :pswitch_321
        :pswitch_314
        :pswitch_307
        :pswitch_2f6
        :pswitch_2e0
        :pswitch_2d3
        :pswitch_2c6
        :pswitch_2b5
        :pswitch_29f
        :pswitch_292
        :pswitch_285
        :pswitch_274
        :pswitch_25e
        :pswitch_251
        :pswitch_244
        :pswitch_233
        :pswitch_21d
        :pswitch_208
        :pswitch_1fb
        :pswitch_1d9
        :pswitch_1c3
        :pswitch_1b1
        :pswitch_1a4
        :pswitch_18e
        :pswitch_178
        :pswitch_166
        :pswitch_150
        :pswitch_136
        :pswitch_129
        :pswitch_113
        :pswitch_101
        :pswitch_e7
        :pswitch_d2
    .end packed-switch

    :sswitch_data_3fa
    .sparse-switch
        0xf43484e -> :sswitch_c0
        0xf444247 -> :sswitch_aa
        0xf445343 -> :sswitch_98
        0xf485348 -> :sswitch_45
        0xf494e54 -> :sswitch_3d
        0xf504e47 -> :sswitch_2f
        0xf524546 -> :sswitch_1d
        0xf535953 -> :sswitch_15
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.4::IWifiChip"

    .line 1403
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

    .line 1410
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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
