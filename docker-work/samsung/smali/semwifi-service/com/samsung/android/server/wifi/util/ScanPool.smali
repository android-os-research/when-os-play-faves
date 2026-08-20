.class public Lcom/samsung/android/server/wifi/util/ScanPool;
.super Ljava/lang/Object;
.source "ScanPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;,
        Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;,
        Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;
    }
.end annotation


# static fields
.field static final CAPABILITY_OF_MESH_NETWORK:Ljava/lang/String; = "[IBSS]"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CONFIG_KEY_WEP_STRING:Ljava/lang/String; = "WEP"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CONFIG_KEY_WPA3_EAP_STRING:Ljava/lang/String; = "WPA3_EAP"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final INVALID_FREQUENCY:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SCAN_LIFE_TIME:J = 0x124f80L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SCAN_LIFE_TIME_FOR_MANAGED_NETWORK:J = 0xa4cb800L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemWifiScanPool"

.field private static sInstance:Lcom/samsung/android/server/wifi/util/ScanPool;


# instance fields
.field private final mConfigKeys:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCountryCodeHelper:Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;

.field private final mLastConnectedBssid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMeasuredCountryCode:Ljava/lang/String;

.field private final mLastScanResults:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastScannedConfigKeys:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListenerLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagedConfigKeys:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScanFailedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;

