.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 899
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

    .line 956
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 957
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 958
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 959
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

    .line 929
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

    :array_44
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

    :array_58
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

    .line 907
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.5::IWifiNanIfaceEventCallback"

    const-string v1, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    const-string v2, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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

    const-string p0, "android.hardware.wifi@1.5::IWifiNanIfaceEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 966
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

    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    packed-switch p1, :pswitch_data_2e8

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_324

    goto/16 :goto_2e7

    .line 1405
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2e7

    .line 1394
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1397
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1398
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1399
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e7

    .line 1384
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 1387
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1388
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e7

    .line 1371
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_2e7

    .line 1337
    :sswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1340
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1342
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1344
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1345
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1346
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1347
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge p4, p2, :cond_85

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1351
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7d

    .line 1353
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 1357
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_65

    .line 1354
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v1, 0x0

    .line 1361
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1363
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1365
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e7

    .line 1326
    :sswitch_92
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1329
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1330
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e7

    .line 1314
    :sswitch_a4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1318
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1319
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1320
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e7

    .line 1303
    :sswitch_ba
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1306
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1307
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1308
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e7

    :pswitch_cc
    const-string p1, "android.hardware.wifi@1.5::IWifiNanIfaceEventCallback"

    .line 1290
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1293
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1294
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1295
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;-><init>()V

    .line 1296
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1297
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanCapabilities;)V

    goto/16 :goto_2e7

    .line 1280
    :pswitch_ea
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;-><init>()V

    .line 1283
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1284
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;)V

    goto/16 :goto_2e7

    .line 1270
    :pswitch_fa
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;-><init>()V

    .line 1273
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1274
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->eventDataPathConfirm_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;)V

    goto/16 :goto_2e7

    .line 1261
    :pswitch_10a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1264
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathTerminated(I)V

    goto/16 :goto_2e7

    .line 1251
    :pswitch_116
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 1254
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1255
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    goto/16 :goto_2e7

    .line 1241
    :pswitch_126
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 1244
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1245
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    goto/16 :goto_2e7

    .line 1230
    :pswitch_136
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1233
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1234
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1235
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1220
    :pswitch_14a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 1223
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1224
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    goto/16 :goto_2e7

    .line 1210
    :pswitch_15a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1213
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1214
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatchExpired(BI)V

    goto/16 :goto_2e7

    .line 1200
    :pswitch_16a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 1203
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1204
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V

    goto/16 :goto_2e7

    .line 1189
    :pswitch_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1192
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1193
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1194
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1178
    :pswitch_18e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1181
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1182
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1183
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1168
    :pswitch_1a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1171
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1172
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1158
    :pswitch_1b2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 1161
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1162
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V

    goto/16 :goto_2e7

    .line 1147
    :pswitch_1c2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1150
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1151
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1152
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1136
    :pswitch_1d6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1139
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1140
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1141
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1124
    :pswitch_1ea
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1127
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1128
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1129
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1130
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V

    goto/16 :goto_2e7

    .line 1113
    :pswitch_202
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1116
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1117
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1118
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1102
    :pswitch_216
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1105
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1106
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1107
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1091
    :pswitch_22a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1094
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1095
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1096
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1080
    :pswitch_23e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1083
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1084
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1085
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2e7

    .line 1068
    :pswitch_252
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1071
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1072
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1073
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1074
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto/16 :goto_2e7

    .line 1057
    :pswitch_26a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1060
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1061
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1062
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2e7

    .line 1045
    :pswitch_27d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1048
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1049
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1050
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1051
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto :goto_2e7

    .line 1034
    :pswitch_294
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1037
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1038
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1039
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2e7

    .line 1023
    :pswitch_2a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1026
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1027
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1028
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2e7

    .line 1012
    :pswitch_2ba
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1015
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1016
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1017
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2e7

    .line 999
    :pswitch_2cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1002
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1003
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1004
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 1005
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1006
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V

    :goto_2e7
    return-void

    :pswitch_data_2e8
    .packed-switch 0x1
        :pswitch_2cd
        :pswitch_2ba
        :pswitch_2a7
        :pswitch_294
        :pswitch_27d
        :pswitch_26a
        :pswitch_252
        :pswitch_23e
        :pswitch_22a
        :pswitch_216
        :pswitch_202
        :pswitch_1ea
        :pswitch_1d6
        :pswitch_1c2
        :pswitch_1b2
        :pswitch_1a2
        :pswitch_18e
        :pswitch_17a
        :pswitch_16a
        :pswitch_15a
        :pswitch_14a
        :pswitch_136
        :pswitch_126
        :pswitch_116
        :pswitch_10a
        :pswitch_fa
        :pswitch_ea
        :pswitch_cc
    .end packed-switch

    :sswitch_data_324
    .sparse-switch
        0xf43484e -> :sswitch_ba
        0xf444247 -> :sswitch_a4
        0xf445343 -> :sswitch_92
        0xf485348 -> :sswitch_3f
        0xf494e54 -> :sswitch_37
        0xf504e47 -> :sswitch_29
        0xf524546 -> :sswitch_17
        0xf535953 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.5::IWifiNanIfaceEventCallback"

    .line 978
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

    .line 985
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
