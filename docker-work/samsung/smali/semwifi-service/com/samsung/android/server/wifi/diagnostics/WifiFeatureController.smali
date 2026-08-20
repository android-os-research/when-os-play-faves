.class public Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
.super Ljava/lang/Object;
.source "WifiFeatureController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;
    }
.end annotation


# static fields
.field private static final INVALID_VALUE:I = -0x1

.field static final KEY_AUTO_SHARE:Ljava/lang/String; = "autoShare"

.field static final KEY_AUTO_WIFI_AHEAD_TIME_FOR_ESTIMATED_ARRIVAL_TIME:Ljava/lang/String; = "autoWifiAheadTimeForEstimatedArrivalTime"

.field static final KEY_AUTO_WIFI_DEFAULT_USER_CONTROL_TIME:Ljava/lang/String; = "autoWifiDefaultUserControlTime"

.field static final KEY_AUTO_WIFI_DURATION_FOR_MINUS_SCORE:Ljava/lang/String; = "autoWifiDurationForMinusScore"

.field static final KEY_AUTO_WIFI_DURATION_FOR_POINT_FOUR:Ljava/lang/String; = "autoWifiDurationForPointFour"

.field static final KEY_AUTO_WIFI_DURATION_FOR_POINT_ONE:Ljava/lang/String; = "autoWifiDurationForPointOne"

.field static final KEY_AUTO_WIFI_DURATION_FOR_POINT_TWO:Ljava/lang/String; = "autoWifiDurationForPointTwo"

.field static final KEY_AUTO_WIFI_DURATION_FOR_RECOVERY_SCORE:Ljava/lang/String; = "autoWifiDurationForRecoveryScore"

.field static final KEY_AUTO_WIFI_MAX_CELL_COUNT:Ljava/lang/String; = "autoWifiMaxCellCount"

.field static final KEY_AUTO_WIFI_PNO_SCAN:Ljava/lang/String; = "autoWifiPnoScan"

.field static final KEY_EASY_SETUP:Ljava/lang/String; = "easySetup"

.field static final KEY_EASY_SETUP_PARTIAL_SCAN_INTERVAL_MS:Ljava/lang/String; = "easySetupPartialScanIntervalMs"

.field static final KEY_EASY_SETUP_RESET_AFTER_SCREEN_OFF_ON:Ljava/lang/String; = "easySetupResetAfterScreenOffOn"

.field static final KEY_PROFILE_REQUEST:Ljava/lang/String; = "wifiProfileRequest"

.field static final KEY_PROFILE_SHARE:Ljava/lang/String; = "wifiProfileShare"

.field static final KEY_QOS_PROVIDER:Ljava/lang/String; = "qosDeviceShare"

.field static final KEY_RESET:Ljava/lang/String; = "resetAll"

.field static final KEY_SCORE_PROVIDER:Ljava/lang/String; = "networkScoreProvider"

.field static final KEY_SILENT_ROAMING:Ljava/lang/String; = "silentRoaming"

.field static final KEY_STRONG_ROAMING:Ljava/lang/String; = "strongRoaming"

.field public static final TAG:Ljava/lang/String; = "SemWifi.FeatureCtrl"

