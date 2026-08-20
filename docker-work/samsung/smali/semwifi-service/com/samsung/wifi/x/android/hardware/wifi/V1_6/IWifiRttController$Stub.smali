.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;
.super Landroid/os/HwBinder;
.source "IWifiRttController.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 958
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

    .line 1015
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1016
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1017
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1018
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

    .line 988
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
        -0x74t
        0x51t
        0x74t
        0x2bt
        0x25t
        0x40t
        -0x50t
        0x5t
        -0x13t
        -0x4ft
        0x6dt
        0x20t
        0x3t
        -0x48t
        0x7ft
        -0x72t
        -0x7et
        0x20t
        -0x1ft
        0x13t
        -0x4et
        0x34t
        -0x23t
        -0x45t
        0x13t
        0x3ft
        -0x6bt
        -0x18t
        0x68t
        0x37t
        -0x17t
        -0x56t
    .end array-data

    :array_44
    .array-data 1
        0x10t
        -0x43t
        0x6ft
        0x19t
        0x19t
        -0x74t
        0x28t
        0x1et
        -0x1et
        0x5t
        0x26t
        0x41t
        0x4t
        -0x72t
        -0x69t
        0xat
        -0x2at
        0x6bt
        0x73t
        0x2et
        0x4ft
        0x6ft
        -0x2t
        0x79t
        -0x60t
        -0xat
        -0x69t
        -0x16t
        0x15t
        0x76t
        0x1et
        0xft
    .end array-data

    :array_58
    .array-data 1
        0x76t
        0x6et
        -0x69t
        0x65t
        -0xbt
        -0x37t
        -0x39t
        0x59t
        -0x4et
        -0x59t
        0x63t
        -0x3et
        0x28t
        -0x7dt
        0x53t
        -0x5t
        0x5dt
        -0x11t
        -0xdt
        0x38t
        -0x64t
        0x2ct
        -0x3et
        -0x71t
        -0x7ft
        -0x29t
        -0x64t
        -0x6dt
        -0x69t
        0x4t
        -0x32t
        -0x75t
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

    .line 966
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.6::IWifiRttController"

    const-string v1, "android.hardware.wifi@1.4::IWifiRttController"

    const-string v2, "android.hardware.wifi@1.0::IWifiRttController"

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

    const-string p0, "android.hardware.wifi@1.6::IWifiRttController"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1025
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    const-wide/16 v2, 0x8

    const-string v4, "android.hardware.wifi@1.6::IWifiRttController"

    const-string v5, "android.hardware.wifi@1.4::IWifiRttController"

    const-string v6, "android.hardware.wifi@1.0::IWifiRttController"

    const/4 v10, 0x0

    packed-switch p1, :pswitch_data_2e0

    const-string v4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_30c

    goto/16 :goto_2df

    .line 1464
    :sswitch_18
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2df

    .line 1453
    :sswitch_20
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1456
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1457
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1458
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1443
    :sswitch_32
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->ping()V

    .line 1446
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1447
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1430
    :sswitch_40
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->setHALInstrumentation()V

    goto/16 :goto_2df

    .line 1396
    :sswitch_48
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1399
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1401
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1403
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1404
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1405
    invoke-virtual {v1, v2, v3, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1406
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6c
    if-ge v10, v4, :cond_8c

    mul-int/lit8 v3, v10, 0x20

    int-to-long v5, v3

    .line 1410
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_84

    .line 1412
    array-length v7, v3

    const/16 v8, 0x20

    if-ne v7, v8, :cond_84

    .line 1416
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    .line 1413
    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    const-wide/16 v3, 0x0

    .line 1420
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1422
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1424
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1385
    :sswitch_99
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1388
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1389
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1373
    :sswitch_ab
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    .line 1376
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1377
    invoke-virtual {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1378
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1362
    :sswitch_c1
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1365
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1366
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1347
    :pswitch_d3
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$7;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;->getCapabilities_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$getCapabilities_1_6Callback;)V

    goto/16 :goto_2df

    .line 1330
    :pswitch_e0
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1333
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;-><init>()V

    .line 1334
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1336
    new-instance v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResponder;

    invoke-direct {v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResponder;-><init>()V

    .line 1337
    invoke-virtual {v5, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1338
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;->enableResponder_1_6(ILcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1339
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1315
    :pswitch_10a
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$6;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;->getResponderInfo_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$getResponderInfo_1_6Callback;)V

    goto/16 :goto_2df

    .line 1302
    :pswitch_117
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1305
    invoke-static/range {p2 .. p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1306
    invoke-interface {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;->rangeRequest_1_6(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1307
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1308
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1309
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1290
    :pswitch_131
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttControllerEventCallback;

    move-result-object v1

    .line 1293
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController;->registerEventCallback_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1294
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1295
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1273
    :pswitch_14b
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1276
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 1277
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1279
    new-instance v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;

    invoke-direct {v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;-><init>()V

    .line 1280
    invoke-virtual {v5, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1281
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->enableResponder_1_4(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1282
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1283
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1258
    :pswitch_175
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$5;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->getResponderInfo_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$getResponderInfo_1_4Callback;)V

    goto/16 :goto_2df

    .line 1243
    :pswitch_182
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$4;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->getCapabilities_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController$getCapabilities_1_4Callback;)V

    goto/16 :goto_2df

    .line 1230
    :pswitch_18f
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1233
    invoke-static/range {p2 .. p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1234
    invoke-interface {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->rangeRequest_1_4(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1235
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1236
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1218
    :pswitch_1a9
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;

    move-result-object v1

    .line 1221
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttController;->registerEventCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1222
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1206
    :pswitch_1c3
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1209
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1210
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1211
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1189
    :pswitch_1d9
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1192
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 1193
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 1195
    new-instance v5, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;

    invoke-direct {v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;-><init>()V

    .line 1196
    invoke-virtual {v5, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1197
    invoke-interface {p0, v2, v3, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1198
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1199
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1174
    :pswitch_203
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$3;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    goto/16 :goto_2df

    .line 1160
    :pswitch_210
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1163
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;-><init>()V

    .line 1164
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1165
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLcr(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1166
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1167
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1168
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1146
    :pswitch_22e
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1149
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    .line 1150
    invoke-virtual {v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1151
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLci(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1152
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1153
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2df

    .line 1131
    :pswitch_24c
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$2;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    goto/16 :goto_2df

    .line 1098
    :pswitch_259
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 1101
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, 0x10

    .line 1103
    invoke-virtual {v1, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 1105
    invoke-virtual {v4, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v2, v13, 0x6

    int-to-long v2, v2

    .line 1107
    invoke-virtual {v4}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p2

    .line 1106
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 1110
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    move v2, v10

    :goto_283
    if-ge v2, v13, :cond_294

    const/4 v3, 0x6

    new-array v4, v3, [B

    mul-int/lit8 v5, v2, 0x6

    int-to-long v5, v5

    .line 1115
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1118
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_283

    .line 1122
    :cond_294
    invoke-interface {p0, v11, v12}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1123
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1124
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2df

    .line 1085
    :pswitch_2a2
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1088
    invoke-static/range {p2 .. p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1089
    invoke-interface {p0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1090
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1092
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2df

    .line 1073
    :pswitch_2bb
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;

    move-result-object v1

    .line 1076
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object v0

    .line 1077
    invoke-virtual {v9, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {v0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2df

    .line 1058
    :pswitch_2d4
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$1;

    invoke-direct {v1, p0, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getBoundIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V

    :goto_2df
    return-void

    :pswitch_data_2e0
    .packed-switch 0x1
        :pswitch_2d4
        :pswitch_2bb
        :pswitch_2a2
        :pswitch_259
        :pswitch_24c
        :pswitch_22e
        :pswitch_210
        :pswitch_203
        :pswitch_1d9
        :pswitch_1c3
        :pswitch_1a9
        :pswitch_18f
        :pswitch_182
        :pswitch_175
        :pswitch_14b
        :pswitch_131
        :pswitch_117
        :pswitch_10a
        :pswitch_e0
        :pswitch_d3
    .end packed-switch

    :sswitch_data_30c
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

    const-string v0, "android.hardware.wifi@1.6::IWifiRttController"

    .line 1037
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

    .line 1044
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

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
