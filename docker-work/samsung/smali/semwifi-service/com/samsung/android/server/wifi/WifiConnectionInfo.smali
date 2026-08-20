.class public Lcom/samsung/android/server/wifi/WifiConnectionInfo;
.super Ljava/lang/Object;
.source "WifiConnectionInfo.java"


# static fields
.field public static final INVALID_FREQUENCY:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemWifi.ConnectionInfo"


# instance fields
.field volatile bssid:Ljava/lang/String;

.field volatile isConnected:Z

.field lastConfig:Landroid/net/wifi/WifiConfiguration;

.field lastConfigKey:Ljava/lang/String;

.field lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field volatile networkId:I

.field wifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->reset()V

    return-void
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public getConfigKey()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method public getFrequency()I
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public getLastSemWifiConfig()Lcom/samsung/android/wifi/SemWifiConfiguration;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-object p0
.end method

.method public getLastWifiConfig()Landroid/net/wifi/WifiConfiguration;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public getNetworkId()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    return p0
.end method

.method public getNetworkType()Lcom/samsung/android/server/wifi/diagnostics/NetworkType;
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_31

    .line 144
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 145
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->CARRIER:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    const-string v0, "OpenRoaming"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 148
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->OPEN_ROAMING:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 150
    :cond_23
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->PASSPOINT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 151
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 152
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->EPHEMERAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 155
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_3e

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 156
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->MOBILE_HOTSPOT:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 158
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v0, :cond_56

    .line 159
    iget v0, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 160
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->FAVORITE:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 161
    :cond_4d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz p0, :cond_56

    .line 162
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0

    .line 165
    :cond_56
    sget-object p0, Lcom/samsung/android/server/wifi/diagnostics/NetworkType;->NORMAL:Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    return-object p0
.end method

.method public getPrintableBssid()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_9

    .line 123
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public hasConfigKey()Z
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasNetworkIdInWifiInfo()Z
    .registers 2

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public isConnected()Z
    .registers 1

    .line 73
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method setSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    return-void
.end method

.method setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    .line 102
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_14

    .line 104
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 105
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 107
    :cond_d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    goto :goto_18

    :cond_14
    const-string p1, ""

    .line 109
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    :goto_18
    return-void
.end method

.method setWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .registers 3

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_22

    .line 54
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 55
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    goto :goto_22

    :cond_17
    const-string p1, "SemWifi.ConnectionInfo"

    const-string v0, "WifiInfo.getBSSID returns empty string, reset it"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 60
    iput-object p1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    :cond_22
    :goto_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networkId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bssid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastConfigKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, ""

    if-eqz v1, :cond_38

    const-string v1, ", config"

    goto :goto_39

    :cond_38
    move-object v1, v2

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz p0, :cond_42

    const-string v2, ", semConfig"

    :cond_42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
