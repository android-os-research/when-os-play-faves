.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 940
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

    .line 999
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1000
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1001
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1002
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

    .line 971
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

    :array_4c
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

    :array_60
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

    .line 948
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.4::IWifiNanIface"

    const-string v1, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiNanIface"

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

    const-string p0, "android.hardware.wifi@1.4::IWifiNanIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1009
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

    const-string v2, "android.hardware.wifi@1.0::IWifiNanIface"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_330

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_360

    goto/16 :goto_32f

    .line 1449
    :sswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_32f

    .line 1438
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1441
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1442
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1428
    :sswitch_2d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->ping()V

    .line 1431
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1432
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1415
    :sswitch_3b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_32f

    .line 1381
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1384
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1386
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1388
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1389
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1390
    invoke-virtual {p1, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1391
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge v3, p2, :cond_89

    mul-int/lit8 v0, v3, 0x20

    int-to-long v0, v0

    .line 1395
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_81

    .line 1397
    array-length v4, v2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_81

    .line 1401
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 1398
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    const-wide/16 v0, 0x0

    .line 1405
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1407
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1409
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1370
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1373
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1374
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1358
    :sswitch_a8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1361
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1362
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1363
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1364
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1347
    :sswitch_be
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1350
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1351
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1331
    :pswitch_d0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1334
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 1335
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1336
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1337
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1338
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->configRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1339
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1340
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1341
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1315
    :pswitch_f6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1318
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 1319
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1320
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1321
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1322
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->enableRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1323
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1324
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1325
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1299
    :pswitch_11c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1302
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1303
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1304
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1305
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1306
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1307
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1308
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1283
    :pswitch_142
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1286
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1287
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1288
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1289
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1290
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1291
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1292
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1271
    :pswitch_168
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1274
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1275
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1276
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1277
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1258
    :pswitch_182
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1262
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1263
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1264
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1265
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1244
    :pswitch_19c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1247
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1248
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1249
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1250
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1251
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1252
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1230
    :pswitch_1ba
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1233
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 1234
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1235
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1236
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1237
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1238
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1217
    :pswitch_1d8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1220
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1221
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1222
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1204
    :pswitch_1f2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1208
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1209
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1210
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1190
    :pswitch_20c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1193
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 1194
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1195
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1196
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1197
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1177
    :pswitch_22a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1180
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1181
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1182
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1183
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1163
    :pswitch_244
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1166
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 1167
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1168
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1169
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1170
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1150
    :pswitch_262
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1153
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1154
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1155
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1156
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1136
    :pswitch_27c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1139
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 1140
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1141
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1142
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1143
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1124
    :pswitch_29a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1127
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1128
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1129
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_32f

    .line 1110
    :pswitch_2b0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1113
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1114
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1115
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1116
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1117
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_32f

    .line 1096
    :pswitch_2cd
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1099
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1100
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1101
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1102
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_32f

    .line 1084
    :pswitch_2ea
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1087
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1088
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1090
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_32f

    .line 1072
    :pswitch_2ff
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1075
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1076
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1077
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_32f

    .line 1057
    :pswitch_318
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_32f

    .line 1042
    :pswitch_324
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_32f
    return-void

    :pswitch_data_330
    .packed-switch 0x1
        :pswitch_324
        :pswitch_318
        :pswitch_2ff
        :pswitch_2ea
        :pswitch_2cd
        :pswitch_2b0
        :pswitch_29a
        :pswitch_27c
        :pswitch_262
        :pswitch_244
        :pswitch_22a
        :pswitch_20c
        :pswitch_1f2
        :pswitch_1d8
        :pswitch_1ba
        :pswitch_19c
        :pswitch_182
        :pswitch_168
        :pswitch_142
        :pswitch_11c
        :pswitch_f6
        :pswitch_d0
    .end packed-switch

    :sswitch_data_360
    .sparse-switch
        0xf43484e -> :sswitch_be
        0xf444247 -> :sswitch_a8
        0xf445343 -> :sswitch_96
        0xf485348 -> :sswitch_43
        0xf494e54 -> :sswitch_3b
        0xf504e47 -> :sswitch_2d
        0xf524546 -> :sswitch_1b
        0xf535953 -> :sswitch_13
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.4::IWifiNanIface"

    .line 1021
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

    .line 1028
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
