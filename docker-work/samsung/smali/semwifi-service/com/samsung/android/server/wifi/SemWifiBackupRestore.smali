.class public Lcom/samsung/android/server/wifi/SemWifiBackupRestore;
.super Ljava/lang/Object;
.source "SemWifiBackupRestore.java"


# static fields
.field private static final ACTION_RESPONSE_RESTORE:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

.field private static final INVALID_LOCATION:D = 1000.0

.field private static final KEY_SEM_WIFI_HEAD:Ljava/lang/String; = "semwificonfig"

.field private static final MIN_SCORE_FOR_FAVORITE_AP:I = 0x9

.field private static final RESTORE_MAX_RETRY:I = 0x3

.field private static final SEM_WFI_CONFIG_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final SEM_WFI_CONFIG_LOCATION:Ljava/lang/String; = "location"

.field private static final SEM_WFI_CONFIG_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final SEM_WFI_CONFIG_NETWORKSCORE:Ljava/lang/String; = "networkScore"

.field private static final SEM_WIFI_CONFIG_CONFIGKEY:Ljava/lang/String; = "configKey"

.field private static final TAG:Ljava/lang/String; = "SemWifiBackupRestore"


# instance fields
.field private mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

.field private mLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSemConfigs:Lorg/json/JSONArray;

.field private mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public static synthetic $r8$lambda$hu-erx0BWKOn21yqHAv5rOU_gi8(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->lambda$addOrUpdateNetwork$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSemConfigs(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)Lorg/json/JSONArray;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddOrUpdateNetwork(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->addOrUpdateNetwork(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sem_wifi"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getAutoWifiController()Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 71
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private addOrUpdateNetwork(I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOrUpdateNetwork length is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackupRestore"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 181
    :goto_1f
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_92

    .line 182
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "configKey"

    .line 183
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v5, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_50

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore restore network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 190
    :cond_50
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v5, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v5

    if-nez v5, :cond_5d

    .line 192
    new-instance v5, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {v5, v7}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    :cond_5d
    const-string v6, "networkScore"

    .line 194
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 195
    iput v6, v5, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 196
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v5, v9}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    const/16 v5, 0x9

    if-ge v6, v5, :cond_72

    if-gez v6, :cond_8d

    :cond_72
    const-string v5, "location"

    .line 199
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 200
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "latitude"

    .line 201
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v5, "longitude"

    .line 202
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 203
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->restoreNetworkLocation(Ljava/lang/String;DD)V

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    :goto_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 209
    :cond_92
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eq v3, v0, :cond_b0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_b0

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V

    const-wide/16 p0, 0x7530

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b0
    return-void
.end method

.method private synthetic lambda$addOrUpdateNetwork$0(I)V
    .registers 2

    add-int/lit8 p1, p1, 0x1

    .line 212
    :try_start_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->addOrUpdateNetwork(I)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p0

    .line 214
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_a
    return-void
.end method


# virtual methods
.method getBackupDatatoJsonString(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_c

    const-string p0, "SemWifiBackupRestore"

    const-string p1, "Invalid configuration list received"

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 132
    :cond_c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 135
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    iget-object v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 137
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_1a

    .line 141
    :cond_3d
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v4

    if-nez v4, :cond_54

    .line 142
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_54

    goto :goto_1a

    .line 150
    :cond_54
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 151
    iget-object v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    const-string v5, "configKey"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    iget v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    const-string v5, "networkScore"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    iget-object v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->getConfigLocation(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "location"

    .line 154
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1a

    :cond_76
    const-string p0, "semwificonfig"

    .line 157
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getConfigLocation(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 114
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "longitude"

    const-string v4, "latitude"

    if-nez v2, :cond_22

    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 116
    invoke-virtual {v1, v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v1, v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_40

    .line 119
    :cond_22
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 120
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 122
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 121
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :goto_40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method

.method restoreSemConfigurationsBackupData(Ljava/lang/String;)V
    .registers 4

    const-string v0, "semwificonfig"

    if-nez p1, :cond_c

    const-string p0, "SemWifiBackupRestore"

    const-string p1, "restore data is null"

    .line 163
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_c
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 169
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mSemConfigs:Lorg/json/JSONArray;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 174
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method

.method retrieveSemWifiConfigsBackupData(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mAutoWifiController:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getNetworkLocations()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->mLocations:Ljava/util/Map;

    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->getBackupDatatoJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    const-string p1, "SemWifiBackupRestore"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run retrieveSemWifiConfigsBackupData() size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2d
    const-string p0, ""

    return-object p0
.end method
