.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1118
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

    .line 1171
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1172
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1173
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1174
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

    .line 1146
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_34

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_20
    .array-data 1
        0x32t
        0x5ct
        -0x6ct
        -0xdt
        -0x1ft
        -0x5bt
        0x65t
        -0x4bt
        0x6bt
        -0x44t
        0x74t
        -0x6t
        -0x23t
        -0x43t
        0xbt
        -0x59t
        -0x35t
        -0x7et
        0x4ft
        0x26t
        0x3dt
        -0x34t
        -0x7t
        -0x21t
        -0x1t
        0x2dt
        -0x51t
        0x62t
        -0x48t
        0x6et
        -0x29t
        0x74t
    .end array-data

    :array_34
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1126
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1181
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

    const-string p4, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    packed-switch p1, :pswitch_data_2a8

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2de

    goto/16 :goto_2a7

    .line 1587
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2a7

    .line 1576
    :sswitch_15
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1579
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1580
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2a7

    .line 1566
    :sswitch_27
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 1569
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1570
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2a7

    .line 1553
    :sswitch_35
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_2a7

    .line 1519
    :sswitch_3d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1522
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1524
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1526
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1527
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1528
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1529
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_63
    if-ge p4, p2, :cond_83

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1533
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7b

    .line 1535
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7b

    .line 1539
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_63

    .line 1536
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    const-wide/16 v1, 0x0

    .line 1543
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1545
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2a7

    .line 1508
    :sswitch_90
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1511
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1512
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2a7

    .line 1496
    :sswitch_a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1500
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1501
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1502
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2a7

    .line 1485
    :sswitch_b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1488
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2a7

    .line 1476
    :pswitch_ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1479
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathTerminated(I)V

    goto/16 :goto_2a7

    .line 1466
    :pswitch_d6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 1469
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1470
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    goto/16 :goto_2a7

    .line 1456
    :pswitch_e6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 1459
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1460
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    goto/16 :goto_2a7

    .line 1445
    :pswitch_f6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1448
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1449
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1450
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1435
    :pswitch_10a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 1438
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1439
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    goto/16 :goto_2a7

    .line 1425
    :pswitch_11a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1428
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1429
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatchExpired(BI)V

    goto/16 :goto_2a7

    .line 1415
    :pswitch_12a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 1418
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1419
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V

    goto/16 :goto_2a7

    .line 1404
    :pswitch_13a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1407
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1408
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1409
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1393
    :pswitch_14e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1396
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1397
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1398
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1383
    :pswitch_162
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1386
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1387
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1373
    :pswitch_172
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 1376
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1377
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V

    goto/16 :goto_2a7

    .line 1362
    :pswitch_182
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1365
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1366
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1367
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1351
    :pswitch_196
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1354
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1355
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1356
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1339
    :pswitch_1aa
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1342
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1343
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1345
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V

    goto/16 :goto_2a7

    .line 1328
    :pswitch_1c2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1331
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1332
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1333
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1317
    :pswitch_1d6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1320
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1321
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1322
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1306
    :pswitch_1ea
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1309
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1310
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1311
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1295
    :pswitch_1fe
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1298
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1299
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1300
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2a7

    .line 1283
    :pswitch_212
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1286
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1287
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1289
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto/16 :goto_2a7

    .line 1272
    :pswitch_22a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1275
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1276
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1277
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2a7

    .line 1260
    :pswitch_23d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1263
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1264
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1266
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto :goto_2a7

    .line 1249
    :pswitch_254
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1252
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1253
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1254
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2a7

    .line 1238
    :pswitch_267
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1241
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1242
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1243
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2a7

    .line 1227
    :pswitch_27a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1230
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1231
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1232
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2a7

    .line 1214
    :pswitch_28d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1217
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1218
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1219
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 1220
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1221
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V

    :goto_2a7
    return-void

    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_28d
        :pswitch_27a
        :pswitch_267
        :pswitch_254
        :pswitch_23d
        :pswitch_22a
        :pswitch_212
        :pswitch_1fe
        :pswitch_1ea
        :pswitch_1d6
        :pswitch_1c2
        :pswitch_1aa
        :pswitch_196
        :pswitch_182
        :pswitch_172
        :pswitch_162
        :pswitch_14e
        :pswitch_13a
        :pswitch_12a
        :pswitch_11a
        :pswitch_10a
        :pswitch_f6
        :pswitch_e6
        :pswitch_d6
        :pswitch_ca
    .end packed-switch

    :sswitch_data_2de
    .sparse-switch
        0xf43484e -> :sswitch_b8
        0xf444247 -> :sswitch_a2
        0xf445343 -> :sswitch_90
        0xf485348 -> :sswitch_3d
        0xf494e54 -> :sswitch_35
        0xf504e47 -> :sswitch_27
        0xf524546 -> :sswitch_15
        0xf535953 -> :sswitch_d
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 1193
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

    .line 1200
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
