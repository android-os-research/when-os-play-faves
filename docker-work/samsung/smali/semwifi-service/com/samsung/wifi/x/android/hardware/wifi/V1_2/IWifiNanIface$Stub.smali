.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "IWifiNanIface.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 908
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

    .line 965
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 966
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v0, 0x0

    .line 967
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v0, 0x0

    .line 968
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

    .line 938
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

    :array_44
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

    :array_58
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

    .line 916
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIface"

    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

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

    const-string p0, "android.hardware.wifi@1.2::IWifiNanIface"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 975
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

    const-string p4, "android.hardware.wifi@1.0::IWifiIface"

    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    const-string v1, "android.hardware.wifi@1.0::IWifiNanIface"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_2e2

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_30e

    goto/16 :goto_2e1

    .line 1383
    :sswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_2e1

    .line 1372
    :sswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    move-result-object p0

    .line 1375
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1376
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1377
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1362
    :sswitch_2b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->ping()V

    .line 1365
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1366
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1349
    :sswitch_39
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->setHALInstrumentation()V

    goto/16 :goto_2e1

    .line 1315
    :sswitch_41
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1318
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1320
    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1322
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    .line 1323
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    .line 1324
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1325
    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_67
    if-ge v2, p2, :cond_87

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    .line 1329
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_7f

    .line 1331
    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 1335
    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 1332
    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    const-wide/16 v0, 0x0

    .line 1339
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1341
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1343
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1304
    :sswitch_94
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 1307
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1308
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1292
    :sswitch_a6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1295
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1296
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1297
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1298
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1281
    :sswitch_bc
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    .line 1284
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1285
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1286
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1265
    :pswitch_ce
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1268
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1269
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1270
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1271
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1272
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1273
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1274
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1275
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1249
    :pswitch_f4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1252
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1253
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1254
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 1255
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1256
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1257
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1258
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1259
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1237
    :pswitch_11a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1240
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1241
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1242
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1243
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1224
    :pswitch_134
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1228
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1229
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1230
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1210
    :pswitch_14e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1213
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 1214
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1215
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1216
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1217
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1218
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1196
    :pswitch_16c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1199
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 1200
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1201
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1202
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1203
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1204
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1183
    :pswitch_18a
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1186
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1187
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1188
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1170
    :pswitch_1a4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1174
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1175
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1176
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1156
    :pswitch_1be
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1159
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 1160
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1161
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1162
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1143
    :pswitch_1dc
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1146
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1147
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1148
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1149
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1129
    :pswitch_1f6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1132
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 1133
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1134
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1135
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1136
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1116
    :pswitch_214
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 1120
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1121
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1123
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1102
    :pswitch_22e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1105
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 1106
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1107
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1108
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1110
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1090
    :pswitch_24c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1093
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1094
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1095
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_2e1

    .line 1076
    :pswitch_262
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1079
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 1080
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1081
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1082
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2e1

    .line 1062
    :pswitch_27f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1065
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 1066
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1067
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1068
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1069
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2e1

    .line 1050
    :pswitch_29c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    move-result p1

    .line 1053
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1054
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2e1

    .line 1038
    :pswitch_2b1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    move-result-object p1

    .line 1041
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    move-result-object p0

    .line 1042
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_2e1

    .line 1023
    :pswitch_2ca
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub$2;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    goto :goto_2e1

    .line 1008
    :pswitch_2d6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub$1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    :goto_2e1
    return-void

    :pswitch_data_2e2
    .packed-switch 0x1
        :pswitch_2d6
        :pswitch_2ca
        :pswitch_2b1
        :pswitch_29c
        :pswitch_27f
        :pswitch_262
        :pswitch_24c
        :pswitch_22e
        :pswitch_214
        :pswitch_1f6
        :pswitch_1dc
        :pswitch_1be
        :pswitch_1a4
        :pswitch_18a
        :pswitch_16c
        :pswitch_14e
        :pswitch_134
        :pswitch_11a
        :pswitch_f4
        :pswitch_ce
    .end packed-switch

    :sswitch_data_30e
    .sparse-switch
        0xf43484e -> :sswitch_bc
        0xf444247 -> :sswitch_a6
        0xf445343 -> :sswitch_94
        0xf485348 -> :sswitch_41
        0xf494e54 -> :sswitch_39
        0xf504e47 -> :sswitch_2b
        0xf524546 -> :sswitch_19
        0xf535953 -> :sswitch_11
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.wifi@1.2::IWifiNanIface"

    .line 987
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

    .line 994
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
