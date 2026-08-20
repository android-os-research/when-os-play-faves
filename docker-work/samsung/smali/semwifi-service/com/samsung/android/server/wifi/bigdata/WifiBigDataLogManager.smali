.class public Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;
.super Ljava/lang/Object;
.source "WifiBigDataLogManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "android.net.wifi"

.field public static final ARGS_DATA_STR:Ljava/lang/String; = "data"

.field public static final ARGS_FEATURE_NAME:Ljava/lang/String; = "feature"

.field public static final EVENT_HANG:I = 0x0

.field public static final EVENT_HIDL_FAIL:I = 0x1

.field public static final LOGGING_TYPE_ADPS_STATE:I = 0xd

.field public static final LOGGING_TYPE_BLUETOOTH_CONNECTION:I = 0xa

.field public static final LOGGING_TYPE_CONFIG_NETWORK_TYPE:I = 0xb

.field public static final LOGGING_TYPE_LOCAL_DISCONNECT_REASON:I = 0x8

.field public static final LOGGING_TYPE_ROAM_TRIGGER:I = 0x7

.field public static final LOGGING_TYPE_SET_CONNECTION_START_TIME:I = 0xc

.field public static final LOGGING_TYPE_TX_BACK_OFF_COUNT:I = 0x10

.field public static final LOGGING_TYPE_TX_BACK_OFF_DURATION:I = 0xf

.field public static final LOGGING_TYPE_TX_BACK_OFF_STATE:I = 0xe

.field public static final LOGGING_TYPE_UPDATE_DATA_RATE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "SemWifi.BigData"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private ENABLE_SURVEY_MODE:I

.field private final ENABLE_UNIFIED_HQM_SERVER:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field final mBigDataItems:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCidInfoString:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

.field private final mEventCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

