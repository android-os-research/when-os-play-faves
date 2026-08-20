.class Lcom/samsung/android/server/wifi/autowifi/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$NetworkPnoScanListener;,
        Lcom/samsung/android/server/wifi/autowifi/Scanner$HiddenNetworkScanListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoWifi.Scanner"


# instance fields
.field private final mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/Scanner;)Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    const-string p2, "location"

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mLocationManager:Landroid/location/LocationManager;

    .line 50
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;-><init>(Lcom/samsung/android/server/wifi/autowifi/Scanner;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    return-void
.end method

.method public static createPnoNetwork(Landroid/net/wifi/WifiConfiguration;[I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .registers 5

    .line 114
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 116
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_12

    .line 117
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 119
    :cond_12
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    const/4 v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 120
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 121
    array-length v1, p1

    if-eqz v1, :cond_25

    .line 122
    iput-object p1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 124
    :cond_25
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 125
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/2addr p0, v2

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_48

    :cond_32
    const/4 p1, 0x3

    .line 126
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 127
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    goto :goto_48

    .line 129
    :cond_41
    iget-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    or-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    :goto_48
    return-object v0
.end method

.method private getScanSettings(Ljava/util/List;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;)",
            "Landroid/net/wifi/WifiScanner$ScanSettings;"
        }
    .end annotation

    .line 93
    new-instance p0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v0, 0x2

    .line 94
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/16 v0, 0x1f

    .line 95
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v0, 0x3

    .line 96
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 100
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1f
    return-object p0
.end method


# virtual methods
.method public isAvailable()Z
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScanAlwaysAvailable()Z

    move-result v0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoWifi isAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoWifi.Scanner"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_38

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method public registerListener(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "AutoWifi.Scanner"

    if-eqz v0, :cond_e

    const-string p0, "target network list is empty"

    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->startTracking(Ljava/util/Set;Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;)V

    goto :goto_1f

    :cond_1a
    const-string p0, "unavailable scan now"

    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method public startDisconnectedPnoScan(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;)V"
        }
    .end annotation

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "AutoWifi.Scanner"

    if-nez v0, :cond_e

    const-string p0, "No saved network for starting disconnected PNO."

    .line 138
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 141
    :cond_e
    new-instance v2, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 142
    new-array v0, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v0, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 143
    iget-object v0, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    const/16 p1, -0x50

    .line 144
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    .line 145
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 146
    iput p1, v2, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 148
    new-instance p1, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {p1}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v0, 0x7

    .line 149
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v0, 0x4

    .line 150
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    const/4 v0, 0x0

    .line 151
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    const v0, 0xea60

    .line 152
    iput v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 155
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-static {p0, v2, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$PnoSettings;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_4f

    :cond_4a
    const-string p0, "startPnoScan ignored, there is no listener"

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4f
    return-void
.end method

.method public startScan()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->startScan()Z

    goto :goto_15

    :cond_e
    const-string p0, "AutoWifi.Scanner"

    const-string v0, "startScan ignored, there is no listener"

    .line 78
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method public startScan(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->getScanSettings(Ljava/util/List;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;Landroid/net/wifi/WifiScanner$ScanSettings;)V

    goto :goto_19

    :cond_12
    const-string p0, "AutoWifi.Scanner"

    const-string p1, "startScan ignored, there is no listener"

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void
.end method

.method public stopPnoScan()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;)V

    :cond_d
    return-void
.end method

.method public unregisterListener()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/Scanner;->mHandler:Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/Scanner$WifiScanHandler;->stopTracking()V

    goto :goto_15

    :cond_e
    const-string p0, "AutoWifi.Scanner"

    const-string v0, "unregisterListener ignored, there is no listener"

    .line 69
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method