.field private final mScannedAps:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-tANORSTtkITpg8bhy2JZILbVeY(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;JLandroid/net/wifi/ScanResult;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$evictOldScanItems$10(Ljava/util/Set;JLandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0frhf5Y9t9QT_zoOzc27bSarvmc(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$appendScannedAccessPoints$3(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$88O_7F8E8XPqZohI5VDbPcYt6wI(Lcom/samsung/android/server/wifi/util/ScanPool;JLandroid/net/wifi/ScanResult;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$evictOldScanItems$9(JLandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J079OpNi9Zw9d23FqTfyLXP2FTk(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$getManagedBssids$0(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KfeXH-B1GQ0YnuR-GpsicLqEIf8(Ljava/util/List;Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$evictOldScanItems$11(Ljava/util/List;Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O2QWfn8Nlg1SGkW-fC-PIzMqPxY(Ljava/util/List;Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$notifyToClients$5(Ljava/util/List;Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VGSKhGj38u8zJcy_PYYC91_yrFg(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;Landroid/net/wifi/ScanResult;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$dump$12(Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X6oK_Ls6kaOYnU-hOi4cYgNTMdk(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$removeBssidFromConfigKeys$8(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XJmU2f67VUclXkKgIz9QyubdL88(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->isValidScanResult(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$djNeHIvssZwBvqN1-TbJ4uIPjoE(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$updateLastScannedConfigKeys$4(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXnsDJcu7Vqyi1-2dzciTL-4jPY(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$getScanResults$6(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s-a-XEjOk_zUF_u8IkFw0FwzqMk(Ljava/util/List;Ljava/util/Set;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$removeBssidFromConfigKeys$7(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tkDYZb7YzY5oRKhOrXzsmbKms-o(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$appendScannedConfigKeys$2(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpKhMVjkxup_V2mGY3GXXiaFq0c(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->lambda$appendScannedConfigKeys$1(Landroid/net/wifi/ScanResult;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/util/ScanPool;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->notifyToClients(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScanResults(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool;->updateScanResults(Ljava/util/List;Z)V

    return-void
.end method

.method constructor <init>()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListenerLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListeners:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScannedConfigKeys:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScanResults:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastConnectedBssid:Ljava/util/Map;

    .line 98
    new-instance v0, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;-><init>(ILcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mCountryCodeHelper:Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mManagedConfigKeys:Ljava/util/Set;

    const-string v0, ""

    .line 100
    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastMeasuredCountryCode:Ljava/lang/String;

    return-void
.end method

.method private addBssidIntoConfigKeysPool(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 252
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private appendScannedAccessPoints(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    .line 260
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 261
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private appendScannedConfigKeys(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    .line 245
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private evictOldScanItems()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 392
    :try_start_c
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getManagedBssids()Ljava/util/Set;

    move-result-object v4

    .line 393
    iget-object v5, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    .line 394
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0, v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;J)V

    .line 395
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0, v4, v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;J)V

    .line 396
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda12;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda12;-><init>(Ljava/util/List;)V

    .line 398
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 399
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getCurrentBssids()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 400
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 401
    monitor-exit v3

    return-object v2

    :catchall_4a
    move-exception p0

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_c .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method private static getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getConfigKeys(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 463
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1f

    .line 465
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getSecurityString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    aget-object v3, v0, v2

    .line 466
    iget-object v4, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/server/wifi/util/ScanPool;
    .registers 2

    const-class v0, Lcom/samsung/android/server/wifi/util/ScanPool;

    monitor-enter v0

    .line 84
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/wifi/util/ScanPool;->sInstance:Lcom/samsung/android/server/wifi/util/ScanPool;

    if-nez v1, :cond_e

    .line 85
    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/ScanPool;-><init>()V

    sput-object v1, Lcom/samsung/android/server/wifi/util/ScanPool;->sInstance:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 87
    :cond_e
    sget-object v1, Lcom/samsung/android/server/wifi/util/ScanPool;->sInstance:Lcom/samsung/android/server/wifi/util/ScanPool;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getManagedBssids()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mManagedConfigKeys:Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static getSecurityString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-string v0, "WEP"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 481
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string v0, "WAPI-PSK"

    .line 482
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    new-array p0, v2, [Ljava/lang/String;

    .line 483
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    aput-object v0, p0, v1

    return-object p0

    :cond_22
    const-string v0, "WAPI-CERT"

    .line 484
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-array p0, v2, [Ljava/lang/String;

    .line 485
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    aput-object v0, p0, v1

    return-object p0

    :cond_35
    const-string v0, "SAE"

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "PSK"

    const/4 v4, 0x2

    if-eqz v0, :cond_60

    .line 487
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 v0, 0x8

    if-eqz p0, :cond_57

    new-array p0, v4, [Ljava/lang/String;

    .line 488
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v3, v0

    aput-object v0, p0, v1

    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v2

    aput-object v0, p0, v2

    return-object p0

    :cond_57
    new-array p0, v2, [Ljava/lang/String;

    .line 491
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v2, v0

    aput-object v0, p0, v1

    return-object p0

    .line 492
    :cond_60
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-array p0, v2, [Ljava/lang/String;

    .line 493
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v2

    aput-object v0, p0, v1

    return-object p0

    .line 494
    :cond_6f
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForEapSuiteBNetwork(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "WPA3_EAP"

    if-eqz v0, :cond_84

    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v1

    .line 495
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    aput-object v0, p0, v2

    return-object p0

    .line 497
    :cond_84
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForWpa3EnterpriseTransitionNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    new-array p0, v4, [Ljava/lang/String;

    aput-object v3, p0, v1

    .line 498
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v4

    aput-object v0, p0, v2

    return-object p0

    .line 500
    :cond_95
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForWpa3EnterpriseOnlyNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 501
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a0
    const-string v0, "EAP"

    .line 502
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b1

    new-array p0, v2, [Ljava/lang/String;

    .line 503
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v4

    aput-object v0, p0, v1

    return-object p0

    :cond_b1
    const-string v0, "OWE_TRANSITION"

    .line 504
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x9

    if-eqz v0, :cond_ca

    new-array p0, v4, [Ljava/lang/String;

    .line 505
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v3

    aput-object v0, p0, v1

    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object v0, p0, v2

    return-object p0

    :cond_ca
    const-string v0, "OWE"

    .line 507
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_db

    new-array p0, v2, [Ljava/lang/String;

    .line 508
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v3

    aput-object v0, p0, v1

    return-object p0

    :cond_db
    new-array p0, v2, [Ljava/lang/String;

    .line 510
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object v0, p0, v1

    return-object p0
.end method

.method private isOldManagedScanResult(JLandroid/net/wifi/ScanResult;)Z
    .registers 8

    .line 410
    iget-wide v0, p3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xa4cb800

    cmp-long p0, p1, v0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private isOldScanResult(JLandroid/net/wifi/ScanResult;)Z
    .registers 8

    .line 406
    iget-wide v0, p3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x124f80

    cmp-long p0, p1, v0

    if-lez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method private static isScanResultForEapSuiteBNetwork(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "SUITE_B_192"

    .line 514
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "RSN"

    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "WEP"

    .line 516
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "TKIP"

    .line 517
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 518
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForPmfMandatoryNetwork(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0
.end method

.method private static isScanResultForPmfCapableNetwork(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[MFPC]"

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isScanResultForPmfMandatoryNetwork(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[MFPR]"

    .line 542
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isScanResultForWpa3EnterpriseOnlyNetwork(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "EAP/SHA256"

    .line 532
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "EAP/SHA1"

    .line 533
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "RSN"

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "WEP"

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "TKIP"

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 537
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForPmfMandatoryNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 538
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForPmfCapableNetwork(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method private static isScanResultForWpa3EnterpriseTransitionNetwork(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "EAP/SHA1"

    .line 522
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "EAP/SHA256"

    .line 523
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "RSN"

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "WEP"

    .line 525
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    const-string v0, "TKIP"

    .line 526
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 527
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForPmfMandatoryNetwork(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 528
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->isScanResultForPmfCapableNetwork(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method private isValidScanResult(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 291
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "[IBSS]"

    .line 293
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private synthetic lambda$appendScannedAccessPoints$3(Landroid/net/wifi/ScanResult;)V
    .registers 3

    .line 260
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$appendScannedConfigKeys$1(Landroid/net/wifi/ScanResult;Ljava/lang/String;)V
    .registers 3

    .line 246
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->addBssidIntoConfigKeysPool(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$appendScannedConfigKeys$2(Landroid/net/wifi/ScanResult;)V
    .registers 4

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$dump$12(Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;Landroid/net/wifi/ScanResult;)V
    .registers 6

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getCurrentBssids()Ljava/util/Set;

    move-result-object p0

    iget-object v0, p4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, " # "

    .line 428
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    .line 429
    :cond_12
    iget-object p0, p4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, " * "

    .line 430
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    :cond_20
    const-string p0, " - "

    .line 432
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    :goto_25
    invoke-virtual {p4}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    invoke-static {p4}, Lcom/samsung/android/server/wifi/util/IeParser;->parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "staCount"

    const/4 p3, -0x1

    .line 436
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_51

    .line 438
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sta="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_51
    const-string p2, "channelUtilization"

    .line 440
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_6d

    .line 442
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " cu="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6d
    const-string p2, "capacity"

    .line 444
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_89

    .line 446
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " cap="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_89
    const/4 p2, 0x0

    const-string p3, "isMobileHotspot"

    .line 448
    invoke-virtual {p0, p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_97

    const-string p2, " sec_ap=true"

    .line 451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_97
    const-string p2, "country"

    .line 453
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b7

    .line 454
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " country="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b7
    const-string p0, ""

    .line 456
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$evictOldScanItems$10(Ljava/util/Set;JLandroid/net/wifi/ScanResult;)Z
    .registers 6

    .line 396
    iget-object v0, p4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 397
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/util/ScanPool;->isOldManagedScanResult(JLandroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private static synthetic lambda$evictOldScanItems$11(Ljava/util/List;Landroid/net/wifi/ScanResult;)V
    .registers 2

    .line 398
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$evictOldScanItems$9(JLandroid/net/wifi/ScanResult;)Z
    .registers 4

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/util/ScanPool;->isOldScanResult(JLandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getManagedBssids$0(Ljava/util/Set;Ljava/lang/String;)V
    .registers 4

    .line 177
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 177
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$getScanResults$6(Ljava/util/Set;Ljava/lang/String;)V
    .registers 3

    .line 323
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$notifyToClients$5(Ljava/util/List;Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V
    .registers 2

    .line 280
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;->onScanResultUpdated(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$removeBssidFromConfigKeys$7(Ljava/util/List;Ljava/util/Set;)V
    .registers 3

    .line 376
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private static synthetic lambda$removeBssidFromConfigKeys$8(Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V
    .registers 3

    .line 380
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 381
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private synthetic lambda$updateLastScannedConfigKeys$4(Landroid/net/wifi/ScanResult;)V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScannedConfigKeys:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private measureCountryCode(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mCountryCodeHelper:Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->measure(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastMeasuredCountryCode:Ljava/lang/String;

    return-void
.end method

.method private notifyToClients(ILjava/lang/String;)V
    .registers 3

    .line 285
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScanFailedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;

    if-eqz p0, :cond_7

    .line 286
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;->onScanFailed(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private notifyToClients(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListeners:Ljava/util/Set;

    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 281
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private removeBssidFromConfigKeys(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    .line 376
    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 378
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    new-instance v2, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 384
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 385
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method private removeOldScans()V
    .registers 3

    .line 366
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->evictOldScanItems()Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->removeBssidFromConfigKeys(Ljava/util/List;)V

    .line 368
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_27

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove old scan results, size:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifiScanPool"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method private updateLastScanResults(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 274
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScanResults:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private updateLastScannedConfigKeys(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScannedConfigKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 267
    new-instance v1, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 268
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private updateScanResults(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_19

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->removeOldScans()V

    if-eqz p1, :cond_18

    .line 217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_18

    .line 218
    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->updateLastScanResults(Ljava/util/List;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->updateLastScannedConfigKeys(Ljava/util/List;)V

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->measureCountryCode(Ljava/util/List;)V

    goto :goto_19

    :cond_18
    :goto_18
    return-void

    .line 222
    :cond_19
    :goto_19
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->appendScannedAccessPoints(Ljava/util/List;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->appendScannedConfigKeys(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_22
    const-string v1, "SemWifiScanPool"

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScanResult, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_33

    const-string v3, "full "

    goto :goto_35

    :cond_33
    const-string v3, "partial "

    .line 227
    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "scan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScannedConfigKeys:Ljava/util/Set;

    .line 229
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pool_bssid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    .line 230
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pool_configKeys:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    .line 231
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_22 .. :try_end_76} :catchall_7c

    if-eqz p2, :cond_7b

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->notifyToClients(Ljava/util/List;)V

    :cond_7b
    return-void

    :catchall_7c
    move-exception p0

    .line 232
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ScanPool:"

    .line 422
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - last measured country code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastMeasuredCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v1, Lcom/samsung/android/server/wifi/util/LogUtils;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getManagedBssids()Ljava/util/Set;

    move-result-object v2

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/io/PrintWriter;Ljava/util/Set;Lcom/samsung/android/server/wifi/util/LogUtils;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 458
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getBssidList(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_14

    .line 345
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    .line 347
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 348
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method getConfigKeySize()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 362
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getConfigKeys(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 417
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastMeasuredCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mCountryCodeHelper:Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->getApCount(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mCountryCodeHelper:Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastMeasuredCountryCode:Ljava/lang/String;

    .line 203
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/ScanPool$CountryCodeHelper;->getApCount(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_11

    return-object p1

    .line 206
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastMeasuredCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentBssids()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastConnectedBssid:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFrequency(Ljava/lang/String;)I
    .registers 2

    .line 190
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 192
    iget p0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getLastScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScanResults:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 307
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getLastScannedConfigKeys()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastScannedConfigKeys:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 300
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .registers 4

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 331
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    if-eqz p0, :cond_1c

    .line 334
    new-instance p1, Landroid/net/wifi/ScanResult;

    invoke-direct {p1, p0}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    monitor-exit v0

    return-object p1

    .line 336
    :cond_1c
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception p0

    .line 337
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 322
    iget-object v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mConfigKeys:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    new-instance v2, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;)V

    .line 323
    invoke-interface {p1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 324
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception p0

    .line 325
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method getScannedApSize()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScannedAps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 355
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "SemWifiScanPool"

    const-string p1, "registerScanResultUpdatedListener - already registered"

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setCurrentBssid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLastConnectedBssid:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setManagedConfigKeys(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mManagedConfigKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mManagedConfigKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setScanFailedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mScanFailedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanFailedListener;

    return-void
.end method

.method public startMonitoring(Landroid/net/wifi/WifiScanner;Landroid/os/Handler;)V
    .registers 4

    .line 128
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance p2, Lcom/samsung/android/server/wifi/util/ScanPool$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/util/ScanPool$1;-><init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V

    invoke-virtual {p1, v0, p2}, Landroid/net/wifi/WifiScanner;->registerScanListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiScanner$ScanListener;)V

    const-string p0, "SemWifiScanPool"

    const-string p1, "start monitoring"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "SemWifiScanPool"

    const-string p1, "unregisterScanResultUpdatedListener - ignored"

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method updateScanResults(Ljava/util/List;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->updateScanResults(Ljava/util/List;Z)V

    return-void
.end method
