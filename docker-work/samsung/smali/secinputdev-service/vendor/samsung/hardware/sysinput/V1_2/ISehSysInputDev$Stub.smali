.class public abstract Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;
.super Landroid/os/HwBinder;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1010
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 1013
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

    .line 1028
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 1067
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1068
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1069
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1070
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1071
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

    .line 1040
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_30

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_44

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_58

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6c

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_30
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

    :array_44
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

    :array_58
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1018
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    const-string v2, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v3, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1034
    const-string v0, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1055
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1077
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1079
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

    .line 1107
    const-string v0, "vendor.samsung.hardware.sysinput@1.1::ISehSysInputDev"

    const-string v1, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    const-string v2, "android.hidl.base@1.0::IBase"

    const-string v3, "vendor.samsung.hardware.sysinput@1.0::ISehSysInputDev"

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_266

    goto/16 :goto_265

    .line 1537
    :sswitch_e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->notifySyspropsChanged()V

    .line 1540
    goto/16 :goto_265

    .line 1526
    :sswitch_16
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1529
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1532
    goto/16 :goto_265

    .line 1516
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_28
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->ping()V

    .line 1519
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1521
    goto/16 :goto_265

    .line 1511
    :sswitch_36
    goto/16 :goto_265

    .line 1503
    :sswitch_38
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->setHALInstrumentation()V

    .line 1506
    goto/16 :goto_265

    .line 1469
    :sswitch_40
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1472
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1474
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1476
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1477
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1478
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1479
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1480
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_67
    if-ge v4, v2, :cond_88

    .line 1482
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1483
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1485
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_80

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_80

    .line 1489
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1490
    nop

    .line 1480
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 1486
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_80
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1493
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_88
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1495
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1497
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1498
    goto/16 :goto_265

    .line 1458
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_95
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1462
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1464
    goto/16 :goto_265

    .line 1446
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1449
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1450
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1451
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1452
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1453
    goto/16 :goto_265

    .line 1435
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1438
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1439
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1441
    goto/16 :goto_265

    .line 1423
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_cf
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "buf":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->writeTaas(Ljava/lang/String;)I

    move-result v1

    .line 1427
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1430
    goto/16 :goto_265

    .line 1408
    .end local v0    # "buf":Ljava/lang/String;
    .end local v1    # "_hidl_out_retval":I
    :sswitch_e5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$15;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$15;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->readTaas(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$readTaasCallback;)V

    .line 1418
    goto/16 :goto_265

    .line 1397
    :sswitch_f2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->closeTaas()I

    move-result v0

    .line 1400
    .local v0, "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1402
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1403
    goto/16 :goto_265

    .line 1386
    .end local v0    # "_hidl_out_retval":I
    :sswitch_104
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->openTaas()I

    move-result v0

    .line 1389
    .restart local v0    # "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1390
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1391
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1392
    goto/16 :goto_265

    .line 1370
    .end local v0    # "_hidl_out_retval":I
    :sswitch_116
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1373
    .local v0, "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$14;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$14;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspRawdata(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$getTspRawdataCallback;)V

    .line 1381
    goto/16 :goto_265

    .line 1354
    .end local v0    # "devid":I
    :sswitch_127
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1357
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$13;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$13;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->pollTspIrq(ILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$pollTspIrqCallback;)V

    .line 1365
    goto/16 :goto_265

    .line 1337
    .end local v0    # "devid":I
    :sswitch_138
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1340
    .restart local v0    # "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1341
    .local v1, "mode":I
    new-instance v2, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$12;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$12;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->initTspRawData(IILvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;)V

    .line 1349
    goto/16 :goto_265

    .line 1324
    .end local v0    # "devid":I
    .end local v1    # "mode":I
    :sswitch_14d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1327
    .local v0, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1328
    .local v1, "isBefore":Z
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->setSpenEnable(IZ)I

    move-result v2

    .line 1329
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1330
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1332
    goto/16 :goto_265

    .line 1310
    .end local v0    # "enable":I
    .end local v1    # "isBefore":Z
    .end local v2    # "_hidl_out_retval":I
    :sswitch_167
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1313
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1314
    .local v1, "enable":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1315
    .local v2, "isBefore":Z
    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->setTspEnable(IIZ)I

    move-result v3

    .line 1316
    .local v3, "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1317
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1318
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1319
    goto/16 :goto_265

    .line 1298
    .end local v0    # "devid":I
    .end local v1    # "enable":I
    .end local v2    # "isBefore":Z
    .end local v3    # "_hidl_out_retval":I
    :sswitch_185
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->runSpenCmdNoRead(Ljava/lang/String;)I

    move-result v1

    .line 1302
    .local v1, "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1303
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1304
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1305
    goto/16 :goto_265

    .line 1285
    .end local v0    # "cmdname":Ljava/lang/String;
    .end local v1    # "_hidl_out_retval":I
    :sswitch_19b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1288
    .local v0, "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "cmdname":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->runTspCmdNoRead(ILjava/lang/String;)I

    move-result v2

    .line 1290
    .local v2, "_hidl_out_retval":I
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1291
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1292
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1293
    goto/16 :goto_265

    .line 1270
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    .end local v2    # "_hidl_out_retval":I
    :sswitch_1b5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$11;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$11;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getSpenCommandList(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenCommandListCallback;)V

    .line 1280
    goto/16 :goto_265

    .line 1255
    :sswitch_1c2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    new-instance v0, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$10;

    invoke-direct {v0, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$10;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getSpenPosition(Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getSpenPositionCallback;)V

    .line 1265
    goto/16 :goto_265

    .line 1239
    :sswitch_1cf
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, "cmdname":Ljava/lang/String;
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$9;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$9;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->runSpenCmd(Ljava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runSpenCmdCallback;)V

    .line 1250
    goto/16 :goto_265

    .line 1223
    .end local v0    # "cmdname":Ljava/lang/String;
    :sswitch_1e0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1226
    .local v0, "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$8;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$8;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspFodPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodPositionCallback;)V

    .line 1234
    goto/16 :goto_265

    .line 1207
    .end local v0    # "devid":I
    :sswitch_1f1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1210
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$7;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspFodInformation(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspFodInformationCallback;)V

    .line 1218
    goto :goto_265

    .line 1191
    .end local v0    # "devid":I
    :sswitch_201
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1194
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$6;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspAodActiveArea(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspAodActiveAreaCallback;)V

    .line 1202
    goto :goto_265

    .line 1175
    .end local v0    # "devid":I
    :sswitch_211
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1178
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$5;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspCommandList(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspCommandListCallback;)V

    .line 1186
    goto :goto_265

    .line 1159
    .end local v0    # "devid":I
    :sswitch_221
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1162
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$4;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspSupportFeature(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspSupportFeatureCallback;)V

    .line 1170
    goto :goto_265

    .line 1143
    .end local v0    # "devid":I
    :sswitch_231
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1146
    .restart local v0    # "devid":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$3;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getTspScrubPosition(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getTspScrubPositionCallback;)V

    .line 1154
    goto :goto_265

    .line 1126
    .end local v0    # "devid":I
    :sswitch_241
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1129
    .restart local v0    # "devid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1130
    .restart local v1    # "cmdname":Ljava/lang/String;
    new-instance v2, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$2;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->runTspCmd(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$runTspCmdCallback;)V

    .line 1138
    goto :goto_265

    .line 1110
    .end local v0    # "devid":I
    .end local v1    # "cmdname":Ljava/lang/String;
    :sswitch_255
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1113
    .local v0, "keycode":I
    new-instance v1, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub$1;-><init>(Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->getKeyCodePressed(ILvendor/samsung/hardware/sysinput/V1_0/ISehSysInputDev$getKeyCodePressedCallback;)V

    .line 1121
    nop

    .line 1549
    .end local v0    # "keycode":I
    :goto_265
    return-void

    :sswitch_data_266
    .sparse-switch
        0x1 -> :sswitch_255
        0x2 -> :sswitch_241
        0x3 -> :sswitch_231
        0x4 -> :sswitch_221
        0x5 -> :sswitch_211
        0x6 -> :sswitch_201
        0x7 -> :sswitch_1f1
        0x8 -> :sswitch_1e0
        0x9 -> :sswitch_1cf
        0xa -> :sswitch_1c2
        0xb -> :sswitch_1b5
        0xc -> :sswitch_19b
        0xd -> :sswitch_185
        0xe -> :sswitch_167
        0xf -> :sswitch_14d
        0x10 -> :sswitch_138
        0x11 -> :sswitch_127
        0x12 -> :sswitch_116
        0x13 -> :sswitch_104
        0x14 -> :sswitch_f2
        0x15 -> :sswitch_e5
        0x16 -> :sswitch_cf
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_40
        0xf494e54 -> :sswitch_38
        0xf4c5444 -> :sswitch_36
        0xf504e47 -> :sswitch_28
        0xf524546 -> :sswitch_16
        0xf535953 -> :sswitch_e
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 1061
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1089
    const-string v0, "vendor.samsung.hardware.sysinput@1.2::ISehSysInputDev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1090
    return-object p0

    .line 1092
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

    .line 1096
    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->registerService(Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 1051
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1083
    const/4 v0, 0x1

    return v0
.end method