.field private mLastUpdatedInternalReason:I

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field mLogMessages:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiVersionKeyValueStrings:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8bOPrwfAQ_eSZv-EW76P--U2Qvg(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->lambda$initialize$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetConfiguredNetworksSize(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getConfiguredNetworksSize()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetForegroundPackageName(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getForegroundPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTime(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateTime(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiConfigManager;Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;)V
    .registers 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 89
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    const-string v0, "unknown"

    .line 90
    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    .line 99
    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 101
    iput-object p4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 102
    iput-object p5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 103
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 105
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedBigdataHqmService()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_UNIFIED_HQM_SERVER:Z

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 108
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->initialize()V

    :cond_46
    return-void
.end method

.method private addOrUpdateValueInternal(Ljava/lang/String;I)Z
    .registers 4

    const-string v0, "DISC"

    .line 251
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private checkAndGetActivityManager()V
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v0, :cond_10

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mActivityManager:Landroid/app/ActivityManager;

    :cond_10
    return-void
.end method

.method private checkAndGetHqmManager()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez v0, :cond_10

    .line 314
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    :cond_10
    return-void
.end method

.method private checkAndUpdateChipInfo()Z
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 187
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getCidInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 189
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    sget-object v1, Lcom/samsung/android/server/wifi/driver/WifiChipVendor;->UNKNOWN:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    if-ne v0, v1, :cond_30

    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 192
    :cond_30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiVersionKeyValueStrings:Ljava/lang/String;

    if-nez v0, :cond_3a

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getWifiVersionKeyValueStringInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiVersionKeyValueStrings:Ljava/lang/String;

    :cond_3a
    const/4 p0, 0x1

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public static getBigDataArgument(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "data"

    .line 492
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBigDataBundle(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "feature"

    .line 238
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "data"

    .line 239
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBigDataFeature(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "feature"

    .line 488
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    .registers 3

    monitor-enter p0

    .line 233
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getConfiguredNetworksSize()Ljava/lang/String;
    .registers 6

    .line 447
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 448
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiConfiguration;->getNetworkScore()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 452
    :cond_23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object p0

    .line 453
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v1

    move v3, v0

    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 454
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_45

    add-int/lit8 v3, v3, 0x1

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 459
    :cond_48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getForegroundPackageName()Ljava/lang/String;
    .registers 2

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndGetActivityManager()V

    .line 464
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 465
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    .line 466
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_20

    .line 468
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p0, "x"

    return-object p0
.end method

.method private getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_e

    .line 202
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    move-result v0

    if-nez v0, :cond_a

    return-object p0

    .line 205
    :cond_a
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getJsonFormatFor(I)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method private getSupportedBigDataFeatures()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "DISC"

    const-string v1, "HANG"

    const-string v2, "ONOF"

    const-string v3, "W24H"

    const-string v4, "PDC1"

    const-string v5, "PDC2"

    const-string v6, "PDC4"

    const-string v7, "MHSI"

    const-string v8, "MHPS"

    const-string v9, "MHPT"

    const-string v10, "MHDC"

    const-string v11, "MHOF"

    const-string v12, "MHSS"

    const-string v13, "RAPP"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private getWifiVersionKeyValueStringInternal()Ljava/lang/String;
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getFirmwareVersion(Z)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mDriverVersionProvider:Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    move-result-object p0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ld_fwv"

    invoke-static {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ld_drv"

    .line 178
    invoke-static {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ld_cnm"

    .line 180
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialize()V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getSupportedBigDataFeatures()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Ljava/lang/String;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    .line 142
    invoke-static {p1, p0}, Lcom/samsung/android/server/wifi/bigdata/BigDataFeature$Factory;->getBigDataParser(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object p0

    .line 141
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private processBigDataLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_34

    if-nez p2, :cond_5

    goto :goto_34

    :cond_5
    const-wide/16 v0, 0x0

    const-string v2, "ONOF"

    .line 381
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_14

    const/4 v0, 0x1

    const-wide/16 v1, 0x7530

    goto :goto_16

    :cond_14
    move-wide v1, v0

    move v0, v3

    :goto_16
    if-ne v0, v3, :cond_1c

    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 389
    :cond_1c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "feature"

    .line 390
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    .line 391
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mHandler:Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;

    .line 394
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 393
    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_34
    :goto_34
    return-void
.end method

.method private sendHWParamToHQM(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v1, "SemWifi.BigData"

    if-eqz v0, :cond_54

    if-nez p1, :cond_9

    goto :goto_54

    .line 329
    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz v0, :cond_2b

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send H/W Parameters to HQM - feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", log maps : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const/4 v4, 0x0

    .line 339
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 340
    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    iget-object v8, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 341
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v5, "WiFi"

    const-string v7, "ph"

    const-string v11, ""

    const-string v12, ""

    move-object v6, p1

    move-object v10, p2

    .line 340
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_53

    :cond_4e
    const-string p0, "logging failed, Wi-Fi chip information is empty"

    .line 344
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void

    .line 326
    :cond_54
    :goto_54
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz p0, :cond_5d

    const-string p0, "hqm manager is null"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method private sendHWParamToHqmWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 350
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v4, "SemWifi.BigData"

    if-eqz v2, :cond_9d

    if-nez p1, :cond_a

    goto/16 :goto_9d

    .line 354
    :cond_a
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz v2, :cond_6b

    .line 355
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "send H/W Parameters to HQM with appId - feature : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", logMaps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " private: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "basic data size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0"

    if-nez p3, :cond_46

    move-object v7, v6

    goto :goto_4e

    :cond_46
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_4e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", custom data size : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_59

    goto :goto_61

    .line 358
    :cond_59
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    const/4 v2, 0x0

    if-nez p4, :cond_72

    const-string v1, ""

    move-object v7, v1

    goto :goto_73

    :cond_72
    move-object v7, p4

    .line 365
    :goto_73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 366
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mVendor:Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 368
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "WiFi"

    const-string v9, ""

    const-string v10, "android.net.wifi"

    move-object v0, v1

    move v1, v2

    move-object v2, v4

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    .line 366
    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9c

    :cond_97
    const-string v0, "logging failed, Wi-Fi chip information is empty"

    .line 371
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    return-void

    .line 351
    :cond_9d
    :goto_9d
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz v0, :cond_a6

    const-string v0, "hqm manager is null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return-void
.end method

.method private updateTime(Ljava/lang/String;)V
    .registers 2

    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->updateTime()V

    :cond_9
    return-void
.end method


# virtual methods
.method public addOrUpdateValue(II)V
    .registers 3

    packed-switch p1, :pswitch_data_46

    goto :goto_44

    :pswitch_4
    const-string p1, "txcn"

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_a
    const-string p1, "txdr"

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_10
    const-string p1, "txof"

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_16
    const-string p1, "adps"

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_1c
    const-string p1, "DISC"

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateTime(Ljava/lang/String;)V

    goto :goto_44

    :pswitch_22
    const-string p1, "apwe"

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_28
    const-string p1, "bt_cnt"

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_2e
    const-string p1, "cn_irs"

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 272
    iput p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    return-void

    :cond_39
    :pswitch_39
    const-string p1, "max_drt"

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    return-void

    :pswitch_3f
    const-string p1, "cn_rom"

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValueInternal(Ljava/lang/String;I)Z

    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x7
        :pswitch_3f
        :pswitch_2e
        :pswitch_39
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public clearData(Ljava/lang/String;)V
    .registers 2

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->clearData()V

    :cond_9
    return-void
.end method

.method public getAndResetLastInternalReason()I
    .registers 3

    .line 260
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    const/4 v1, 0x0

    .line 261
    iput v1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLastUpdatedInternalReason:I

    return v0
.end method

.method public getEventCount(I)I
    .registers 3

    .line 484
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getW24HLoggingDelayTime(Z)J
    .registers 2

    if-eqz p1, :cond_6

    const-wide/32 p0, 0x927c0

    return-wide p0

    :cond_6
    const-wide/32 p0, 0x5265c00

    return-wide p0
.end method

.method public getWifiCidKeyValueString()Ljava/lang/String;
    .registers 4

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    move-result v0

    const-string v1, ":"

    const-string v2, "Cid_Info"

    if-eqz v0, :cond_27

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mCidInfoString:Ljava/lang/String;

    .line 161
    invoke-static {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "na"

    .line 164
    invoke-static {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWifiVersionKeyValueString()Ljava/lang/String;
    .registers 3

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndUpdateChipInfo()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 149
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mWifiVersionKeyValueStrings:Ljava/lang/String;

    return-object p0

    :cond_9
    const-string v0, "SemWifi.BigData"

    const-string v1, "unknown Wi-Fi chip"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getWifiVersionKeyValueStringInternal()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public increaseEventCounter(I)V
    .registers 3

    .line 479
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    move-result v0

    .line 480
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public insertLog(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "feature"

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLog feature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifi.BigData"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "data"

    .line 305
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->processBigDataLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->clearData(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public isSupported()Z
    .registers 3

    .line 114
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedBigdataSurveyMode()Z

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    .line 117
    :cond_d
    iget p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_SURVEY_MODE:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method parseAndSendData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    const-string v1, "SemWifi.BigData"

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLog - feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    if-eqz p1, :cond_bb

    if-nez p2, :cond_2a

    goto/16 :goto_bb

    .line 404
    :cond_2a
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getBigDataItem(Ljava/lang/String;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    move-result-object v0

    if-nez v0, :cond_50

    .line 406
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    if-eqz p2, :cond_4f

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    return-void

    .line 409
    :cond_50
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->parseData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->checkAndGetHqmManager()V

    const/4 p2, 0x2

    .line 413
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_70

    const/4 v4, 0x3

    .line 415
    invoke-direct {p0, v0, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getHitType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHqmWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v3

    goto :goto_71

    :cond_70
    move p2, v2

    .line 420
    :goto_71
    iget-object v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v4, :cond_83

    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_UNIFIED_HQM_SERVER:Z

    if-nez v4, :cond_83

    .line 421
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_83

    .line 423
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHQM(Ljava/lang/String;Ljava/lang/String;)V

    move p2, v3

    .line 428
    :cond_83
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getJsonFormat(Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_94

    .line 430
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->ENABLE_UNIFIED_HQM_SERVER:Z

    if-eqz p2, :cond_95

    const/4 p2, 0x0

    const-string v2, "sm"

    .line 431
    invoke-direct {p0, p1, v2, v0, p2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->sendHWParamToHqmWithAppId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_94
    move v3, p2

    :cond_95
    :goto_95
    if-nez v3, :cond_bb

    const-string p0, "parse error - json data is empty"

    .line 436
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 439
    :cond_9d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error - can\'t parse feature:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    return-void
.end method

.method public resetEventCounters()V
    .registers 1

    .line 475
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mEventCounter:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setLogVisible(Z)V
    .registers 3

    .line 212
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mLogMessages:Z

    .line 213
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->mBigDataItems:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;

    .line 214
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->setLogVisible(Z)V

    goto :goto_c

    :cond_1c
    return-void
.end method
