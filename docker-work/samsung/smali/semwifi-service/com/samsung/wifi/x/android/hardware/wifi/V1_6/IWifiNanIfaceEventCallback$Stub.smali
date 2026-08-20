.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 996
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

    .line 1055
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1056
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1057
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1058
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

    .line 1027
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
        -0x49t
        -0x32t
        0x2dt
        -0x79t
        -0x7ct
        0x15t
        -0x7bt
        0x55t
        0x1bt
        0x8t
        0x2ft
        -0x36t
        0x6dt
        0x9t
        -0x6at
        0x22t
        -0x1at
        0x3bt
        0x70t
        -0x67t
        -0x20t
        -0x28t
        0x1t
        0x3ft
        0x68t
        0x7et
        -0x5ft
        -0x5ft
        -0x24t
        0x35t
        -0x3ct
        -0x24t
    .end array-data

    :array_4c
    .array-data 1
        -0x4et
        0x2t
        0x61t
        -0x47t
        0x73t
        0x59t
        -0x58t
        -0x48t
        0x78t
        0x47t
        0x0t
        -0x2ct
        0x27t
        -0x76t
        -0x60t
        0xat
        -0x7at
        0x66t
        -0x4t
        -0x27t
        -0x4t
        0x25t
        -0x64t
        0x3at
        -0x7dt
        -0x7at
        -0x46t
        0x34t
        -0x46t
        -0x2bt
        -0x14t
        -0x7dt
    .end array-data

    :array_60
    .array-data 1
        0x1et
        0x60t
        0x74t
        -0x11t
        -0x53t
        -0x63t
        -0x5dt
        0x33t
        -0x80t
        0x3ft
        -0x49t
        -0x3ft
        -0x54t
        -0x25t
        0x71t
        -0x63t
        0x51t
        -0x3dt
        0xbt
        0x2et
        0x1et
        -0x6et
        0x8t
        0x7bt
        0x4t
        0x20t
        0x34t
        0x16t
        0x31t
        -0x3dt
        0xbt
        0x60t
    .end array-data

    :array_74
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

    .line 1004
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.6::IWifiNanIfaceEventCallback"

    const-string v1, "android.hardware.wifi@1.5::IWifiNanIfaceEventCallback"

    const-string v2, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    const-string v3, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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

    const-string p0, "android.hardware.wifi@1.6::IWifiNanIfaceEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1065
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

    const-string p4, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    const-string v0, "android.hardware.wifi@1.6::IWifiNanIfaceEventCallback"

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    packed-switch p1, :pswitch_data_336

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_37a

    goto/16 :goto_335

    .line 1547
    :sswitch_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_335

    .line 1536
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1539
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1540
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_335

    .line 1526
    :sswitch_2b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 1529
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_335

    .line 1513
    :sswitch_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_335

    .line 1479
    :sswitch_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1482
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1484
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1486
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1487
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1488
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1489
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge p4, p2, :cond_87

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1493
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7f

    .line 1495
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 1499
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_67

    .line 1496
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    const-wide/16 v1, 0x0

    .line 1503
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1505
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_335

    .line 1468
    :sswitch_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1471
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1472
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_335

    .line 1456
    :sswitch_a6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1459
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1460
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1461
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1462
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_335

    .line 1445
    :sswitch_bc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1448
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1449
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_335

    .line 1432
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1435
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1436
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1437
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;-><init>()V

    .line 1438
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1439
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;)V

    goto/16 :goto_335

    .line 1422
    :pswitch_ea
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;-><init>()V

    .line 1425
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1426
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;->eventMatch_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanMatchInd;)V

    goto/16 :goto_335

    .line 1412
    :pswitch_fa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1414
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;-><init>()V

    .line 1415
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1416
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;->eventDataPathScheduleUpdate_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathScheduleUpdateInd;)V

    goto/16 :goto_335

    .line 1402
    :pswitch_10a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;-><init>()V

    .line 1405
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1406
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;->eventDataPathConfirm_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathConfirmInd;)V

    goto/16 :goto_335

    :pswitch_11a
    const-string p1, "android.hardware.wifi@1.5::IWifiNanIfaceEventCallback"

    .line 1389
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1392
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1393
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1394
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;-><init>()V

    .line 1395
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1396
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;)V

    goto/16 :goto_335

    .line 1379
    :pswitch_138
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;-><init>()V

    .line 1382
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1383
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;)V

    goto/16 :goto_335

    .line 1369
    :pswitch_148
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;-><init>()V

    .line 1372
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1373
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->eventDataPathConfirm_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;)V

    goto/16 :goto_335

    .line 1360
    :pswitch_158
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1363
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathTerminated(I)V

    goto/16 :goto_335

    .line 1350
    :pswitch_164
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 1353
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1354
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    goto/16 :goto_335

    .line 1340
    :pswitch_174
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 1343
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1344
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    goto/16 :goto_335

    .line 1329
    :pswitch_184
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1332
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1333
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1334
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1319
    :pswitch_198
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 1322
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1323
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    goto/16 :goto_335

    .line 1309
    :pswitch_1a8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1313
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatchExpired(BI)V

    goto/16 :goto_335

    .line 1299
    :pswitch_1b8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 1302
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1303
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V

    goto/16 :goto_335

    .line 1288
    :pswitch_1c8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1291
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1292
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1293
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1277
    :pswitch_1dc
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1280
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1281
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1282
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1267
    :pswitch_1f0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1270
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1271
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1257
    :pswitch_200
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 1260
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1261
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V

    goto/16 :goto_335

    .line 1246
    :pswitch_210
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1249
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1250
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1251
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1235
    :pswitch_224
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1238
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1239
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1240
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1223
    :pswitch_238
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1226
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1227
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1228
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1229
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V

    goto/16 :goto_335

    .line 1212
    :pswitch_250
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1215
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1216
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1217
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1201
    :pswitch_264
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1204
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1205
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1206
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1190
    :pswitch_278
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1193
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1194
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1195
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1179
    :pswitch_28c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1182
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1183
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1184
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_335

    .line 1167
    :pswitch_2a0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1170
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1171
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1173
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto/16 :goto_335

    .line 1156
    :pswitch_2b8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1159
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1160
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1161
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_335

    .line 1144
    :pswitch_2cb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1147
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1148
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1150
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto :goto_335

    .line 1133
    :pswitch_2e2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1136
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1137
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1138
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_335

    .line 1122
    :pswitch_2f5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1125
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1126
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1127
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_335

    .line 1111
    :pswitch_308
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1114
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1115
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1116
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_335

    .line 1098
    :pswitch_31b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1101
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1102
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1103
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 1104
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1105
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V

    :goto_335
    return-void

    :pswitch_data_336
    .packed-switch 0x1
        :pswitch_31b
        :pswitch_308
        :pswitch_2f5
        :pswitch_2e2
        :pswitch_2cb
        :pswitch_2b8
        :pswitch_2a0
        :pswitch_28c
        :pswitch_278
        :pswitch_264
        :pswitch_250
        :pswitch_238
        :pswitch_224
        :pswitch_210
        :pswitch_200
        :pswitch_1f0
        :pswitch_1dc
        :pswitch_1c8
        :pswitch_1b8
        :pswitch_1a8
        :pswitch_198
        :pswitch_184
        :pswitch_174
        :pswitch_164
        :pswitch_158
        :pswitch_148
        :pswitch_138
        :pswitch_11a
        :pswitch_10a
        :pswitch_fa
        :pswitch_ea
        :pswitch_ce
    .end packed-switch

    :sswitch_data_37a
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

    const-string v0, "android.hardware.wifi@1.6::IWifiNanIfaceEventCallback"

    .line 1077
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

    .line 1084
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
