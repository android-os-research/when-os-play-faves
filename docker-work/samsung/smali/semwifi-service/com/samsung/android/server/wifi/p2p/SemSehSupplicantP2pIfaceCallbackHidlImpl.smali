.class public Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;
.super Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;
.source "SemSehSupplicantP2pIfaceCallbackHidlImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSehSupplicantP2pIfaceCallbackHidlImpl"

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

    .line 40
    invoke-direct {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/V3_0/ISehSupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-void
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 46
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    .line 50
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SemSehSupplicantP2pIfaceCallbackHidlImpl"

    .line 51
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public onApplicationDataReceived([BLjava/lang/String;)V
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastSconnectEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBigDataLogging(Ljava/lang/String;)V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastBigDataEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;SBI[BLjava/lang/String;)V
    .registers 10

    .line 58
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 59
    iput-object p4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string p9, "SemSehSupplicantP2pIfaceCallbackHidlImpl"

    if-nez p4, :cond_11

    const-string p0, "Missing device name."

    .line 62
    invoke-static {p9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_11
    :try_start_11
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_86

    .line 74
    :try_start_17
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->wpsDevTypeStringFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_7f

    .line 81
    iput p6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 82
    iput p7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 83
    iput p5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 p2, 0x3

    .line 84
    iput p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz p8, :cond_59

    .line 86
    array-length p3, p8

    const/4 p4, 0x6

    if-lt p3, p4, :cond_59

    .line 87
    new-instance p3, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 p4, 0x0

    aget-byte p4, p8, p4

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x8

    const/4 p5, 0x1

    aget-byte p5, p8, p5

    and-int/lit16 p5, p5, 0xff

    add-int/2addr p4, p5

    const/4 p5, 0x2

    aget-byte p5, p8, p5

    and-int/lit16 p5, p5, 0xff

    shl-int/lit8 p5, p5, 0x8

    aget-byte p2, p8, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p5, p2

    const/4 p2, 0x4

    aget-byte p2, p8, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    const/4 p6, 0x5

    aget-byte p6, p8, p6

    and-int/lit16 p6, p6, 0xff

    add-int/2addr p2, p6

    invoke-direct {p3, p4, p5, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object p3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 93
    :cond_59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device discovered on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_7f
    move-exception p0

    const-string p1, "Could not encode device primary type."

    .line 77
    invoke-static {p9, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_86
    move-exception p0

    const-string p1, "Could not decode device address."

    .line 69
    invoke-static {p9, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onGoPs(Ljava/lang/String;)V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastGoPsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZLjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I[B",
            "Ljava/lang/String;",
            "[BZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p5, "SemSehSupplicantP2pIfaceCallbackHidlImpl"

    if-nez p1, :cond_a

    const-string p0, "Missing group interface name."

    .line 101
    invoke-static {p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_a
    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct {p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Group "

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " started on "

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    invoke-static {p9}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 107
    new-instance p9, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {p9}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 108
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 111
    :try_start_30
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_6c

    .line 118
    invoke-virtual {p9, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 119
    invoke-virtual {p9, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p9, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    if-eqz p8, :cond_4b

    const/4 p1, -0x2

    .line 123
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_4f

    :cond_4b
    const/4 p1, -0x1

    .line 125
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 128
    :goto_4f
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 131
    :try_start_54
    invoke-static {p7}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_65

    .line 137
    invoke-virtual {p9, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, p9}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_65
    move-exception p0

    const-string p1, "Could not decode Group Owner address."

    .line 133
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_6c
    move-exception p0

    const-string p1, "Could not encode SSID."

    .line 114
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onP2pEventReceived(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pEventNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string p0, "onProvisionDiscoveryCompleted: "

    .line 143
    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSehSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method
