.class public Landroid/net/ConnectivityModuleConnector;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;,
        Landroid/net/ConnectivityModuleConnector$DependenciesImpl;,
        Landroid/net/ConnectivityModuleConnector$Dependencies;,
        Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;,
        Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;
    }
.end annotation


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final PREFS_FILE:Ljava/lang/String; = "ConnectivityModuleConnector.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String; = "ConnectivityModuleConnector"

.field private static sInstance:Landroid/net/ConnectivityModuleConnector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

.field private final mHealthListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHealthListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLog"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mlogi(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeCrashWithTerribleFailure(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcheckModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 84
    new-instance v0, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>(Landroid/net/ConnectivityModuleConnector$DependenciesImpl-IA;)V

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;-><init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 89
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    return-void
.end method

.method private static checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 292
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 294
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Networking module does not have permission "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getInstance()Landroid/net/ConnectivityModuleConnector;
    .registers 2

    const-class v0, Landroid/net/ConnectivityModuleConnector;

    monitor-enter v0

    .line 96
    :try_start_3
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    if-nez v1, :cond_e

    .line 97
    new-instance v1, Landroid/net/ConnectivityModuleConnector;

    invoke-direct {v1}, Landroid/net/ConnectivityModuleConnector;-><init>()V

    sput-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    .line 99
    :cond_e
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 5

    .line 357
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    .line 358
    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "ConnectivityModuleConnector.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 360
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-object p0

    :catchall_17
    move-exception v0

    const-string v1, "Error loading shared preferences"

    .line 362
    invoke-direct {p0, v1, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    .line 387
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 389
    :try_start_8
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 390
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 394
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    iget-object p2, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter p2

    .line 396
    :try_start_8
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 397
    monitor-exit p2

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 401
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    iget-object p2, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter p2

    .line 403
    :try_start_8
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 404
    monitor-exit p2

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p2
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3

    .line 408
    sget-object v0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 410
    :try_start_8
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 411
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private declared-synchronized maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    const/4 v3, 0x0

    .line 301
    :try_start_8
    invoke-direct {v1, v0, v3}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "connectivity"

    const-string/jumbo v8, "min_crash_interval"

    const-wide/32 v9, 0x1499700

    .line 305
    invoke-static {v7, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    const-string v9, "connectivity"

    const-string/jumbo v10, "min_uptime_before_crash"

    const-wide/32 v11, 0x1b7740

    .line 307
    invoke-static {v9, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "connectivity"

    const-string v12, "always_ratelimit_networkstack_crash"

    const/4 v13, 0x0

    .line 309
    invoke-static {v11, v12, v13}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 312
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityModuleConnector;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v12

    .line 313
    invoke-direct {v1, v12}, Landroid/net/ConnectivityModuleConnector;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    move-result-wide v14

    .line 326
    sget-boolean v16, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/16 v17, 0x1

    if-eqz v16, :cond_47

    if-nez v11, :cond_47

    move/from16 v11, v17

    goto :goto_48

    :cond_47
    move v11, v13

    :goto_48
    cmp-long v3, v3, v9

    if-gez v3, :cond_4f

    move/from16 v3, v17

    goto :goto_50

    :cond_4f
    move v3, v13

    :goto_50
    const-wide/16 v9, 0x0

    cmp-long v4, v14, v9

    if-eqz v4, :cond_5d

    cmp-long v4, v14, v5

    if-gez v4, :cond_5d

    move/from16 v4, v17

    goto :goto_5e

    :cond_5d
    move v4, v13

    :goto_5e
    if-eqz v4, :cond_67

    add-long/2addr v14, v7

    cmp-long v4, v5, v14

    if-gez v4, :cond_67

    move/from16 v13, v17

    :cond_67
    if-nez v11, :cond_93

    if-nez v3, :cond_6d

    if-eqz v13, :cond_93

    :cond_6d
    if-eqz v2, :cond_91

    .line 345
    iget-object v3, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v3
    :try_end_72
    .catchall {:try_start_8 .. :try_end_72} :catchall_9c

    .line 346
    :try_start_72
    new-instance v0, Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 347
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_8e

    .line 348
    :try_start_7a
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;

    .line 349
    invoke-interface {v3, v2}, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_7a .. :try_end_8d} :catchall_9c

    goto :goto_7e

    :catchall_8e
    move-exception v0

    .line 347
    :try_start_8f
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_9c

    .line 352
    :cond_91
    monitor-exit p0

    return-void

    .line 337
    :cond_93
    :try_start_93
    invoke-direct {v1, v12, v5, v6}, Landroid/net/ConnectivityModuleConnector;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 338
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    :try_start_5
    const-string/jumbo v2, "lastcrash_time"

    .line 370
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    return-wide p0

    :catchall_d
    move-exception p1

    const-string v2, "Error getting last crash time"

    .line 372
    invoke-direct {p0, v2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 380
    :cond_3
    :try_start_3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "lastcrash_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_12

    goto :goto_18

    :catchall_12
    move-exception p1

    const-string p2, "Error writing last crash time"

    .line 382
    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 419
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mLog:Landroid/net/util/SharedLog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Network stack init"

    .line 107
    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V
    .registers 3

    .line 195
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .registers 7

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting networking module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 222
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x1

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_30

    .line 227
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string p1, "Starting networking module in network_stack process"

    .line 229
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    goto :goto_35

    :cond_30
    const-string p1, "Starting networking module in system_server process"

    .line 231
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    :goto_35
    const/4 p1, 0x0

    if-nez v1, :cond_3e

    const-string p2, "Could not resolve the networking module"

    .line 235
    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_3e
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 243
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;

    invoke-direct {v2, p0, p2, p3, p1}, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;-><init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection-IA;)V

    const/16 p1, 0x41

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, p1, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not bind to networking module in-process, or in app with "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6c
    const-string p1, "Networking module service start requested"

    .line 252
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    return-void
.end method
