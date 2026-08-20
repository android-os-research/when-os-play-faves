.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;
.super Landroid/os/HwBinder;
.source "IWifiChip.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1422
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

    .line 1479
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1480
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1481
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1482
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

    .line 1452
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

    :array_44
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

    :array_58
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

    .line 1430
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    const-string v1, "android.hardware.wifi@1.1::IWifiChip"

    const-string v2, "android.hardware.wifi@1.0::IWifiChip"

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

    const-string p0, "android.hardware.wifi@1.2::IWifiChip"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1489
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

    const/4 v1, 0x0

    const-string v2, "android.hardware.wifi@1.0::IWifiChip"

    packed-switch p1, :pswitch_data_33c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_388

    goto/16 :goto_33b

    .line 2128
    :sswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->notifySyspropsChanged()V

    goto/16 :goto_33b

    .line 2117
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2120
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2121
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2107
    :sswitch_2b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->ping()V

    .line 2110
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2111
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2094
    :sswitch_39
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->setHALInstrumentation()V

    goto/16 :goto_33b

    .line 2060
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2063
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2065
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2067
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 2068
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 2069
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2070
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v1, p2, :cond_87

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 2074
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_7f

    .line 2076
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 2080
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 2077
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    const-wide/16 v0, 0x0

    .line 2084
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2086
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2049
    :sswitch_94
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2052
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2053
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2037
    :sswitch_a6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2041
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2042
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2043
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2026
    :sswitch_bc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2029
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2030
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2031
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2014
    :pswitch_ce
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;

    move-result-object p1

    .line 2017
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2018
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2019
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 2002
    :pswitch_e8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2005
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip;->selectTxPowerScenario_1_2(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2006
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2007
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2008
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1991
    :pswitch_fe
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1993
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->resetTxPowerScenario()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1994
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1995
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1996
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1979
    :pswitch_110
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1982
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_1/IWifiChip;->selectTxPowerScenario(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1983
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1984
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1985
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1967
    :pswitch_126
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1970
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->enableDebugErrorAlerts(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1971
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1972
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1973
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1952
    :pswitch_13c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1954
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$22;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$22;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugHostWakeReasonStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugHostWakeReasonStatsCallback;)V

    goto/16 :goto_33b

    .line 1941
    :pswitch_149
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->stopLoggingToDebugRingBuffer()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1944
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1945
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1929
    :pswitch_15b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1932
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1933
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1934
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1914
    :pswitch_171
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1917
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1918
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1920
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1921
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1922
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1899
    :pswitch_193
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$21;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$21;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getDebugRingBuffersStatus(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getDebugRingBuffersStatusCallback;)V

    goto/16 :goto_33b

    .line 1883
    :pswitch_1a0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;

    move-result-object p1

    .line 1886
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$20;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$20;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createRttControllerCallback;)V

    goto/16 :goto_33b

    .line 1871
    :pswitch_1b5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1874
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1875
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1876
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1877
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1855
    :pswitch_1cb
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1858
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$19;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$19;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceCallback;)V

    goto/16 :goto_33b

    .line 1840
    :pswitch_1dc
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1842
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$18;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$18;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getStaIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getStaIfaceNamesCallback;)V

    goto/16 :goto_33b

    .line 1825
    :pswitch_1e9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1827
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$17;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$17;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createStaIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createStaIfaceCallback;)V

    goto/16 :goto_33b

    .line 1813
    :pswitch_1f6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1816
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1817
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1818
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1797
    :pswitch_20c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1800
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$16;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceCallback;)V

    goto/16 :goto_33b

    .line 1782
    :pswitch_21d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$15;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getP2pIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getP2pIfaceNamesCallback;)V

    goto/16 :goto_33b

    .line 1767
    :pswitch_22a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$14;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createP2pIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createP2pIfaceCallback;)V

    goto/16 :goto_33b

    .line 1755
    :pswitch_237
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1758
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1759
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1760
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1739
    :pswitch_24d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1742
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$13;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceCallback;)V

    goto/16 :goto_33b

    .line 1724
    :pswitch_25e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getNanIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getNanIfaceNamesCallback;)V

    goto/16 :goto_33b

    .line 1709
    :pswitch_26b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createNanIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createNanIfaceCallback;)V

    goto/16 :goto_33b

    .line 1697
    :pswitch_278
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1700
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->removeApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1701
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1702
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_33b

    .line 1681
    :pswitch_28e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1684
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$10;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIface(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceCallback;)V

    goto/16 :goto_33b

    .line 1666
    :pswitch_29f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getApIfaceNames(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getApIfaceNamesCallback;)V

    goto/16 :goto_33b

    .line 1651
    :pswitch_2ac
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->createApIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$createApIfaceCallback;)V

    goto/16 :goto_33b

    .line 1636
    :pswitch_2b9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestFirmwareDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestFirmwareDebugDumpCallback;)V

    goto/16 :goto_33b

    .line 1621
    :pswitch_2c6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestDriverDebugDump(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestDriverDebugDumpCallback;)V

    goto :goto_33b

    .line 1606
    :pswitch_2d2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->requestChipDebugInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$requestChipDebugInfoCallback;)V

    goto :goto_33b

    .line 1591
    :pswitch_2de
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1593
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getMode(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getModeCallback;)V

    goto :goto_33b

    .line 1579
    :pswitch_2ea
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1582
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->configureChip(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1583
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1584
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_33b

    .line 1564
    :pswitch_2ff
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getAvailableModes(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getAvailableModesCallback;)V

    goto :goto_33b

    .line 1549
    :pswitch_30b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getCapabilitiesCallback;)V

    goto :goto_33b

    .line 1537
    :pswitch_317
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;

    move-result-object p1

    .line 1540
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChipEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1541
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1542
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_33b

    .line 1522
    :pswitch_330
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip;->getId(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$getIdCallback;)V

    :goto_33b
    return-void

    :pswitch_data_33c
    .packed-switch 0x1
        :pswitch_330
        :pswitch_317
        :pswitch_30b
        :pswitch_2ff
        :pswitch_2ea
        :pswitch_2de
        :pswitch_2d2
        :pswitch_2c6
        :pswitch_2b9
        :pswitch_2ac
        :pswitch_29f
        :pswitch_28e
        :pswitch_278
        :pswitch_26b
        :pswitch_25e
        :pswitch_24d
        :pswitch_237
        :pswitch_22a
        :pswitch_21d
        :pswitch_20c
        :pswitch_1f6
        :pswitch_1e9
        :pswitch_1dc
        :pswitch_1cb
        :pswitch_1b5
        :pswitch_1a0
        :pswitch_193
        :pswitch_171
        :pswitch_15b
        :pswitch_149
        :pswitch_13c
        :pswitch_126
        :pswitch_110
        :pswitch_fe
        :pswitch_e8
        :pswitch_ce
    .end packed-switch

    :sswitch_data_388
    .sparse-switch
        0xf43484e -> :sswitch_bc
        0xf444247 -> :sswitch_a6
        0xf445343 -> :sswitch_94
        0xf485348 -> :sswitch_41
        0xf494e54 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.2::IWifiChip"

    .line 1501
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

    .line 1508
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChip$Stub;->interfaceDescriptor()Ljava/lang/String;

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
