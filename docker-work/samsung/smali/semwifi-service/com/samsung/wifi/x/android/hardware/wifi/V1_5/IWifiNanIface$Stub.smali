.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1062
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

    .line 1123
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1124
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1125
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1126
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

    .line 1094
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
        0x45t
        -0x55t
        -0x6dt
        0x37t
        -0x71t
        0x2t
        -0x58t
        -0x44t
        0x3at
        0x65t
        -0x78t
        0x53t
        -0x32t
        0x4dt
        0x3ft
        -0x24t
        0x1et
        -0x61t
        -0x5et
        -0x3ft
        -0x2ft
        -0x3bt
        0x45t
        -0x7et
        0x1dt
        0x49t
        0xbt
        -0x10t
        -0xct
        -0x27t
        0x6ct
        -0x14t
    .end array-data

    :array_54
    .array-data 1
        -0x1t
        0x66t
        0x37t
        0x1at
        0x46t
        0x7dt
        0x1ft
        0x3ct
        -0x56t
        -0x32t
        -0x5ft
        0x5dt
        -0x6dt
        -0xdt
        -0x65t
        0x7bt
        0x76t
        0x7bt
        0xdt
        0x6bt
        -0x74t
        -0x2ct
        0x1dt
        0x4t
        0x3t
        0x37t
        -0x33t
        -0x55t
        -0xet
        0x51t
        0x4bt
        -0x79t
    .end array-data

    :array_68
    .array-data 1
        -0x74t
        0x7et
        -0xdt
        0x2ft
        -0x39t
        -0x73t
        0x5et
        -0x3at
        -0x1at
        -0x6bt
        0x6dt
        -0x1dt
        0x78t
        0x4ct
        -0x3et
        -0x3at
        -0xct
        0x26t
        0x14t
        -0x4bt
        0x27t
        0x2dt
        0x2et
        0x46t
        0x1ft
        0x6dt
        0x60t
        0x53t
        0x4bt
        -0x5dt
        -0x72t
        -0x3et
    .end array-data

    :array_7c
    .array-data 1
        -0x46t
        0x5at
        -0x59t
        0x4ft
        0x1bt
        -0x59t
        0x14t
        -0x10t
        0x9t
        0x38t
        0x64t
        0x22t
        0x79t
        0x23t
        0x49t
        0x28t
        0x8t
        0x79t
        0x5bt
        -0x26t
        0x61t
        -0x67t
        -0x3ct
        -0x16t
        0x8t
        -0x6ft
        0x32t
        0x2dt
        0x27t
        -0x8t
        -0x37t
        0x31t
    .end array-data

    :array_90
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

    .line 1070
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.5::IWifiNanIface"

    const-string v1, "android.hardware.wifi@1.4::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiNanIface"

    const-string v4, "android.hardware.wifi@1.0::IWifiIface"

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

    const-string p0, "android.hardware.wifi@1.5::IWifiNanIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1133
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

    const-string p4, "android.hardware.wifi@1.4::IWifiNanIface"

    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    const-string v1, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.5::IWifiNanIface"

    const-string v3, "android.hardware.wifi@1.0::IWifiNanIface"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_3ae

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3e6

    goto/16 :goto_3ad

    .line 1629
    :sswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3ad

    .line 1618
    :sswitch_1d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1621
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1622
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1608
    :sswitch_2f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->ping()V

    .line 1611
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1595
    :sswitch_3d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_3ad

    .line 1561
    :sswitch_45
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1563
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1564
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1566
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1568
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1569
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1570
    invoke-virtual {p1, v0, v1, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1571
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6b
    if-ge v4, p2, :cond_8b

    mul-int/lit8 v0, v4, 0x20

    int-to-long v0, v0

    .line 1575
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_83

    .line 1577
    array-length v3, v2

    const/16 v5, 0x20

    if-ne v3, v5, :cond_83

    .line 1581
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 1578
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    const-wide/16 v0, 0x0

    .line 1585
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1587
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1550
    :sswitch_98
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1553
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1554
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1538
    :sswitch_aa
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1542
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1543
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1527
    :sswitch_c0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1530
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1531
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1515
    :pswitch_d2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1518
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->getCapabilitiesRequest_1_5(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1519
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1520
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1503
    :pswitch_e8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1506
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->registerEventCallback_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1507
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1508
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1509
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1487
    :pswitch_102
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1490
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 1491
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1492
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 1493
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1494
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->configRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1495
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1496
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1471
    :pswitch_128
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1474
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 1475
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1476
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 1477
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1478
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->enableRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1479
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1480
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1455
    :pswitch_14e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1458
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 1459
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1460
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1461
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1462
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->configRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1463
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1464
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1439
    :pswitch_174
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1442
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 1443
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1444
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1445
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1446
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->enableRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1447
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1448
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1423
    :pswitch_19a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1426
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1427
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1428
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1429
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1430
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1431
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1432
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1407
    :pswitch_1c0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1410
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1411
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1412
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1413
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1414
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1415
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1416
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1395
    :pswitch_1e6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1398
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1399
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1400
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1382
    :pswitch_200
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1386
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1387
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1388
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1389
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1368
    :pswitch_21a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1371
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1372
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1373
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1374
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1375
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1376
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1354
    :pswitch_238
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1357
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 1358
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1359
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1360
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1362
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1341
    :pswitch_256
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1345
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1346
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1347
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1348
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1328
    :pswitch_270
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1331
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1332
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1333
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1334
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1335
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1314
    :pswitch_28a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1317
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 1318
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1319
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1320
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1321
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1322
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1301
    :pswitch_2a8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1304
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1305
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1306
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1307
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1308
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1287
    :pswitch_2c2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1290
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 1291
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1292
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1293
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1295
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1274
    :pswitch_2e0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1278
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1279
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1280
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1281
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1260
    :pswitch_2fa
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1263
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 1264
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1265
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1266
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1267
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1268
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1248
    :pswitch_318
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1251
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1252
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1253
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1254
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3ad

    .line 1234
    :pswitch_32e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1237
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1238
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1239
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1240
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1241
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1242
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3ad

    .line 1220
    :pswitch_34b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1223
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1224
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1225
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1226
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1227
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3ad

    .line 1208
    :pswitch_368
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1211
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1212
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1213
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3ad

    .line 1196
    :pswitch_37d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1199
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1200
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3ad

    .line 1181
    :pswitch_396
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_3ad

    .line 1166
    :pswitch_3a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_3ad
    return-void

    :pswitch_data_3ae
    .packed-switch 0x1
        :pswitch_3a2
        :pswitch_396
        :pswitch_37d
        :pswitch_368
        :pswitch_34b
        :pswitch_32e
        :pswitch_318
        :pswitch_2fa
        :pswitch_2e0
        :pswitch_2c2
        :pswitch_2a8
        :pswitch_28a
        :pswitch_270
        :pswitch_256
        :pswitch_238
        :pswitch_21a
        :pswitch_200
        :pswitch_1e6
        :pswitch_1c0
        :pswitch_19a
        :pswitch_174
        :pswitch_14e
        :pswitch_128
        :pswitch_102
        :pswitch_e8
        :pswitch_d2
    .end packed-switch

    :sswitch_data_3e6
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

    const-string v0, "android.hardware.wifi@1.5::IWifiNanIface"

    .line 1145
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

    .line 1152
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
