.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1139
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

    .line 1198
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1199
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1200
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1201
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

    .line 1170
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
        0x57t
        0x51t
        -0xet
        0x30t
        -0x18t
        0x6at
        0x36t
        0x11t
        0x1et
        0x7ct
        0x5bt
        -0x67t
        0x55t
        0x77t
        -0x35t
        -0x8t
        -0x63t
        -0x73t
        -0x9t
        0x6ct
        -0x72t
        0x6ct
        0x76t
        0x41t
        0x19t
        -0x6ft
        -0x68t
        -0xdt
        -0x25t
        0x3at
        -0x6dt
        -0x9t
    .end array-data

    :array_4c
    .array-data 1
        -0x1t
        0x5dt
        -0x28t
        0x21t
        -0x3et
        -0x39t
        -0x57t
        -0x39t
        -0x7at
        0x7t
        0x15t
        -0x64t
        0x4dt
        0x78t
        -0x77t
        0x60t
        -0x49t
        0x25t
        0x48t
        0x72t
        0x63t
        -0x3ct
        -0x63t
        -0x6bt
        0x6ct
        -0x5bt
        -0x6t
        0x3dt
        0x37t
        0x0t
        -0x75t
        0x45t
    .end array-data

    :array_60
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

    :array_74
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

    .line 1147
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.3::IWifiStaIface"

    const-string v1, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiIface"

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

    const-string p0, "android.hardware.wifi@1.3::IWifiStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1208
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

    const-string p4, "android.hardware.wifi@1.3::IWifiStaIface"

    const-string v0, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    const-wide/16 v2, 0x6

    const-wide/16 v4, 0x0

    const/4 v6, 0x6

    const-string v7, "android.hardware.wifi@1.0::IWifiStaIface"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_31c

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_35a

    goto/16 :goto_31b

    .line 1786
    :sswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_31b

    .line 1775
    :sswitch_20
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1778
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1779
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1765
    :sswitch_32
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->ping()V

    .line 1768
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1769
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1752
    :sswitch_40
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_31b

    .line 1718
    :sswitch_48
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1721
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1723
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1725
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1726
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1727
    invoke-virtual {p1, v0, v1, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1728
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6e
    if-ge v8, p2, :cond_8e

    mul-int/lit8 v0, v8, 0x20

    int-to-long v0, v0

    .line 1732
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_86

    .line 1734
    array-length v3, v2

    const/16 v6, 0x20

    if-ne v3, v6, :cond_86

    .line 1738
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 1735
    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1742
    :cond_8e
    invoke-virtual {p1, v4, v5, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1744
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1707
    :sswitch_99
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1710
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1711
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1695
    :sswitch_ab
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1699
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1700
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1701
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1684
    :sswitch_c1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1687
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1688
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1655
    :pswitch_d3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1657
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$13;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getFactoryMacAddressCallback;)V

    goto/16 :goto_31b

    .line 1640
    :pswitch_e0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$12;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V

    goto/16 :goto_31b

    .line 1620
    :pswitch_ed
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1624
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1627
    invoke-virtual {p2, v4, v5, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1631
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1632
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1633
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1634
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1605
    :pswitch_108
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    goto/16 :goto_31b

    .line 1590
    :pswitch_115
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    goto/16 :goto_31b

    .line 1575
    :pswitch_122
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    goto/16 :goto_31b

    .line 1564
    :pswitch_12f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1567
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1568
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1544
    :pswitch_141
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p4, p1, [B

    const-wide/16 v0, 0x3

    .line 1548
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1551
    invoke-virtual {p2, v4, v5, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1555
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1556
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1557
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1558
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1532
    :pswitch_15f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1535
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1536
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1537
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1499
    :pswitch_175
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1503
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p4

    new-array v7, v6, [B

    .line 1506
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1509
    invoke-virtual {v0, v4, v5, v7, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v9, v6, [B

    .line 1515
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1518
    invoke-virtual {v0, v4, v5, v9, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-object v2, p1

    move v3, p4

    move-object v4, v7

    move-object v5, v9

    .line 1523
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1524
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1525
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1487
    :pswitch_1ae
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1490
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1491
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1492
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1493
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1475
    :pswitch_1c4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1478
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1479
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1480
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1462
    :pswitch_1da
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1465
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1466
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1467
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1468
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1447
    :pswitch_1f4
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    goto/16 :goto_31b

    .line 1435
    :pswitch_201
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1438
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1439
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1440
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1421
    :pswitch_217
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1426
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1427
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1406
    :pswitch_235
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    goto/16 :goto_31b

    .line 1395
    :pswitch_242
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1398
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1399
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1383
    :pswitch_254
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1386
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1387
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1388
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1389
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1371
    :pswitch_26a
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1374
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1375
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1376
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1357
    :pswitch_280
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1360
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1361
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1362
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1363
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_31b

    .line 1341
    :pswitch_29e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1344
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$6;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    goto :goto_31b

    .line 1326
    :pswitch_2ae
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    goto :goto_31b

    .line 1313
    :pswitch_2ba
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1317
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1318
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1319
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1320
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_31b

    .line 1298
    :pswitch_2d3
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    goto :goto_31b

    .line 1283
    :pswitch_2df
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    goto :goto_31b

    .line 1271
    :pswitch_2eb
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object p1

    .line 1274
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1275
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1276
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_31b

    .line 1256
    :pswitch_304
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_31b

    .line 1241
    :pswitch_310
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_31b
    return-void

    :pswitch_data_31c
    .packed-switch 0x1
        :pswitch_310
        :pswitch_304
        :pswitch_2eb
        :pswitch_2df
        :pswitch_2d3
        :pswitch_2ba
        :pswitch_2ae
        :pswitch_29e
        :pswitch_280
        :pswitch_26a
        :pswitch_254
        :pswitch_242
        :pswitch_235
        :pswitch_217
        :pswitch_201
        :pswitch_1f4
        :pswitch_1da
        :pswitch_1c4
        :pswitch_1ae
        :pswitch_175
        :pswitch_15f
        :pswitch_141
        :pswitch_12f
        :pswitch_122
        :pswitch_115
        :pswitch_108
        :pswitch_ed
        :pswitch_e0
        :pswitch_d3
    .end packed-switch

    :sswitch_data_35a
    .sparse-switch
        0xf43484e -> :sswitch_c1
        0xf444247 -> :sswitch_ab
        0xf445343 -> :sswitch_99
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

    const-string v0, "android.hardware.wifi@1.3::IWifiStaIface"

    .line 1220
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

    .line 1227
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
