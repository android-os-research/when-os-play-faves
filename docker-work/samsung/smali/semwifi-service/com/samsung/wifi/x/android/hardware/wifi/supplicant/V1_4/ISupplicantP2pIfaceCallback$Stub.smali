.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1083
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

    .line 1138
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1139
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1140
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1141
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

    .line 1112
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
        -0x16t
        0x46t
        0x59t
        0x70t
        -0x17t
        0x6dt
        -0x6at
        0x5t
        -0x12t
        0x6ft
        0x67t
        0x6t
        -0x4dt
        -0x4bt
        0x12t
        0x72t
        0x6ct
        0x66t
        -0x2et
        0x64t
        0x47t
        0x38t
        -0x53t
        -0x22t
        -0x27t
        0x12t
        -0x74t
        0x73t
        -0x61t
        -0x71t
        -0x75t
        0xct
    .end array-data

    :array_3c
    .array-data 1
        -0x75t
        0x63t
        -0xbt
        -0x11t
        -0x5et
        -0x1dt
        -0x42t
        0x3at
        0x7ct
        -0x48t
        -0x5ct
        0x28t
        0x76t
        0xdt
        -0x7et
        0x28t
        0x5at
        0x4at
        -0x49t
        -0x65t
        -0x35t
        -0x22t
        -0x5at
        -0x11t
        -0x70t
        -0x56t
        0x54t
        0x75t
        0x55t
        -0x1bt
        -0x7et
        -0x2ct
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

    .line 1091
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

    const-string v1, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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

    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1148
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-wide/16 v3, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x20

    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x0

    const/4 v12, 0x6

    packed-switch p1, :pswitch_data_2da

    const/4 v5, 0x0

    const-string v7, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_302

    goto/16 :goto_2d9

    .line 1664
    :sswitch_1e
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2d9

    .line 1653
    :sswitch_26
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1656
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1657
    invoke-virtual {v0, v2}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1658
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d9

    .line 1643
    :sswitch_38
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->ping()V

    .line 1646
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d9

    .line 1630
    :sswitch_46
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_2d9

    .line 1596
    :sswitch_4e
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1599
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1601
    new-instance v1, Landroid/os/HwBlob;

    const/16 v7, 0x10

    invoke-direct {v1, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 1603
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1604
    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    .line 1605
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1606
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v7, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_72
    if-ge v5, v7, :cond_90

    mul-int/lit8 v4, v5, 0x20

    int-to-long v8, v4

    .line 1610
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_88

    .line 1612
    array-length v12, v4

    if-ne v12, v6, :cond_88

    .line 1616
    invoke-virtual {v3, v8, v9, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 1613
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_90
    invoke-virtual {v1, v10, v11, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1622
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d9

    .line 1585
    :sswitch_9b
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1588
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1589
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d9

    .line 1573
    :sswitch_ad
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v3

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1577
    invoke-virtual {v0, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1578
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d9

    .line 1562
    :sswitch_c3
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1565
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1566
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1567
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2d9

    :pswitch_d5
    const-string v2, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

    .line 1505
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1509
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v6

    .line 1512
    invoke-virtual {v6, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v6, v12, [B

    .line 1518
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v7

    .line 1521
    invoke-virtual {v7, v10, v11, v6, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v7, v5, [B

    .line 1527
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1530
    invoke-virtual {v3, v10, v11, v7, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v5

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    new-array v15, v12, [B

    .line 1540
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1543
    invoke-virtual {v3, v10, v11, v15, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const/4 v3, 0x2

    new-array v9, v3, [B

    move/from16 p1, v14

    move-object/from16 p3, v15

    const-wide/16 v14, 0x2

    .line 1549
    invoke-virtual {v1, v14, v15}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1552
    invoke-virtual {v1, v10, v11, v9, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v6

    move-object v3, v7

    move v6, v13

    move/from16 v7, p1

    move-object/from16 v8, p3

    .line 1556
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;->onR2DeviceFound([B[B[BLjava/lang/String;SBI[B[B)V

    goto/16 :goto_2d9

    .line 1479
    :pswitch_12d
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1483
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1486
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v3, v12, [B

    .line 1492
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1495
    invoke-virtual {v1, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1499
    invoke-interface {v0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaDeauthorized([B[B)V

    goto/16 :goto_2d9

    .line 1453
    :pswitch_147
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1457
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1460
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v3, v12, [B

    .line 1466
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1469
    invoke-virtual {v1, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1473
    invoke-interface {v0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaAuthorized([B[B)V

    goto/16 :goto_2d9

    .line 1434
    :pswitch_161
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1438
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1441
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1445
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v3

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1447
    invoke-interface {v0, v2, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V

    goto/16 :goto_2d9

    .line 1413
    :pswitch_17a
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1417
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1420
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v5

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 1428
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V

    goto/16 :goto_2d9

    .line 1395
    :pswitch_1a2
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1399
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1402
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1407
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationResult([BI)V

    goto/16 :goto_2d9

    .line 1358
    :pswitch_1b7
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1362
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1365
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v3, v12, [B

    .line 1371
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1374
    invoke-virtual {v4, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v4, v12, [B

    .line 1380
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 1383
    invoke-virtual {v5, v10, v11, v4, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1387
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1388
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 1389
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationReceived([B[B[BII)V

    goto/16 :goto_2d9

    .line 1348
    :pswitch_1e9
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1352
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupRemoved(Ljava/lang/String;Z)V

    goto/16 :goto_2d9

    .line 1316
    :pswitch_1f9
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1319
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v3

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 1321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    new-array v7, v6, [B

    const-wide/16 v13, 0x20

    .line 1324
    invoke-virtual {v1, v13, v14}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v13

    .line 1327
    invoke-virtual {v13, v10, v11, v7, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    new-array v13, v12, [B

    .line 1334
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    .line 1337
    invoke-virtual {v8, v10, v11, v13, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    move-object v7, v13

    .line 1342
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V

    goto/16 :goto_2d9

    .line 1307
    :pswitch_235
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1310
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationFailure(Ljava/lang/String;)V

    goto/16 :goto_2d9

    .line 1299
    :pswitch_241
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-interface/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationSuccess()V

    goto/16 :goto_2d9

    .line 1290
    :pswitch_249
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1293
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationCompleted(I)V

    goto/16 :goto_2d9

    .line 1272
    :pswitch_255
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1276
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1279
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v1

    .line 1284
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationRequest([BS)V

    goto/16 :goto_2d9

    .line 1264
    :pswitch_26a
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    invoke-interface/range {p0 .. p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onFindStopped()V

    goto :goto_2d9

    .line 1247
    :pswitch_271
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1251
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1254
    invoke-virtual {v1, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1258
    invoke-interface {v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceLost([B)V

    goto :goto_2d9

    .line 1199
    :pswitch_281
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array v2, v12, [B

    .line 1203
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v6

    .line 1206
    invoke-virtual {v6, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v6, v12, [B

    .line 1212
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v7

    .line 1215
    invoke-virtual {v7, v10, v11, v6, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    new-array v7, v5, [B

    .line 1221
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v3

    .line 1224
    invoke-virtual {v3, v10, v11, v7, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt16()S

    move-result v5

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v13

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    new-array v15, v12, [B

    .line 1234
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1237
    invoke-virtual {v1, v10, v11, v15, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v6

    move-object v3, v7

    move v6, v13

    move v7, v14

    move-object v8, v15

    .line 1241
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;SBI[B)V

    goto :goto_2d9

    .line 1190
    :pswitch_2c4
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1193
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkRemoved(I)V

    goto :goto_2d9

    .line 1181
    :pswitch_2cf
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1184
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkAdded(I)V

    :goto_2d9
    return-void

    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_2cf
        :pswitch_2c4
        :pswitch_281
        :pswitch_271
        :pswitch_26a
        :pswitch_255
        :pswitch_249
        :pswitch_241
        :pswitch_235
        :pswitch_1f9
        :pswitch_1e9
        :pswitch_1b7
        :pswitch_1a2
        :pswitch_17a
        :pswitch_161
        :pswitch_147
        :pswitch_12d
        :pswitch_d5
    .end packed-switch

    :sswitch_data_302
    .sparse-switch
        0xf43484e -> :sswitch_c3
        0xf444247 -> :sswitch_ad
        0xf445343 -> :sswitch_9b
        0xf485348 -> :sswitch_4e
        0xf494e54 -> :sswitch_46
        0xf504e47 -> :sswitch_38
        0xf524546 -> :sswitch_26
        0xf535953 -> :sswitch_1e
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

    .line 1160
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

    .line 1167
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
