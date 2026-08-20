.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIfaceEventCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 885
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

    .line 940
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 941
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 942
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 943
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

    .line 914
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

    :array_3c
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

    .line 893
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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

    const-string p0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 950
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

    packed-switch p1, :pswitch_data_2ca

    const/4 p4, 0x0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_304

    goto/16 :goto_2c9

    .line 1376
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1378
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2c9

    .line 1365
    :sswitch_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1368
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1369
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1370
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2c9

    .line 1355
    :sswitch_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 1358
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1359
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2c9

    .line 1342
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_2c9

    .line 1308
    :sswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1311
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1313
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1315
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1316
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1317
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1318
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_65
    if-ge p4, p2, :cond_85

    mul-int/lit8 v1, p4, 0x20

    int-to-long v1, v1

    .line 1322
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7d

    .line 1324
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7d

    .line 1328
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_65

    .line 1325
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    const-wide/16 v1, 0x0

    .line 1332
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1334
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1336
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2c9

    .line 1297
    :sswitch_92
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1300
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1301
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2c9

    .line 1285
    :sswitch_a4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1288
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1289
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1290
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1291
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2c9

    .line 1274
    :sswitch_ba
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1277
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1278
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2c9

    .line 1264
    :pswitch_cc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1266
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;-><init>()V

    .line 1267
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1268
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathScheduleUpdateInd;)V

    goto/16 :goto_2c9

    .line 1254
    :pswitch_dc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;-><init>()V

    .line 1257
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1258
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->eventDataPathConfirm_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;)V

    goto/16 :goto_2c9

    .line 1245
    :pswitch_ec
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1248
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathTerminated(I)V

    goto/16 :goto_2c9

    .line 1235
    :pswitch_f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 1238
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1239
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    goto/16 :goto_2c9

    .line 1225
    :pswitch_108
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 1228
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1229
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    goto/16 :goto_2c9

    .line 1214
    :pswitch_118
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1217
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1218
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1219
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1204
    :pswitch_12c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 1207
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1208
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    goto/16 :goto_2c9

    .line 1194
    :pswitch_13c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1198
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatchExpired(BI)V

    goto/16 :goto_2c9

    .line 1184
    :pswitch_14c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 1187
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1188
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V

    goto/16 :goto_2c9

    .line 1173
    :pswitch_15c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1176
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1177
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1178
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1162
    :pswitch_170
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 1165
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1166
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1167
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1152
    :pswitch_184
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1155
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1156
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1142
    :pswitch_194
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;

    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 1145
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1146
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V

    goto/16 :goto_2c9

    .line 1131
    :pswitch_1a4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1134
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1135
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1136
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1120
    :pswitch_1b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1123
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1124
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1108
    :pswitch_1cc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1111
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1112
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1114
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V

    goto/16 :goto_2c9

    .line 1097
    :pswitch_1e4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1100
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1101
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1102
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1086
    :pswitch_1f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1089
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1090
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1091
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1075
    :pswitch_20c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1078
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1079
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1080
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1064
    :pswitch_220
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1067
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1068
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1069
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto/16 :goto_2c9

    .line 1052
    :pswitch_234
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1055
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1056
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1057
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1058
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto/16 :goto_2c9

    .line 1041
    :pswitch_24c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1044
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1045
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1046
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2c9

    .line 1029
    :pswitch_25f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1032
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1033
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1034
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1035
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    goto :goto_2c9

    .line 1018
    :pswitch_276
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1021
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1022
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1023
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2c9

    .line 1007
    :pswitch_289
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1010
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1011
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1012
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2c9

    .line 996
    :pswitch_29c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 999
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 1000
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1001
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    goto :goto_2c9

    .line 983
    :pswitch_2af
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 986
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 987
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 988
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 989
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 990
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V

    :goto_2c9
    return-void

    :pswitch_data_2ca
    .packed-switch 0x1
        :pswitch_2af
        :pswitch_29c
        :pswitch_289
        :pswitch_276
        :pswitch_25f
        :pswitch_24c
        :pswitch_234
        :pswitch_220
        :pswitch_20c
        :pswitch_1f8
        :pswitch_1e4
        :pswitch_1cc
        :pswitch_1b8
        :pswitch_1a4
        :pswitch_194
        :pswitch_184
        :pswitch_170
        :pswitch_15c
        :pswitch_14c
        :pswitch_13c
        :pswitch_12c
        :pswitch_118
        :pswitch_108
        :pswitch_f8
        :pswitch_ec
        :pswitch_dc
        :pswitch_cc
    .end packed-switch

    :sswitch_data_304
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

    const-string v0, "android.hardware.wifi@1.2::IWifiNanIfaceEventCallback"

    .line 962
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

    .line 969
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
