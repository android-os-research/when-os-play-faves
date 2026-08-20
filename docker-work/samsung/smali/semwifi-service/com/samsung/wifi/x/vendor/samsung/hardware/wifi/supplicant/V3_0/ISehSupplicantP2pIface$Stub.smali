.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "ISehSupplicantP2pIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1078
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

    .line 1133
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1134
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1135
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1136
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

    .line 1107
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
        -0x51t
        -0x6bt
        -0x73t
        0x74t
        -0x1t
        0x66t
        -0x5at
        0x76t
        0x1et
        0x6bt
        -0x26t
        0xet
        0x17t
        -0x71t
        0x3bt
        0x9t
        0x10t
        0x78t
        0x12t
        0x2bt
        -0xbt
        -0x8t
        -0x74t
        -0x77t
        0x3bt
        0x0t
        -0x1ct
        0x5ct
        -0x3dt
        0x72t
        -0x3et
        0x7at
    .end array-data

    :array_3c
    .array-data 1
        -0xat
        -0x37t
        -0x61t
        0x21t
        0x5t
        0x6et
        0x25t
        0x2et
        -0x6t
        -0x22t
        0x7ct
        0x4bt
        -0x5at
        -0x1ft
        -0x23t
        0x7dt
        0x7ct
        0x2ft
        0x5bt
        0x49t
        -0x29t
        0x29t
        -0x6bt
        -0x55t
        0x4et
        0x67t
        -0x4ct
        0x30t
        0x2ft
        0x7ct
        0x27t
        0x49t
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

    .line 1086
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIface"

    const-string v1, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantIface"

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

    const-string p0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1143
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x6

    const-wide/16 v2, 0x0

    const-string p4, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantIface"

    const/4 v4, 0x6

    const-string v5, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIface"

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_266

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_28e

    goto/16 :goto_264

    .line 1537
    :sswitch_14
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_264

    .line 1526
    :sswitch_1c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1529
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1530
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1516
    :sswitch_2e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->ping()V

    .line 1519
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1503
    :sswitch_3c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_264

    .line 1469
    :sswitch_44
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1472
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1474
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1476
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1477
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1478
    invoke-virtual {p1, v0, v1, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1479
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6a
    if-ge v6, p2, :cond_8a

    mul-int/lit8 v0, v6, 0x20

    int-to-long v0, v0

    .line 1483
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_82

    .line 1485
    array-length v5, v4

    const/16 v7, 0x20

    if-ne v5, v7, :cond_82

    .line 1489
    invoke-virtual {p4, v0, v1, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 1486
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1493
    :cond_8a
    invoke-virtual {p1, v2, v3, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1495
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1458
    :sswitch_95
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1461
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1462
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1446
    :sswitch_a7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1449
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1450
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1451
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1452
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1435
    :sswitch_bd
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1438
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1439
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1440
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1421
    :pswitch_cf
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1424
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1425
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1426
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->setNoaBandwidth(Ljava/lang/String;ZI)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1427
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1407
    :pswitch_ed
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1410
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1411
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1412
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->setNoa(Ljava/lang/String;ZI)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1413
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1414
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1415
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1396
    :pswitch_10b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->stopListenOffloading()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1399
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1400
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1381
    :pswitch_11d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1384
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1386
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1387
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->startListenOffloading(IIII)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1388
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1389
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1390
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1365
    :pswitch_13f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1368
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$5;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$5;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->getPeerInfo(Ljava/lang/String;Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$getPeerInfoCallback;)V

    goto/16 :goto_264

    .line 1340
    :pswitch_150
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v4, [B

    .line 1345
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1348
    invoke-virtual {p2, v2, v3, p4, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1352
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$4;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$4;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->getPeerAttribute(Ljava/lang/String;[BLcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$getPeerAttributeCallback;)V

    goto/16 :goto_264

    .line 1327
    :pswitch_16a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1331
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->sendCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1332
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1333
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1334
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1315
    :pswitch_184
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1318
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->listen(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1319
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1320
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1321
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1294
    :pswitch_19a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v4, [B

    .line 1298
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 1301
    invoke-virtual {p4, v2, v3, p1, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1305
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1306
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->removeClient([BZ)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1307
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1308
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1281
    :pswitch_1b9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 1284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1285
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->addGroupSpecificFrequency(ZI)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1286
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1287
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1269
    :pswitch_1d3
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1272
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->search(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1273
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1274
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_264

    .line 1257
    :pswitch_1e9
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1260
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->findGoOperationFrequency(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1261
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1262
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1263
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_264

    .line 1245
    :pswitch_1fe
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1248
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->findChannel(I)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1249
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1250
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1251
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_264

    .line 1234
    :pswitch_213
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->findSocialChannel()Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1237
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1238
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1239
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_264

    .line 1222
    :pswitch_224
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;

    move-result-object p1

    .line 1225
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;

    move-result-object p0

    .line 1226
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1227
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/SehSupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_264

    .line 1206
    :pswitch_23d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1209
    new-instance p2, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$3;

    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$3;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getNetwork(ILcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getNetworkCallback;)V

    goto :goto_264

    .line 1191
    :pswitch_24d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$2;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getType(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getTypeCallback;)V

    goto :goto_264

    .line 1176
    :pswitch_259
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    new-instance p1, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub$1;-><init>(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface;->getName(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantIface$getNameCallback;)V

    :goto_264
    return-void

    nop

    :pswitch_data_266
    .packed-switch 0x1
        :pswitch_259
        :pswitch_24d
        :pswitch_23d
        :pswitch_224
        :pswitch_213
        :pswitch_1fe
        :pswitch_1e9
        :pswitch_1d3
        :pswitch_1b9
        :pswitch_19a
        :pswitch_184
        :pswitch_16a
        :pswitch_150
        :pswitch_13f
        :pswitch_11d
        :pswitch_10b
        :pswitch_ed
        :pswitch_cf
    .end packed-switch

    :sswitch_data_28e
    .sparse-switch
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_44
        0xf494e54 -> :sswitch_3c
        0xf504e47 -> :sswitch_2e
        0xf524546 -> :sswitch_1c
        0xf535953 -> :sswitch_14
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "vendor.samsung.hardware.wifi.supplicant@3.0::ISehSupplicantP2pIface"

    .line 1155
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

    .line 1162
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
