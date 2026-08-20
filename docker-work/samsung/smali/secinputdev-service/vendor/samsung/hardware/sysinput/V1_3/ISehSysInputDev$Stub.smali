.class public abstract Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;
.super Landroid/os/HwBinder;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1057
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1060
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1076
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1116
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1117
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1118
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1119
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1120
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_38

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_60

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_74

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_88

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_38
    .array-data 1
        0x1bt
        0x64t
        -0x3bt
        -0x32t
        -0xbt
        -0x54t
        0x2t
        0x5ct
        0xdt
        0x0t
        0x7t
        0x2ct
        0x76t
        -0x32t
        -0x5ct
        0x77t
        -0x59t
        -0x39t
        0x74t
        -0x12t
        0x63t
        0xdt
        -0x3bt
        -0x42t
        -0x4ft
        0x71t
        0x13t
        0x3dt
        0x5ct
        0x6bt
        0x2ct
        0x4t
    .end array-data

    :array_4c
    .array-data 1
        0x73t
        0x43t
        -0x3et
        -0x40t
        0x18t
        -0x1at
        -0x14t
        0x63t
        -0xbt
        -0x4t
        -0x7dt
        -0x76t
        -0x22t
        0x63t
        -0x7t
        -0x54t
        -0x31t
        0x7t
        -0x5dt
        -0x5t
        0x7bt
        -0x67t
        -0x9t
        -0x7ct
        0x5ft
        0xct
        0x2ft
        -0x40t
        -0x5ft
        -0x73t
        -0x2bt
        -0x24t
    .end array-data

    :array_60
    .array-data 1
        -0x18t
        -0x11t
        -0x33t
        0x16t
        0x25t
        -0x17t
        -0x10t
        -0x1bt
        0x4bt
        -0xct
        0x59t
        -0x53t
        0x21t
        0xft
        0x32t
        -0x7t
        0x54t
        -0xet
        0x78t
        -0x71t
        0x4t
        -0x66t
        0x78t
        -0x15t
        -0x70t
        0x4t
        -0x73t
        -0x37t
        0x54t
        -0x7t
        -0x6et
        -0x6at
    .end array-data

    :array_74
    .array-data 1
        0x20t
        -0x4ct
        -0x4at
        -0x7at
        -0x79t
        0x52t
        0x30t
        -0x29t
        -0x75t
        -0x6et
        -0x48t
        0x66t
        -0x50t
        -0x43t
        0x50t
        0x35t
        -0x46t
        0x72t
        -0x42t
        0x65t
        -0x7at
        -0x56t
        -0x38t
        0x8t
        0x72t
        0x52t
        0x7ct
        -0x77t
        0xet
        0x4dt
        0x62t
        -0x73t
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    const-string v2, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    const-string v3, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v4, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    const-string v5, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1082
    const-string v0, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1104
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1126
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1128
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1156
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v1, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    const-string v2, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    const-string v3, "android.hidl.base@1.0::IBase"

    const-string v4, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_308

    goto/16 :goto_307

    .line 1664
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->notifySyspropsChanged()V

    .line 1667
    goto/16 :goto_307

    .line 1653
    :sswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1656
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1657
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1658
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1659
    goto/16 :goto_307

    .line 1643
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1645
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->ping()V

    .line 1646
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1647
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1648
    goto/16 :goto_307

    .line 1638
    :sswitch_38
    goto/16 :goto_307

    .line 1630
    :sswitch_3a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->setHALInstrumentation()V

    .line 1633
    goto/16 :goto_307

    .line 1596
    :sswitch_42
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1599
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1601
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1603
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1604
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1605
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1606
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1607
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_69
    if-ge v4, v2, :cond_8a

    .line 1609
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1610
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1612
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_82

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_82

    .line 1616
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1617
    nop

    .line 1607
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 1613
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_82
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1620
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_8a
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1622
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1624
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1625
    goto/16 :goto_307

    .line 1585
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_97
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1589
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1591
    goto/16 :goto_307

    .line 1573
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1576
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1577
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1578
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1580
    goto/16 :goto_307

    .line 1562
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bf
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1565
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1566
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1568
    goto/16 :goto_307

    .line 1549
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_d1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1552
    .local v0, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1553
    .local v1, "isBefore":Z
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->setKeyboardEnable(IZ)I

    move-result v2

    .line 1554
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1555
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1557
    goto/16 :goto_307

    .line 1537
    .end local v0    # "enable":I
    .end local v1    # "isBefore":Z
    .end local v2    # "_hidl_out_retval":I
    :sswitch_eb
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;

    move-result-object v0

    .line 1540
    .local v0, "callback":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->registerCallback(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;)I

    move-result v1

    .line 1541
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1542
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1544
    goto/16 :goto_307

    .line 1523
    .end local v0    # "callback":Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputCallback;
    .end local v1    # "_hidl_out_retval":I
    :sswitch_105
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1526
    .local v0, "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1527
    .local v1, "inputData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1528
    .local v2, "inputSize":I
    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->sendRawdataTsp(ILjava/util/ArrayList;I)I

    move-result v3

    .line 1529
    .local v3, "_hidl_out_result":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1532
    goto/16 :goto_307

    .line 1510
    .end local v0    # "type":I
    .end local v1    # "inputData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    .end local v2    # "inputSize":I
    .end local v3    # "_hidl_out_result":I
    :sswitch_123
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1513
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1514
    .local v1, "property":I
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getProperty(II)Ljava/lang/String;

    move-result-object v2

    .line 1515
    .local v2, "_hidl_out_information":Ljava/lang/String;
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1516
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1518
    goto/16 :goto_307

    .line 1496
    .end local v0    # "type":I
    .end local v1    # "property":I
    .end local v2    # "_hidl_out_information":Ljava/lang/String;
    :sswitch_13d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1499
    .restart local v0    # "type":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1500
    .restart local v1    # "property":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, "vaule":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->setProperty(IILjava/lang/String;)I

    move-result v3

    .line 1502
    .restart local v3    # "_hidl_out_result":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1503
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1505
    goto/16 :goto_307

    .line 1484
    .end local v0    # "type":I
    .end local v1    # "property":I
    .end local v2    # "vaule":Ljava/lang/String;
    .end local v3    # "_hidl_out_result":I
    :sswitch_15b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1487
    .local v0, "force":Z
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getDeviceList(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1488
    .local v1, "_hidl_out_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1489
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 1490
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1491
    goto/16 :goto_307

    .line 1472
    .end local v0    # "force":Z
    .end local v1    # "_hidl_out_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :sswitch_171
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "buf":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->writeTaas(Ljava/lang/String;)I

    move-result v1

    .line 1476
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1477
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1478
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1479
    goto/16 :goto_307

    .line 1457
    .end local v0    # "buf":Ljava/lang/String;
    .end local v1    # "_hidl_out_retval":I
    :sswitch_187
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$15;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$15;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->readTaas(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;)V

    .line 1467
    goto/16 :goto_307

    .line 1446
    :sswitch_194
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->closeTaas()I

    move-result v0

    .line 1449
    .local v0, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1450
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1452
    goto/16 :goto_307

    .line 1435
    .end local v0    # "_hidl_out_retval":I
    :sswitch_1a6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->openTaas()I

    move-result v0

    .line 1438
    .restart local v0    # "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1439
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1441
    goto/16 :goto_307

    .line 1419
    .end local v0    # "_hidl_out_retval":I
    :sswitch_1b8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1422
    .local v0, "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$14;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$14;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspRawdata(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;)V

    .line 1430
    goto/16 :goto_307

    .line 1403
    .end local v0    # "devid":I
    :sswitch_1c9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1406
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$13;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$13;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->pollTspIrq(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$pollTspIrqCallback;)V

    .line 1414
    goto/16 :goto_307

    .line 1386
    .end local v0    # "devid":I
    :sswitch_1da
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1389
    .restart local v0    # "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1390
    .local v1, "mode":I
    new-instance v2, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$12;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$12;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->initTspRawData(IILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;)V

    .line 1398
    goto/16 :goto_307

    .line 1373
    .end local v0    # "devid":I
    .end local v1    # "mode":I
    :sswitch_1ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1376
    .local v0, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1377
    .local v1, "isBefore":Z
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->setSpenEnable(IZ)I

    move-result v2

    .line 1378
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1379
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1380
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1381
    goto/16 :goto_307

    .line 1359
    .end local v0    # "enable":I
    .end local v1    # "isBefore":Z
    .end local v2    # "_hidl_out_retval":I
    :sswitch_209
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1362
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1363
    .local v1, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1364
    .local v2, "isBefore":Z
    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->setTspEnable(IIZ)I

    move-result v3

    .line 1365
    .local v3, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1366
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1367
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1368
    goto/16 :goto_307

    .line 1347
    .end local v0    # "devid":I
    .end local v1    # "enable":I
    .end local v2    # "isBefore":Z
    .end local v3    # "_hidl_out_retval":I
    :sswitch_227
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v1

    .line 1351
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1352
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1353
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1354
    goto/16 :goto_307

    .line 1334
    .end local v0    # "cmdname":Ljava/lang/String;
    .end local v1    # "_hidl_out_retval":I
    :sswitch_23d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1337
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v2

    .line 1339
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1341
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1342
    goto/16 :goto_307

    .line 1319
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    .end local v2    # "_hidl_out_retval":I
    :sswitch_257
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$11;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$11;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V

    .line 1329
    goto/16 :goto_307

    .line 1304
    :sswitch_264
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$10;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$10;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V

    .line 1314
    goto/16 :goto_307

    .line 1288
    :sswitch_271
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "cmdname":Ljava/lang/String;
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$9;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$9;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V

    .line 1299
    goto/16 :goto_307

    .line 1272
    .end local v0    # "cmdname":Ljava/lang/String;
    :sswitch_282
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1275
    .local v0, "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$8;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$8;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V

    .line 1283
    goto/16 :goto_307

    .line 1256
    .end local v0    # "devid":I
    :sswitch_293
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1259
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$7;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V

    .line 1267
    goto :goto_307

    .line 1240
    .end local v0    # "devid":I
    :sswitch_2a3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1243
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$6;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V

    .line 1251
    goto :goto_307

    .line 1224
    .end local v0    # "devid":I
    :sswitch_2b3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1227
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$5;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V

    .line 1235
    goto :goto_307

    .line 1208
    .end local v0    # "devid":I
    :sswitch_2c3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1211
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$4;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V

    .line 1219
    goto :goto_307

    .line 1192
    .end local v0    # "devid":I
    :sswitch_2d3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1195
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$3;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V

    .line 1203
    goto :goto_307

    .line 1175
    .end local v0    # "devid":I
    :sswitch_2e3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1178
    .restart local v0    # "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .restart local v1    # "cmdname":Ljava/lang/String;
    new-instance v2, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$2;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V

    .line 1187
    goto :goto_307

    .line 1159
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    :sswitch_2f7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1162
    .local v0, "keycode":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub$1;-><init>(Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V

    .line 1170
    nop

    .line 1676
    .end local v0    # "keycode":I
    :goto_307
    return-void

    :sswitch_data_308
    .sparse-switch
        0x1 -> :sswitch_2f7
        0x2 -> :sswitch_2e3
        0x3 -> :sswitch_2d3
        0x4 -> :sswitch_2c3
        0x5 -> :sswitch_2b3
        0x6 -> :sswitch_2a3
        0x7 -> :sswitch_293
        0x8 -> :sswitch_282
        0x9 -> :sswitch_271
        0xa -> :sswitch_264
        0xb -> :sswitch_257
        0xc -> :sswitch_23d
        0xd -> :sswitch_227
        0xe -> :sswitch_209
        0xf -> :sswitch_1ef
        0x10 -> :sswitch_1da
        0x11 -> :sswitch_1c9
        0x12 -> :sswitch_1b8
        0x13 -> :sswitch_1a6
        0x14 -> :sswitch_194
        0x15 -> :sswitch_187
        0x16 -> :sswitch_171
        0x17 -> :sswitch_15b
        0x18 -> :sswitch_13d
        0x19 -> :sswitch_123
        0x1a -> :sswitch_105
        0x1b -> :sswitch_eb
        0x1c -> :sswitch_d1
        0xf43484e -> :sswitch_bf
        0xf444247 -> :sswitch_a9
        0xf445343 -> :sswitch_97
        0xf485348 -> :sswitch_42
        0xf494e54 -> :sswitch_3a
        0xf4c5444 -> :sswitch_38
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 1110
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1138
    const-string v0, "vendor.samsung.hardware.sysinput@1.3::ISehSysInputDev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1139
    return-object p0

    .line 1141
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1145
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->registerService(Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_3/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1132
    const/4 v0, 0x1

    return v0
.end method