.field private static final mKeys:[Ljava/lang/String;


# instance fields
.field private final mFeatureDefaults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeatureSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/HashSet;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-string v0, "qosDeviceShare"

    const-string v1, "networkScoreProvider"

    const-string v2, "wifiProfileShare"

    const-string v3, "wifiProfileRequest"

    const-string v4, "autoShare"

    const-string v5, "strongRoaming"

    const-string v6, "silentRoaming"

    const-string v7, "autoWifiPnoScan"

    const-string v8, "autoWifiAheadTimeForEstimatedArrivalTime"

    const-string v9, "autoWifiDefaultUserControlTime"

    const-string v10, "autoWifiDurationForPointOne"

    const-string v11, "autoWifiDurationForPointTwo"

    const-string v12, "autoWifiDurationForPointFour"

    const-string v13, "autoWifiDurationForMinusScore"

    const-string v14, "autoWifiDurationForRecoveryScore"

    const-string v15, "autoWifiMaxCellCount"

    const-string v16, "easySetup"

    const-string v17, "easySetupResetAfterScreenOffOn"

    const-string v18, "easySetupPartialScanIntervalMs"

    .line 65
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->initDeviceDefaultSettings()V

    return-void
.end method

.method private applyScpmPolicy(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 4

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getScpmConfigurationName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_33

    .line 149
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    move-result-object p0

    const-string p1, "SemWifi.FeatureCtrl"

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCPM: there is no policy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_33
    :try_start_33
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_66

    .line 155
    :try_start_3c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getScpmConfigurationName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->updateFeatureStatus(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_5c

    .line 157
    :try_start_4a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    new-instance v1, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->forEach(Ljava/util/function/Consumer;)V

    .line 158
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_59

    .line 159
    :try_start_55
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_66

    goto :goto_6d

    :catchall_59
    move-exception p0

    .line 158
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    .line 154
    :try_start_5d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    :try_start_62
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw p0
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    const-string p0, "SemWifi.FeatureCtrl"

    const-string p1, "couldn\'t open file"

    .line 160
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    return-void
.end method

.method private checkAndApplySettings(Landroid/os/Bundle;)V
    .registers 9

    .line 233
    sget-object v0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_50

    aget-object v3, v0, v2

    .line 234
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_4d

    .line 237
    :cond_f
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 238
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_4d

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apply settings key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SemWifi.FeatureCtrl"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_50
    return-void
.end method

.method private checkAndResetDeviceDefaults(Landroid/os/Bundle;)Z
    .registers 4

    const-string v0, "resetAll"

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    const-string p1, "SemWifi.FeatureCtrl"

    const-string v1, "reset all settings"

    .line 225
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return v0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private initDeviceDefaultSettings()V
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "qosDeviceShare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "networkScoreProvider"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "wifiProfileShare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "wifiProfileRequest"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "autoShare"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "strongRoaming"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "silentRoaming"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "autoWifiPnoScan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "autoWifiAheadTimeForEstimatedArrivalTime"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "autoWifiDefaultUserControlTime"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "autoWifiDurationForPointOne"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/16 v3, 0x1c20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "autoWifiDurationForPointTwo"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/16 v3, 0x7080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "autoWifiDurationForPointFour"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v3, "autoWifiDurationForMinusScore"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/16 v2, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "autoWifiDurationForRecoveryScore"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "autoWifiMaxCellCount"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const-string v2, "easySetup"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "easySetupResetAfterScreenOffOn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    const v0, 0x2bf20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "easySetupPartialScanIntervalMs"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isSupported(Ljava/lang/String;I)Z
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureSettings:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mFeatureDefaults:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private updateFeatureStatus(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;)V"
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_137

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 167
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PROFILE_SHARE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 168
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;

    .line 169
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;->isAllowedContinuityFunction()Z

    move-result v3

    const-string v4, "autoShare"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;->isAllowedPasswordShare()Z

    move-result v3

    const-string v4, "wifiProfileShare"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;->isAllowedPasswordShare()Z

    move-result v2

    const-string v3, "wifiProfileRequest"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11f

    .line 172
    :cond_41
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ROAM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 173
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;

    .line 174
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledStrongRoaming()Z

    move-result v3

    const-string v4, "strongRoaming"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledSilentRoaming()Z

    move-result v2

    const-string v3, "silentRoaming"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_11f

    .line 176
    :cond_64
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTO_WIFI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 177
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;

    .line 178
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->isEnabledAutoWifiPnoScan()Z

    move-result v3

    const-string v4, "autoWifiPnoScan"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiAheadTimeForEstimatedArrivalTime()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 181
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiAheadTimeForEstimatedArrivalTime()I

    move-result v3

    const-string v4, "autoWifiAheadTimeForEstimatedArrivalTime"

    .line 180
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    :cond_8b
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDefaultUserControlTime()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 185
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDefaultUserControlTime()I

    move-result v3

    const-string v4, "autoWifiDefaultUserControlTime"

    .line 184
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    :cond_9a
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForPointOne()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 189
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForPointOne()I

    move-result v3

    const-string v4, "autoWifiDurationForPointOne"

    .line 188
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    :cond_a9
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForPointTwo()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 193
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForPointTwo()I

    move-result v3

    const-string v4, "autoWifiDurationForPointTwo"

    .line 192
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    :cond_b8
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForPointFour()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 197
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForPointFour()I

    move-result v3

    const-string v4, "autoWifiDurationForPointFour"

    .line 196
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    :cond_c7
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForMinusScore()Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 201
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForMinusScore()I

    move-result v3

    const-string v4, "autoWifiDurationForMinusScore"

    .line 200
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    :cond_d6
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiDurationForRecoveryScore()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 205
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiDurationForRecoveryScore()I

    move-result v3

    const-string v4, "autoWifiDurationForRecoveryScore"

    .line 204
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    :cond_e5
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->hasAutoWifiMaxCellCount()Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 208
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->getAutoWifiMaxCellCount()I

    move-result v2

    const-string v3, "autoWifiMaxCellCount"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11f

    .line 210
    :cond_f5
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EASY_SETUP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 211
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;

    .line 212
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->isEnabledEasySetup()Z

    move-result v3

    const-string v4, "easySetup"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->isEnabledResetAfterScreenOffOn()Z

    move-result v3

    const-string v4, "easySetupResetAfterScreenOffOn"

    .line 213
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->getPartialScanIntervalMs()I

    move-result v2

    const-string v3, "easySetupPartialScanIntervalMs"

    .line 215
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    :cond_11f
    :goto_11f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "policy was applied : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifi.FeatureCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 220
    :cond_137
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->checkAndApplySettings(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getAutoWifiAheadTimeForEstimatedArrivalTime()I
    .registers 2

    const-string v0, "autoWifiAheadTimeForEstimatedArrivalTime"

    .line 285
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAutoWifiMaxCellCount()I
    .registers 2

    const-string v0, "autoWifiMaxCellCount"

    .line 303
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAutoWifiScorePolicies()[I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const-string v1, "autoWifiDurationForPointOne"

    .line 294
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v1, "autoWifiDurationForPointTwo"

    .line 295
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const-string v1, "autoWifiDurationForPointFour"

    .line 296
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const-string v1, "autoWifiDurationForMinusScore"

    .line 297
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const-string v1, "autoWifiDurationForRecoveryScore"

    .line 298
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x4

    aput p0, v0, v1

    return-object v0
.end method

.method public getAutoWifiUserControlTime()I
    .registers 2

    const-string v0, "autoWifiDefaultUserControlTime"

    .line 289
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getEasySetupPartialScanIntervalMs()I
    .registers 2

    const-string v0, "easySetupPartialScanIntervalMs"

    .line 315
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getScpmConfigurationName()Ljava/lang/String;
    .registers 1

    const-string p0, "WIFI_STA"

    return-object p0
.end method

.method public isSupportAutoShare()Z
    .registers 3

    const-string v0, "autoShare"

    const/4 v1, 0x1

    .line 269
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportAutoWifiPnoScanFeature()Z
    .registers 3

    const-string v0, "autoWifiPnoScan"

    const/4 v1, 0x1

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportEasySetup()Z
    .registers 3

    const-string v0, "easySetup"

    const/4 v1, 0x1

    .line 307
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportEasySetupResetAfterScreenOffOn()Z
    .registers 3

    const-string v0, "easySetupResetAfterScreenOffOn"

    const/4 v1, 0x1

    .line 311
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportQosProvider()Z
    .registers 3

    const-string v0, "qosDeviceShare"

    const/4 v1, 0x1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportSamsungNetworkScore()Z
    .registers 3

    const-string v0, "networkScoreProvider"

    const/4 v1, 0x1

    .line 257
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportSilentRoaming()Z
    .registers 3

    const-string v0, "silentRoaming"

    const/4 v1, 0x1

    .line 277
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportStrongRoaming()Z
    .registers 3

    const-string v0, "strongRoaming"

    const/4 v1, 0x1

    .line 273
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportWifiProfileRequest()Z
    .registers 3

    const-string v0, "wifiProfileRequest"

    const/4 v1, 0x1

    .line 265
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSupportWifiProfileShare()Z
    .registers 3

    const-string v0, "wifiProfileShare"

    const/4 v1, 0x1

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupported(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->applyScpmPolicy(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    return-void
.end method

.method public onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->applyScpmPolicy(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setFeatureDefaults(Landroid/os/Bundle;)V
    .registers 3

    .line 246
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->checkAndResetDeviceDefaults(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 249
    :cond_7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->checkAndApplySettings(Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
