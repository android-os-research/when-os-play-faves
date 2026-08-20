.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;
.super Landroid/os/HwBinder;
.source "IHostapd.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1202
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

    .line 1255
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1256
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1257
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1258
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

    .line 1230
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
        -0x12t
        0x8t
        0x28t
        0xdt
        -0x1et
        0x1ct
        -0x4ct
        0x1et
        0x3et
        -0x3et
        0x6dt
        0x6et
        -0x2at
        0x36t
        -0x39t
        0x1t
        -0x49t
        -0x9t
        0x5t
        0x16t
        -0x19t
        0x1ft
        -0x4et
        0x2ft
        0x4ft
        -0x1at
        0xat
        0x13t
        -0x1at
        0x3t
        -0xct
        0x6t
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

    .line 1210
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.hostapd@1.0::IHostapd"

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

    const-string p0, "android.hardware.wifi.hostapd@1.0::IHostapd"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1265
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

    const/4 p4, 0x1

    const-string v0, "android.hardware.wifi.hostapd@1.0::IHostapd"

    const/4 v1, 0x0

    if-eq p1, p4, :cond_e9

    const/4 p4, 0x2

    if-eq p1, p4, :cond_d4

    const/4 p4, 0x3

    if-eq p1, p4, :cond_cd

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_10a

    goto/16 :goto_109

    .line 1435
    :sswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->notifySyspropsChanged()V

    goto/16 :goto_109

    .line 1424
    :sswitch_1b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1427
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1428
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1429
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_109

    .line 1414
    :sswitch_2d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->ping()V

    .line 1417
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_109

    .line 1401
    :sswitch_3b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->setHALInstrumentation()V

    goto/16 :goto_109

    .line 1367
    :sswitch_43
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1370
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1372
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1374
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v2, 0x8

    .line 1375
    invoke-virtual {p1, v2, v3, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    .line 1376
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1377
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_69
    if-ge v1, p2, :cond_89

    mul-int/lit8 v0, v1, 0x20

    int-to-long v2, v0

    .line 1381
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_81

    .line 1383
    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_81

    .line 1387
    invoke-virtual {p4, v2, v3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1384
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    const-wide/16 v0, 0x0

    .line 1391
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1393
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_109

    .line 1356
    :sswitch_96
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1359
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1360
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_109

    .line 1344
    :sswitch_a7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1347
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1348
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1349
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1350
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_109

    .line 1333
    :sswitch_bc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1336
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1337
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1338
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_109

    .line 1325
    :cond_cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->terminate()V

    goto :goto_109

    .line 1313
    :cond_d4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1316
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->removeAccessPoint(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1317
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1318
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1319
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_109

    .line 1298
    :cond_e9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    .line 1301
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1302
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 1303
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1304
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->addAccessPoint(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    move-result-object p0

    .line 1305
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1306
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1307
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_109
    return-void

    :sswitch_data_10a
    .sparse-switch
        0xf43484e -> :sswitch_bc
        0xf444247 -> :sswitch_a7
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

    const-string v0, "android.hardware.wifi.hostapd@1.0::IHostapd"

    .line 1277
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

    .line 1284
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

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
