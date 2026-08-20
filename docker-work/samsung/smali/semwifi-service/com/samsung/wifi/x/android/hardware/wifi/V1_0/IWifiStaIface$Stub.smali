.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1663
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

    .line 1718
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1719
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1720
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1721
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

    .line 1692
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
        0x3bt
        -0x80t
        -0x6dt
        -0x2dt
        -0x62t
        -0xft
        -0x1ft
        0xet
        0x43t
        -0x3bt
        0x53t
        -0x76t
        -0x5t
        -0xbt
        -0x1t
        0x6et
        0x39t
        -0x48t
        -0x28t
        0x16t
        -0x72t
        -0x45t
        -0x1ft
        -0x67t
        -0x73t
        -0x67t
        0x3et
        -0x77t
        -0x1et
        0x5ft
        0x14t
        -0x5bt
    .end array-data

    :array_3c
    .array-data 1
        0x6bt
        -0x66t
        -0x2ct
        0x3at
        0x5et
        -0x5t
        -0x1at
        -0x36t
        0x21t
        0x4ft
        0x75t
        0x1et
        0x22t
        -0x32t
        0x43t
        -0x31t
        0x5ct
        -0x2ct
        -0x2bt
        -0x2bt
        -0xet
        -0x35t
        -0x58t
        0xft
        0x24t
        -0x34t
        -0x2dt
        0x75t
        0x5at
        0x72t
        0x40t
        0x1ct
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

    .line 1671
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

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

    const-string p0, "android.hardware.wifi@1.0::IWifiStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1728
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

    const-string p4, "android.hardware.wifi@1.0::IWifiIface"

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "android.hardware.wifi@1.0::IWifiStaIface"

    packed-switch p1, :pswitch_data_2d4

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_30a

    goto/16 :goto_2d2

    .line 2227
    :sswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2d2

    .line 2216
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2218
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 2219
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2220
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2221
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2206
    :sswitch_2b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->ping()V

    .line 2209
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2210
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2193
    :sswitch_39
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_2d2

    .line 2159
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2162
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2164
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2166
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v3, 0x8

    .line 2167
    invoke-virtual {p1, v3, v4, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 2168
    invoke-virtual {p1, v3, v4, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2169
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v3, p2, 0x20

    invoke-direct {p4, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v2, p2, :cond_87

    mul-int/lit8 v3, v2, 0x20

    int-to-long v3, v3

    .line 2173
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_7f

    .line 2175
    array-length v6, v5

    const/16 v7, 0x20

    if-ne v6, v7, :cond_7f

    .line 2179
    invoke-virtual {p4, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 2176
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2183
    :cond_87
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2185
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2148
    :sswitch_92
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 2151
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2152
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2136
    :sswitch_a4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 2139
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 2140
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2141
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2125
    :sswitch_ba
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 2128
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2129
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2110
    :pswitch_cc
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    goto/16 :goto_2d2

    .line 2095
    :pswitch_d9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    goto/16 :goto_2d2

    .line 2084
    :pswitch_e6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2086
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2087
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2088
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2089
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2064
    :pswitch_f8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p4, p1, [B

    const-wide/16 v3, 0x3

    .line 2068
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 2071
    invoke-virtual {p2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2075
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2076
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2077
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2052
    :pswitch_116
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 2055
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2056
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2057
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2019
    :pswitch_12c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 2022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v5

    .line 2023
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v6

    const/4 p1, 0x6

    new-array v7, p1, [B

    const-wide/16 v8, 0x6

    .line 2026
    invoke-virtual {p2, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 2029
    invoke-virtual {p4, v0, v1, v7, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array p4, p1, [B

    .line 2035
    invoke-virtual {p2, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 2038
    invoke-virtual {v3, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 2042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object v3, p0

    move-object v8, p4

    .line 2043
    invoke-interface/range {v3 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2044
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2045
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2046
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 2007
    :pswitch_165
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 2010
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 2011
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2012
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1995
    :pswitch_17b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1998
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1999
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2000
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1982
    :pswitch_191
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1984
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1985
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1986
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1987
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1988
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1989
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1967
    :pswitch_1ab
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1969
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    goto/16 :goto_2d2

    .line 1955
    :pswitch_1b8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1958
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1959
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1960
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1941
    :pswitch_1ce
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1946
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1947
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1948
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1926
    :pswitch_1ec
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1928
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    goto/16 :goto_2d2

    .line 1915
    :pswitch_1f9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1917
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1918
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1919
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1903
    :pswitch_20b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1906
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1907
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1908
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1909
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1891
    :pswitch_221
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1894
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1895
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1896
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1877
    :pswitch_237
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1880
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1881
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1882
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1883
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1884
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d2

    .line 1861
    :pswitch_255
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1864
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$6;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    goto :goto_2d2

    .line 1846
    :pswitch_265
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    goto :goto_2d2

    .line 1833
    :pswitch_271
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1837
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1838
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1839
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1840
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2d2

    .line 1818
    :pswitch_28a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    goto :goto_2d2

    .line 1803
    :pswitch_296
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    goto :goto_2d2

    .line 1791
    :pswitch_2a2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object p1

    .line 1794
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1795
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1796
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2d2

    .line 1776
    :pswitch_2bb
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_2d2

    .line 1761
    :pswitch_2c7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_2d2
    return-void

    nop

    :pswitch_data_2d4
    .packed-switch 0x1
        :pswitch_2c7
        :pswitch_2bb
        :pswitch_2a2
        :pswitch_296
        :pswitch_28a
        :pswitch_271
        :pswitch_265
        :pswitch_255
        :pswitch_237
        :pswitch_221
        :pswitch_20b
        :pswitch_1f9
        :pswitch_1ec
        :pswitch_1ce
        :pswitch_1b8
        :pswitch_1ab
        :pswitch_191
        :pswitch_17b
        :pswitch_165
        :pswitch_12c
        :pswitch_116
        :pswitch_f8
        :pswitch_e6
        :pswitch_d9
        :pswitch_cc
    .end packed-switch

    :sswitch_data_30a
    .sparse-switch
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
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

    const-string v0, "android.hardware.wifi@1.0::IWifiStaIface"

    .line 1740
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

    .line 1747
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
