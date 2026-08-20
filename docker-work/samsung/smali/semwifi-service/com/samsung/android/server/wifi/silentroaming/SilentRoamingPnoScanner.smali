.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;
.super Ljava/lang/Object;
.source "SilentRoamingPnoScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PartialScanListener;,
        Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$PnoScanListener;
    }
.end annotation


# static fields
.field public static final BAND_24_GHZ_CH:I = 0x0

.field public static final BAND_5_GHZ_CH:I = 0x1

.field public static final BAND_6_GHZ_CH:I = 0x2

.field public static final PNO_MIN_RSSI_LEVEL:I = -0x3f

.field public static final PNO_RSSI_OFFSET:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SilentRoamingPnoScanner"


# instance fields
.field private final PNO_MIN_SCAN_INTERVAL:I

.field private final mDbg:Z

.field private final mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 6

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x493e0

    .line 48
    iput v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->PNO_MIN_SCAN_INTERVAL:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mDbg:Z

    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 54
    iput-object p4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 55
    new-instance p2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    return-void
.end method

.method public static createPnoNetwork(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .registers 4

    .line 129
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 131
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_12

    .line 132
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 134
    :cond_12
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    const/4 v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 135
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 136
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 137
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/2addr p0, v2

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_43

    :cond_2d
    const/4 v1, 0x3

    .line 138
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 139
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_43

    .line 141
    :cond_3c
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    :goto_43
    return-object v0
.end method


# virtual methods
.method public isAvailableScanner()Z
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$misAvailableScanner(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mregisterScanListener(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$Listener;)V

    return-void
.end method

.method public startPartialScan([ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;)V"
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v1, 0x2

    .line 101
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/4 v1, 0x0

    .line 103
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 105
    array-length v2, p1

    .line 106
    new-array v3, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    :goto_10
    if-ge v1, v2, :cond_20

    .line 108
    iget-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget v5, p1, v1

    invoke-direct {v4, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 110
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPartialScan : freq list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SilentRoamingPnoScanner"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 112
    iput p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 116
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_48

    .line 117
    iget-object p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method public startPnoScan(Ljava/util/List;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;[I)V"
        }
    .end annotation

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "SilentRoamingPnoScanner"

    const-string p1, "No saved network for starting disconnected PNO."

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_e
    new-instance v1, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v1}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 80
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 81
    iget-object v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object p1, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    const/4 p1, 0x0

    .line 82
    aget v0, p2, p1

    iput v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    const/4 v0, 0x1

    .line 83
    aget v0, p2, v0

    iput v0, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    const/4 v0, 0x2

    .line 84
    aget p2, p2, v0

    iput p2, v1, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    .line 86
    new-instance p2, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {p2}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v0, 0x7

    .line 87
    iput v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v0, 0x4

    .line 88
    iput v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 89
    iput p1, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    const p1, 0x493e0

    .line 90
    iput p1, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    invoke-static {p0, v1, p2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mstartPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    return-void
.end method

.method public startScan()V
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startScan()Z

    return-void
.end method

.method public stopPnoScan()V
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner;->mHandler:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingPnoScanner$WifiScanHandler;)V

    return-void
.end method
