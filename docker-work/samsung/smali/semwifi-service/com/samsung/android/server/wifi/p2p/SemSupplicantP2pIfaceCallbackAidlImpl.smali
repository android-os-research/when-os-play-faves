.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;
.source "SemSupplicantP2pIfaceCallbackAidlImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceCallbackAidlImpl"

.field private static sVerboseLoggingEnabled:Z = true


# instance fields
.field private final mInterface:Ljava/lang/String;

.field private final mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-void
.end method

.method private createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 4

    .line 262
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 266
    sget-object v0, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->ANY_MAC_BYTES:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_e

    move-object p1, p2

    .line 272
    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    const-string p2, "Could not decode MAC address"

    .line 274
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 57
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    .line 61
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SemSupplicantP2pIfaceCallbackAidlImpl"

    .line 62
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "5b8bcab6b43177dffdec5873e84205b04757cc9d"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;IBI[B)V
    .registers 10

    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    if-nez p4, :cond_a

    const-string p0, "Missing device name."

    .line 71
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_a
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 75
    iput-object p4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 77
    :try_start_11
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_86

    .line 84
    :try_start_17
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->wpsDevTypeStringFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_7f

    .line 91
    iput p6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 92
    iput p7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 93
    iput p5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 p1, 0x3

    .line 94
    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz p8, :cond_59

    .line 96
    array-length p2, p8

    const/4 p3, 0x6

    if-lt p2, p3, :cond_59

    .line 97
    new-instance p2, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 p3, 0x0

    aget-byte p3, p8, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    const/4 p4, 0x1

    aget-byte p4, p8, p4

    and-int/lit16 p4, p4, 0xff

    add-int/2addr p3, p4

    const/4 p4, 0x2

    aget-byte p4, p8, p4

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x8

    aget-byte p1, p8, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p4, p1

    const/4 p1, 0x4

    aget-byte p1, p8, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    const/4 p5, 0x5

    aget-byte p5, p8, p5

    and-int/lit16 p5, p5, 0xff

    add-int/2addr p1, p5

    invoke-direct {p2, p3, p4, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 105
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Device discovered on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_7f
    move-exception p0

    const-string p2, "Could not encode device primary type."

    .line 87
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_86
    move-exception p0

    const-string p2, "Could not decode device address."

    .line 79
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDeviceFoundWithVendorElements([B[B[BLjava/lang/String;IBI[B[B[B)V
    .registers 13

    .line 358
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 359
    iput-object p4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v0, "SemSupplicantP2pIfaceCallbackAidlImpl"

    if-nez p4, :cond_11

    const-string p0, "Missing device name."

    .line 361
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 366
    :cond_11
    :try_start_11
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_102

    .line 373
    :try_start_17
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->wpsDevTypeStringFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_fb

    .line 380
    iput p6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 381
    iput p7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 382
    iput p5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 p2, 0x3

    .line 383
    iput p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x0

    if-eqz p8, :cond_59

    .line 385
    array-length p6, p8

    const/4 p7, 0x6

    if-lt p6, p7, :cond_59

    .line 386
    new-instance p6, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte p7, p8, p5

    and-int/lit16 p7, p7, 0xff

    shl-int/lit8 p7, p7, 0x8

    aget-byte v0, p8, p3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p7, v0

    aget-byte v0, p8, p4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p2, p8, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr v0, p2

    const/4 p2, 0x4

    aget-byte p2, p8, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    const/4 v1, 0x5

    aget-byte p8, p8, v1

    and-int/lit16 p8, p8, 0xff

    add-int/2addr p2, p8

    invoke-direct {p6, p7, v0, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object p6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    :cond_59
    if-eqz p9, :cond_6e

    .line 391
    array-length p2, p9

    if-lt p2, p4, :cond_6e

    .line 392
    iget-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte p4, p9, p5

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x8

    aget-byte p3, p9, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p4, p3

    invoke-virtual {p2, p4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setR2DeviceInfo(I)V

    :cond_6e
    if-eqz p10, :cond_d5

    .line 396
    array-length p2, p10

    if-lez p2, :cond_d5

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Vendor Element Bytes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p10}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 398
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    :try_start_90
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 402
    :goto_95
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p4

    const/4 p6, -0x1

    if-eq p4, p6, :cond_d2

    .line 404
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p7

    if-ne p7, p6, :cond_a3

    goto :goto_d2

    .line 406
    :cond_a3
    new-array p8, p7, [B

    .line 407
    invoke-virtual {p3, p8, p5, p7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p9

    if-eq p6, p9, :cond_d2

    if-eq p7, p9, :cond_ae

    goto :goto_d2

    :cond_ae
    const/16 p6, 0xdd

    if-eq p4, p6, :cond_b3

    goto :goto_95

    .line 410
    :cond_b3
    new-instance p6, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {p6, p4, p5, p8}, Landroid/net/wifi/ScanResult$InformationElement;-><init>(II[B)V

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_bb} :catch_bc

    goto :goto_95

    :catch_bc
    move-exception p2

    .line 413
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot parse vendor element bytes: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 416
    :cond_d2
    :goto_d2
    invoke-virtual {p1, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->setVendorElements(Ljava/util/List;)V

    .line 419
    :cond_d5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device discovered on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 420
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_fb
    move-exception p0

    const-string p1, "Could not encode device primary type."

    .line 376
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_102
    move-exception p0

    const-string p1, "Could not decode device address."

    .line 368
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDeviceLost([B)V
    .registers 4

    .line 111
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 114
    :try_start_5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_34

    const/4 p1, 0x4

    .line 120
    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device lost on "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_34
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceCallbackAidlImpl"

    const-string v0, "Could not decode device address."

    .line 116
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFindStopped()V
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search stopped on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGoNegotiationCompleted(I)V
    .registers 3

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Group Owner negotiation completed with status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGoNegotiationRequest([BI)V
    .registers 5

    .line 133
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 136
    :try_start_5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_37

    .line 141
    new-instance p1, Landroid/net/wifi/WpsInfo;

    invoke-direct {p1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2c

    const/4 p1, 0x4

    const/4 v1, 0x0

    if-eq p2, p1, :cond_27

    const/4 p1, 0x5

    if-eq p2, p1, :cond_21

    .line 154
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_30

    .line 151
    :cond_21
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 p2, 0x2

    iput p2, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_30

    .line 148
    :cond_27
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, p1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_30

    .line 145
    :cond_2c
    iget-object p2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput p1, p2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 158
    :goto_30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGoNegotiationRequest(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pConfig;)V

    :catch_37
    return-void
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .registers 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group formation failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupFormationSuccess()V
    .registers 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group formation successful on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupFrequencyChanged(Ljava/lang/String;I)V
    .registers 4

    .line 302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Frequency changed event on "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". New frequency: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "SemSupplicantP2pIfaceCallbackAidlImpl"

    const-string p1, "Missing group name."

    .line 225
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 230
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 231
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 233
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ)V
    .registers 11

    const-string p5, "SemSupplicantP2pIfaceCallbackAidlImpl"

    if-nez p1, :cond_a

    const-string p0, "Missing group interface name."

    .line 181
    invoke-static {p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 188
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 192
    :try_start_30
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_70

    .line 199
    invoke-virtual {v0, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 201
    invoke-virtual {v0, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    if-eqz p8, :cond_4f

    const/4 p1, -0x2

    .line 204
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_53

    :cond_4f
    const/4 p1, -0x1

    .line 206
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 209
    :goto_53
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 212
    :try_start_58
    invoke-static {p7}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_69

    .line 218
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_69
    move-exception p0

    const-string p1, "Could not decode Group Owner address."

    .line 214
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_70
    move-exception p0

    const-string p1, "Could not encode SSID."

    .line 195
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onInvitationReceived([B[B[BII)V
    .registers 6

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invitation received on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onInvitationResult([BI)V
    .registers 3

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invitation completed with status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBILjava/lang/String;)V
    .registers 6

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Provision discovery "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_f

    const-string p1, "request"

    goto :goto_11

    :cond_f
    const-string p1, "response"

    :goto_11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for WPS Config method: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onR2DeviceFound([B[B[BLjava/lang/String;IBI[B[B)V
    .registers 12

    .line 310
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 311
    iput-object p4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v0, "SemSupplicantP2pIfaceCallbackAidlImpl"

    if-nez p4, :cond_11

    const-string p0, "Missing device name."

    .line 313
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_11
    :try_start_11
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_a7

    .line 325
    :try_start_17
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->wpsDevTypeStringFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_a0

    .line 332
    iput p6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 333
    iput p7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 334
    iput p5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 p2, 0x3

    .line 335
    iput p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x2

    if-eqz p8, :cond_59

    .line 337
    array-length p6, p8

    const/4 p7, 0x6

    if-lt p6, p7, :cond_59

    .line 338
    new-instance p6, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte p7, p8, p4

    and-int/lit16 p7, p7, 0xff

    shl-int/lit8 p7, p7, 0x8

    aget-byte v0, p8, p3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p7, v0

    aget-byte v0, p8, p5

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte p2, p8, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr v0, p2

    const/4 p2, 0x4

    aget-byte p2, p8, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    const/4 v1, 0x5

    aget-byte p8, p8, v1

    and-int/lit16 p8, p8, 0xff

    add-int/2addr p2, p8

    invoke-direct {p6, p7, v0, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object p6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    :cond_59
    if-eqz p9, :cond_6e

    .line 343
    array-length p2, p9

    if-lt p2, p5, :cond_6e

    .line 344
    iget-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    aget-byte p4, p9, p4

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x8

    aget-byte p3, p9, p3

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p4, p3

    invoke-virtual {p2, p4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setR2DeviceInfo(I)V

    .line 348
    :cond_6e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "R2 Device discovered on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " R2 Info:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {p9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 350
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_a0
    move-exception p0

    const-string p1, "Could not encode device primary type."

    .line 328
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_a7
    move-exception p0

    const-string p1, "Could not decode device address."

    .line 320
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onServiceDiscoveryResponse([BC[B)V
    .registers 4

    .line 258
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Service discovery response received on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onStaAuthorized([B[B)V
    .registers 5

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STA authorized on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 287
    :cond_1d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method public onStaDeauthorized([B[B)V
    .registers 5

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STA deauthorized on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->logd(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 297
    :cond_1d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackAidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method
