.class public Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.source "SemSupplicantP2pIfaceCallbackHidlImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSupplicantP2pIfaceCallbackHidlImpl"

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

    .line 42
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    return-void
.end method

.method private createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 4

    .line 222
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 226
    sget-object v0, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->ANY_MAC_BYTES:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_e

    move-object p1, p2

    .line 232
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

    const-string p1, "SemSupplicantP2pIfaceCallbackHidlImpl"

    const-string p2, "Could not decode MAC address"

    .line 234
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static enableVerboseLogging(Z)V
    .registers 1

    .line 51
    sput-boolean p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .registers 2

    .line 55
    sget-boolean v0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->sVerboseLoggingEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "SemSupplicantP2pIfaceCallbackHidlImpl"

    .line 56
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public onDeviceFound([B[B[BLjava/lang/String;SBI[B)V
    .registers 10

    .line 69
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 70
    iput-object p4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v0, "SemSupplicantP2pIfaceCallbackHidlImpl"

    if-nez p4, :cond_11

    const-string p0, "Missing device name."

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_11
    :try_start_11
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_86

    .line 84
    :try_start_17
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->wpsDevTypeStringFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_7f

    .line 91
    iput p6, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 92
    iput p7, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 93
    iput p5, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 p2, 0x3

    .line 94
    iput p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz p8, :cond_59

    .line 96
    array-length p3, p8

    const/4 p4, 0x6

    if-lt p3, p4, :cond_59

    .line 97
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

    .line 103
    :cond_59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Device discovered on "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceFound(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_7f
    move-exception p0

    const-string p1, "Could not encode device primary type."

    .line 87
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_86
    move-exception p0

    const-string p1, "Could not decode device address."

    .line 79
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onDeviceLost([B)V
    .registers 4

    .line 108
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 111
    :try_start_5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_34

    const/4 p1, 0x4

    .line 117
    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device lost on "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pDeviceLost(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void

    :catch_34
    move-exception p0

    const-string p1, "SemSupplicantP2pIfaceCallbackHidlImpl"

    const-string v0, "Could not decode device address."

    .line 113
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onFindStopped()V
    .registers 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search stopped on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGoNegotiationCompleted(I)V
    .registers 3

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Group Owner negotiation completed with status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGoNegotiationRequest([BS)V
    .registers 3

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Group Owner negotiation initiated on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group formation failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupFormationSuccess()V
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group formation successful on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .registers 5

    if-nez p1, :cond_a

    const-string p0, "SemSupplicantP2pIfaceCallbackHidlImpl"

    const-string p1, "Missing group name."

    .line 189
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 194
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 195
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupRemoved(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method

.method public onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V
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
            "[BZ)V"
        }
    .end annotation

    const-string p5, "SemSupplicantP2pIfaceCallbackHidlImpl"

    if-nez p1, :cond_a

    const-string p0, "Missing group interface name."

    .line 147
    invoke-static {p5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 154
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 157
    :try_start_30
    invoke-static {p3}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_6c

    .line 164
    invoke-virtual {v0, p4}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 166
    invoke-virtual {v0, p6}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    if-eqz p8, :cond_4b

    const/4 p1, -0x2

    .line 169
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    goto :goto_4f

    :cond_4b
    const/4 p1, -0x1

    .line 171
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 174
    :goto_4f
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 177
    :try_start_54
    invoke-static {p7}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_65

    .line 183
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pGroupStarted(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void

    :catch_65
    move-exception p0

    const-string p1, "Could not decode Group Owner address."

    .line 179
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_6c
    move-exception p0

    const-string p1, "Could not encode SSID."

    .line 160
    invoke-static {p5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onInvitationReceived([B[B[BII)V
    .registers 6

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invitation received on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onInvitationResult([BI)V
    .registers 3

    .line 206
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invitation completed with status: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkAdded(I)V
    .registers 2

    return-void
.end method

.method public onNetworkRemoved(I)V
    .registers 2

    return-void
.end method

.method public onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V
    .registers 6

    .line 211
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

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BS",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Service discovery response received on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onStaAuthorized([B[B)V
    .registers 5

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STA authorized on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 246
    :cond_1d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaConnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method public onStaDeauthorized([B[B)V
    .registers 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STA deauthorized on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->logd(Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->createStaEventDevice([B[B)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    if-nez p1, :cond_1d

    return-void

    .line 255
    :cond_1d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mMonitor:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceCallbackHidlImpl;->mInterface:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pMonitor;->broadcastP2pApStaDisconnected(Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method
