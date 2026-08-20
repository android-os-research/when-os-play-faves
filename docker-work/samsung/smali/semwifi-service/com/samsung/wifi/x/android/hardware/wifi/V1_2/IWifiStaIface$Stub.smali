.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiStaIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1093
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

    .line 1150
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1151
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1152
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1153
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

    .line 1123
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

    :array_44
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

    :array_58
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

    .line 1101
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiStaIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

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

    const-string p0, "android.hardware.wifi@1.2::IWifiStaIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1160
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

    const-string p4, "android.hardware.wifi@1.2::IWifiStaIface"

    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    const-wide/16 v1, 0x6

    const-wide/16 v3, 0x0

    const/4 v5, 0x6

    const-string v6, "android.hardware.wifi@1.0::IWifiStaIface"

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_302

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_33c

    goto/16 :goto_301

    .line 1694
    :sswitch_16
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_301

    .line 1683
    :sswitch_1e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1686
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1687
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1688
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1673
    :sswitch_30
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->ping()V

    .line 1676
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1660
    :sswitch_3e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_301

    .line 1626
    :sswitch_46
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1628
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1629
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1631
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1633
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1634
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1635
    invoke-virtual {p1, v0, v1, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1636
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6c
    if-ge v7, p2, :cond_8c

    mul-int/lit8 v0, v7, 0x20

    int-to-long v0, v0

    .line 1640
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_84

    .line 1642
    array-length v5, v2

    const/16 v6, 0x20

    if-ne v5, v6, :cond_84

    .line 1646
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 1643
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1650
    :cond_8c
    invoke-virtual {p1, v3, v4, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1652
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1615
    :sswitch_97
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1618
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1619
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1603
    :sswitch_a9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1606
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1607
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1608
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1592
    :sswitch_bf
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1595
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1596
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1572
    :pswitch_d1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v5, [B

    .line 1576
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1579
    invoke-virtual {p2, v3, v4, p1, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1583
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1584
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1585
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1557
    :pswitch_ec
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$11;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    goto/16 :goto_301

    .line 1542
    :pswitch_f9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$10;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    goto/16 :goto_301

    .line 1527
    :pswitch_106
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$9;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    goto/16 :goto_301

    .line 1516
    :pswitch_113
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1519
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1520
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1496
    :pswitch_125
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p4, p1, [B

    const-wide/16 v0, 0x3

    .line 1500
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1503
    invoke-virtual {p2, v3, v4, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1507
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1508
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1509
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1510
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1484
    :pswitch_143
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1487
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1488
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1451
    :pswitch_159
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1454
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p4

    .line 1455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v6

    new-array v8, v5, [B

    .line 1458
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1461
    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v9, v5, [B

    .line 1467
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 1470
    invoke-virtual {v0, v3, v4, v9, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    move-object v0, p0

    move v1, p1

    move-object v2, p4

    move v3, v6

    move-object v4, v8

    move-object v5, v9

    move v6, p2

    .line 1475
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1476
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1477
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1478
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1439
    :pswitch_194
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1442
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1443
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1444
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1445
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1427
    :pswitch_1aa
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1430
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1431
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1432
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1414
    :pswitch_1c0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 1417
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1418
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1419
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1420
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1421
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1399
    :pswitch_1da
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$8;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    goto/16 :goto_301

    .line 1387
    :pswitch_1e7
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1390
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1391
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1392
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1373
    :pswitch_1fd
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1376
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1378
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1379
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1380
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1381
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1358
    :pswitch_21b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$7;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    goto/16 :goto_301

    .line 1347
    :pswitch_228
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1350
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1351
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1335
    :pswitch_23a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1338
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1339
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1341
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1323
    :pswitch_250
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1326
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1327
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1328
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1329
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1309
    :pswitch_266
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1312
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 1313
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1314
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1315
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1316
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1317
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_301

    .line 1293
    :pswitch_284
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1296
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$6;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    goto :goto_301

    .line 1278
    :pswitch_294
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$5;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    goto :goto_301

    .line 1265
    :pswitch_2a0
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1269
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1270
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1271
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1272
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_301

    .line 1250
    :pswitch_2b9
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$4;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    goto :goto_301

    .line 1235
    :pswitch_2c5
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$3;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    goto :goto_301

    .line 1223
    :pswitch_2d1
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    move-result-object p1

    .line 1226
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1227
    invoke-virtual {p3, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1228
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_301

    .line 1208
    :pswitch_2ea
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_301

    .line 1193
    :pswitch_2f6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1195
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_301
    return-void

    :pswitch_data_302
    .packed-switch 0x1
        :pswitch_2f6
        :pswitch_2ea
        :pswitch_2d1
        :pswitch_2c5
        :pswitch_2b9
        :pswitch_2a0
        :pswitch_294
        :pswitch_284
        :pswitch_266
        :pswitch_250
        :pswitch_23a
        :pswitch_228
        :pswitch_21b
        :pswitch_1fd
        :pswitch_1e7
        :pswitch_1da
        :pswitch_1c0
        :pswitch_1aa
        :pswitch_194
        :pswitch_159
        :pswitch_143
        :pswitch_125
        :pswitch_113
        :pswitch_106
        :pswitch_f9
        :pswitch_ec
        :pswitch_d1
    .end packed-switch

    :sswitch_data_33c
    .sparse-switch
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
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

    const-string v0, "android.hardware.wifi@1.2::IWifiStaIface"

    .line 1172
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

    .line 1179
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
