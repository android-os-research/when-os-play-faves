.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 959
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

    .line 1016
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1017
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 1018
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 1019
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

    .line 989
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
        0x9t
        -0x20t
        -0x75t
        0x5dt
        0x12t
        -0x4ft
        0x9t
        0x56t
        0x2et
        -0x33t
        -0x28t
        -0x78t
        0x25t
        0x32t
        -0x3t
        0x1ft
        0x2ct
        0x46t
        0x39t
        0x58t
        -0x72t
        0x7t
        0x76t
        -0x63t
        0x5ct
        0x73t
        -0x6at
        -0x49t
        -0x3bt
        -0x47t
        -0xdt
        0x4ft
    .end array-data

    :array_44
    .array-data 1
        -0x33t
        0x43t
        0x30t
        -0x3dt
        0x19t
        0x6bt
        -0x26t
        0x1dt
        0x64t
        0x2at
        0x32t
        -0x55t
        -0x2t
        0x23t
        -0x59t
        -0x2at
        0x4et
        -0x41t
        -0x43t
        -0x59t
        0x21t
        -0x6ct
        0x6t
        0x43t
        -0x51t
        0x68t
        0x67t
        -0x51t
        0x3bt
        0x3ft
        0xat
        -0x57t
    .end array-data

    :array_58
    .array-data 1
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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

    .line 967
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    const-string v2, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

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

    const-string p0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 1026
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

    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    const/16 v0, 0x20

    const-wide/16 v1, 0x6

    const-wide/16 v3, 0x0

    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    const/4 v6, 0x6

    packed-switch p1, :pswitch_data_25c

    const/4 p4, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_28c

    goto/16 :goto_25b

    .line 1467
    :sswitch_16
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_25b

    .line 1456
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1459
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1460
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_25b

    .line 1446
    :sswitch_30
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 1449
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_25b

    .line 1433
    :sswitch_3e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_25b

    .line 1399
    :sswitch_46
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1402
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1404
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1406
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    .line 1407
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    .line 1408
    invoke-virtual {p1, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1409
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, p2, 0x20

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    :goto_6c
    if-ge p4, p2, :cond_8a

    mul-int/lit8 v2, p4, 0x20

    int-to-long v5, v2

    .line 1413
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_82

    .line 1415
    array-length v7, v2

    if-ne v7, v0, :cond_82

    .line 1419
    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6c

    .line 1416
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1423
    :cond_8a
    invoke-virtual {p1, v3, v4, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1425
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_25b

    .line 1388
    :sswitch_95
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1391
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1392
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_25b

    .line 1376
    :sswitch_a7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1380
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1381
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1382
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_25b

    .line 1365
    :sswitch_bd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1368
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1369
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1370
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_25b

    .line 1356
    :pswitch_cf
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1359
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppFailure(I)V

    goto/16 :goto_25b

    .line 1347
    :pswitch_db
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1350
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppProgress(I)V

    goto/16 :goto_25b

    .line 1339
    :pswitch_e7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigSent()V

    goto/16 :goto_25b

    .line 1319
    :pswitch_ef
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1322
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [B

    const-wide/16 v1, 0x20

    .line 1325
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 1328
    invoke-virtual {v1, v3, v4, p4, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1332
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1333
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V

    goto/16 :goto_25b

    :pswitch_10e
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 1310
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1313
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->onEapFailure_1_1(I)V

    goto/16 :goto_25b

    .line 1301
    :pswitch_11c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1304
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    goto/16 :goto_25b

    .line 1292
    :pswitch_128
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1295
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    goto/16 :goto_25b

    .line 1284
    :pswitch_134
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    goto/16 :goto_25b

    .line 1265
    :pswitch_13c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1269
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1272
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p3

    .line 1277
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p2

    .line 1278
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventFail([BSS)V

    goto/16 :goto_25b

    .line 1257
    :pswitch_155
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    goto/16 :goto_25b

    .line 1239
    :pswitch_15d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    new-array p3, v6, [B

    .line 1244
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1247
    invoke-virtual {p2, v3, v4, p3, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1251
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    goto/16 :goto_25b

    .line 1231
    :pswitch_172
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onEapFailure()V

    goto/16 :goto_25b

    .line 1214
    :pswitch_17a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1218
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p2

    .line 1221
    invoke-virtual {p2, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1225
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    goto/16 :goto_25b

    .line 1195
    :pswitch_18b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1199
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1202
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 1208
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAssociationRejected([BIZ)V

    goto/16 :goto_25b

    .line 1176
    :pswitch_1a4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1180
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1183
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1187
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p3

    .line 1188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1189
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    goto/16 :goto_25b

    .line 1156
    :pswitch_1bd
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1160
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1163
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p3

    .line 1168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1170
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    goto/16 :goto_25b

    .line 1137
    :pswitch_1da
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1141
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1144
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1148
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p3

    .line 1149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1150
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    goto :goto_25b

    .line 1118
    :pswitch_1f2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1122
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1125
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 1130
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1131
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_25b

    .line 1097
    :pswitch_20a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-array p1, v6, [B

    .line 1101
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p3

    .line 1104
    invoke-virtual {p3, v3, v4, p1, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1108
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 1109
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1110
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 1111
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1112
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    goto :goto_25b

    .line 1077
    :pswitch_22a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-array p3, v6, [B

    .line 1082
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object p4

    .line 1085
    invoke-virtual {p4, v3, v4, p3, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1089
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 1090
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1091
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onStateChanged(I[BILjava/util/ArrayList;)V

    goto :goto_25b

    .line 1068
    :pswitch_246
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1071
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    goto :goto_25b

    .line 1059
    :pswitch_251
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1062
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    :goto_25b
    return-void

    :pswitch_data_25c
    .packed-switch 0x1
        :pswitch_251
        :pswitch_246
        :pswitch_22a
        :pswitch_20a
        :pswitch_1f2
        :pswitch_1da
        :pswitch_1bd
        :pswitch_1a4
        :pswitch_18b
        :pswitch_17a
        :pswitch_172
        :pswitch_15d
        :pswitch_155
        :pswitch_13c
        :pswitch_134
        :pswitch_128
        :pswitch_11c
        :pswitch_10e
        :pswitch_ef
        :pswitch_e7
        :pswitch_db
        :pswitch_cf
    .end packed-switch

    :sswitch_data_28c
    .sparse-switch
        0xf43484e -> :sswitch_bd
        0xf444247 -> :sswitch_a7
        0xf445343 -> :sswitch_95
        0xf485348 -> :sswitch_46
        0xf494e54 -> :sswitch_3e
        0xf504e47 -> :sswitch_30
        0xf524546 -> :sswitch_1e
        0xf535953 -> :sswitch_16
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 1038
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

    .line 1045
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
