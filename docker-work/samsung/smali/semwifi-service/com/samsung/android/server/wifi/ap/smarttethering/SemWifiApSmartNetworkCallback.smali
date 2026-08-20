.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;
.super Ljava/lang/Object;
.source "SemWifiApSmartNetworkCallback.java"


# static fields
.field private static CONFIG_ERROR_PASSWORD_1:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static CONFIG_ERROR_PASSWORD_2:Ljava/lang/String; = "USER#DEFINED#PWD#"

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartNetworkCallback"


# instance fields
.field private isAutohotspotOffBecauseOfNetwork:Z

.field private isEnhancedMobileAp:Z

.field private isMobileDataEnabled:Z

.field private isWifiConnected:Z

.field private mCellularNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetisEnhancedMobileAp(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isEnhancedMobileAp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isMobileDataEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSwitchState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->updateSwitchState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isAutohotspotOffBecauseOfNetwork:Z

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isEnhancedMobileAp:Z

    .line 53
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mCellularNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 76
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 37
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->registerReceiver()V

    return-void
.end method

.method private checkActiveNetwork()Z
    .registers 9

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 221
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v0, "checkActiveNetwork,activeNetwork is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 224
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1e

    goto :goto_66

    .line 228
    :cond_1e
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v2, 0x1

    .line 229
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 230
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/16 v5, 0x10

    .line 231
    invoke-virtual {p0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    .line 232
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasInternet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",hasInternetValidated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isCelluar:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isWifi:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_66

    if-eqz p0, :cond_66

    move v1, v2

    :cond_66
    :goto_66
    return v1
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 289
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1b

    .line 290
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v1, "mConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private isDefaultPassphraseSet()Z
    .registers 2

    .line 296
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    if-eqz p0, :cond_2c

    if-eqz v0, :cond_2c

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->CONFIG_ERROR_PASSWORD_1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->CONFIG_ERROR_PASSWORD_2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method private isMobileDataEnabled()Z
    .registers 8

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 243
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v2, "checkMobileDataEnabled,activeNetwork is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 246
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 248
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/16 v3, 0xc

    .line 249
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    const/16 v4, 0x10

    .line 250
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v2, :cond_34

    if-eqz v3, :cond_34

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    .line 252
    :cond_34
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMobileDataEnabled,NetworkCapabilities, cellular:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",internet:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",hasInternetValidated:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 254
    :cond_5b
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v2, "checkMobileDataEnabled,NetworkCapabilities is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_62
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isMobileDataEnabled:Z

    .line 258
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMobileDataEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isMobileDataEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isTetheringRestricted()Z
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_config_tethering"

    .line 193
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private isWifiSharingEnabled()Z
    .registers 3

    .line 94
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_ap_wifi_sharing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method private isWifihasInternet()Z
    .registers 8

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 266
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v2, "isWifihasInternet,activeNetwork is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 269
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_5c

    const/4 v2, 0x1

    .line 271
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/16 v4, 0xc

    .line 272
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/16 v5, 0x10

    .line 273
    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v3, :cond_35

    if-eqz v4, :cond_35

    if-eqz v0, :cond_35

    move v1, v2

    .line 275
    :cond_35
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isWifihasInternet,NetworkCapabilities, wifi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",internet:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",hasInternetValidated:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 277
    :cond_5c
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v2, "isWifihasInternet,NetworkCapabilities is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_63
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifiConnected:Z

    .line 281
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWifihasInternet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifiConnected:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private registerReceiver()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendBroadcast()V
    .registers 4

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 307
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendBroadcastInternet()V
    .registers 4

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.internet.changed"

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.OVERRIDE_WIFI_CONFIG"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private updateSwitchState()V
    .registers 13

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifihasInternet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifiConnected:Z

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isMobileDataEnabled:Z

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isTetheringRestricted()Z

    move-result v0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isAirplaneModeOn()Z

    move-result v1

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isSimEnabled()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isSamsungAccountLoggedOut()Z

    move-result v4

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isNearByDeviceScanningEnabled()Z

    move-result v5

    xor-int/2addr v5, v3

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isDefaultPassphraseSet()Z

    move-result v6

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifiSharingEnabled()Z

    move-result v7

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->checkActiveNetwork()Z

    move-result v8

    .line 117
    sget-object v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating Autohotspot Switch state - , isActiveNetworkhasInternet : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isTetheringRestricted : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isAirplaneModeOn : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSimDisabled : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isMobileDataEnabled : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isMobileDataEnabled:Z

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isWifiConnected : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isWifiConnected:Z

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isSamsungAccountLoggedOut : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isNearByDeviceScanningDisabled : "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDefaultPassphraseSet: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isWifiSharingEnabled: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "persistent_wifi_ap_smart_tethering_family"

    const-string v8, "wifi_ap_smart_tethering_settings_with_family"

    const-string v9, "persistent_wifi_ap_smart_tethering"

    const-string v10, "wifi_ap_smart_tethering_settings"

    const/4 v11, 0x0

    if-eqz v1, :cond_eb

    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_157

    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v1, "saving SmartTethering Enabled state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_e6

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v1, "saving SmartTethering FamilySharing Enabled state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :cond_e6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->sendBroadcast()V

    goto/16 :goto_157

    :cond_eb
    if-nez v1, :cond_157

    .line 146
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_151

    .line 147
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_119

    .line 149
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    goto :goto_11a

    :cond_119
    move v1, v11

    .line 152
    :goto_11a
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v9, "trying to enable SmartTethering state"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_151

    if-nez v2, :cond_151

    if-nez v4, :cond_151

    if-nez v5, :cond_151

    if-nez v6, :cond_151

    .line 154
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v2, "restoring SmartTethering  state"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v10, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_14d

    .line 157
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v1, "restoring SmartTethering FamilySharing Enabled state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_14d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->sendBroadcast()V

    goto :goto_152

    :cond_151
    move v3, v11

    :goto_152
    if-nez v3, :cond_157

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->sendBroadcastInternet()V

    .line 168
    :cond_157
    :goto_157
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v1, "NetworkDisconnected changed. sendBroadcastForMDE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handleBootCompleted()V
    .registers 5

    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->isEnhancedMobileAp:Z

    if-eqz v0, :cond_42

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0x10

    .line 45
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mCellularNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 44
    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 48
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mWifiNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 47
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_42
    return-void
.end method

.method public isAirplaneModeOn()Z
    .registers 3

    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isNearByDeviceScanningEnabled()Z
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nearby_scanning_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public isSamsungAccountLoggedOut()Z
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 174
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 175
    array-length p0, p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isSimEnabled()Z
    .registers 4

    .line 204
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    const-string v0, "vendor.wifiap.simcheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 207
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 208
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_48

    const-string p0, "gsm.sim.state"

    .line 209
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 210
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "READY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    .line 211
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartNetworkCallback;->TAG:Ljava/lang/String;

    const-string v0, "Sim is not ready"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_48
    return v1
.end method
