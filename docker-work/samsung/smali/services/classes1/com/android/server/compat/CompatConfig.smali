.class public final Lcom/android/server/compat/CompatConfig;
.super Ljava/lang/Object;
.source "CompatConfig.java"


# static fields
.field public static final APP_COMPAT_DATA_DIR:Ljava/lang/String; = "/data/misc/appcompat"

.field public static final OVERRIDES_FILE:Ljava/lang/String; = "compat_framework_overrides.xml"

.field public static final STATIC_OVERRIDES_PRODUCT_DIR:Ljava/lang/String; = "/product/etc/appcompat"

.field public static final TAG:Ljava/lang/String; = "CompatConfig"


# instance fields
.field public final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public mBackupOverridesFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOverridesFileLock"
        }
    .end annotation
.end field

.field public final mChanges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/compat/CompatChange;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public final mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

.field public mOverridesFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOverridesFileLock"
        }
    .end annotation
.end field

.field public final mOverridesFileLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$7hjTlvvBCWwpgLkV17xiuTrz48g(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->lambda$addOverrideUnsafe$0(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xSJ-hEZ2EM_DHoIohZFc28nABcM(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/compat/CompatConfig;->lambda$registerListener$1(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/compat/OverrideValidatorImpl;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 95
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 96
    iput-object p2, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;
    .registers 6

    .line 100
    new-instance v0, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    .line 102
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    const-string p1, "etc"

    const-string v1, "compatconfig"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 104
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v2, "system_ext"

    filled-new-array {v2, p1, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 106
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object p0

    .line 107
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 108
    iget-object v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    goto :goto_36

    .line 111
    :cond_50
    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->initOverrides()V

    .line 112
    invoke-virtual {v0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    return-object v0
.end method

.method public static synthetic lambda$addOverrideUnsafe$0(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 4

    const/4 p3, 0x0

    .line 285
    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    new-instance p0, Lcom/android/server/compat/CompatChange;

    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object p0
.end method

.method private synthetic lambda$registerListener$1(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 5

    const/4 p4, 0x0

    .line 524
    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 526
    new-instance p0, Lcom/android/server/compat/CompatChange;

    invoke-direct {p0, p2, p3}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;Z)V
    .registers 6

    monitor-enter p0

    .line 239
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    iget-object v2, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 241
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 240
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    goto :goto_b

    .line 244
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 246
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addChange(Lcom/android/server/compat/CompatChange;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized addOverride(JLjava/lang/String;Z)Z
    .registers 6

    monitor-enter p0

    .line 217
    :try_start_1
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 218
    invoke-virtual {v0, p4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object p4

    .line 217
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result p1

    .line 219
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 221
    monitor-exit p0

    return p1

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z
    .registers 11

    .line 278
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 280
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v1

    .line 281
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 282
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 284
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    .line 288
    invoke-virtual {p1, p3, p4, v1, v2}, Lcom/android/server/compat/CompatChange;->addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    .line 259
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 262
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .registers 9

    .line 266
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz p3, :cond_3e

    .line 267
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add overrides for unknown Change ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping Change ID."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompatConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 272
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/compat/PackageOverride;

    invoke-virtual {p0, v2, v3, p2, v1}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    goto :goto_a

    :cond_4e
    return-void
.end method

.method public clearChanges()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 547
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public defaultChangeIdValue(J)Z
    .registers 3

    .line 533
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 537
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result p0

    return p0
.end method

.method public disableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .registers 10

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object p2

    .line 510
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-ge v2, v0, :cond_21

    aget-wide v4, p2, v2

    .line 511
    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 512
    invoke-virtual {v6, v1}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v6

    .line 511
    invoke-virtual {p0, v4, v5, p1, v6}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    if-eqz v3, :cond_29

    .line 515
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 516
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 518
    :cond_29
    array-length p0, p2

    return p0
.end method

.method public dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 6

    .line 589
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 591
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    add-int/lit8 v3, v1, 0x1

    .line 592
    new-instance v4, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-direct {v4, v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_13

    :cond_2a
    return-object v0
.end method

.method public dumpConfig(Ljava/io/PrintWriter;)V
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "No compat overrides."

    .line 557
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 560
    :cond_e
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 561
    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_2c
    return-void
.end method

.method public enableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .registers 10

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object p2

    .line 490
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_21

    aget-wide v3, p2, v1

    .line 491
    new-instance v5, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v5}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v6, 0x1

    .line 492
    invoke-virtual {v5, v6}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v5

    .line 491
    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    if-eqz v2, :cond_29

    .line 495
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 498
    :cond_29
    array-length p0, p2

    return p0
.end method

.method public forceNonDebuggableFinalForTest(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 542
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->forceNonDebuggableFinalForTest(Z)V

    return-void
.end method

.method public final getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J
    .registers 9

    .line 466
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 467
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 468
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v3

    if-eq v3, p2, :cond_22

    goto :goto_f

    .line 471
    :cond_22
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 472
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v3

    .line 474
    iget v3, v3, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-nez v3, :cond_f

    .line 475
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    goto :goto_f

    .line 478
    :cond_38
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .registers 7

    .line 571
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 572
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 573
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 574
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 575
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 577
    :cond_34
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 580
    :cond_40
    new-instance p0, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance p1, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {p1, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    return-object p0
.end method

.method public getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 6

    .line 140
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 142
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 143
    invoke-virtual {v2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    goto :goto_f

    .line 146
    :cond_2b
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    .line 147
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    return-object p0
.end method

.method public getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    return-object p0
.end method

.method public final getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 765
    :try_start_0
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x400000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 767
    iget-wide p0, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public initConfigFromLib(Ljava/io/File;)V
    .registers 8

    .line 598
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CompatConfig"

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_38

    .line 602
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_37

    aget-object v3, p1, v2

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a config file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0, v3}, Lcom/android/server/compat/CompatConfig;->readConfig(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_37
    return-void

    .line 599
    :cond_38
    :goto_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No directory "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initOverrides()V
    .registers 5

    .line 624
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/appcompat"

    const-string v2, "compat_framework_overrides.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/product/etc/appcompat"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/compat/CompatConfig;->initOverrides(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public initOverrides(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 633
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->clearOverrides()V

    goto :goto_a

    .line 637
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_20
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 642
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 643
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 644
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 646
    :cond_3a
    iget-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 647
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_4a

    .line 649
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 651
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    :cond_49
    return-void

    :catchall_4a
    move-exception p0

    .line 647
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public final invalidateCache()V
    .registers 1

    .line 742
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    return-void
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    if-nez p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 180
    :cond_10
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p1, p3, p0}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result p0

    return p0
.end method

.method public isDisabled(J)Z
    .registers 3

    .line 322
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_16

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isKnownChangeId(J)Z
    .registers 3

    .line 295
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isLoggingOnly(J)Z
    .registers 3

    .line 314
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_16

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isOverridable(J)Z
    .registers 3

    .line 330
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-eqz p0, :cond_16

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final loadOverrides(Ljava/io/File;)V
    .registers 10

    const-string v0, "CompatConfig"

    .line 660
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 665
    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_8c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_9 .. :try_end_13} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_8c

    .line 666
    :try_start_13
    invoke-static {v1}, Lcom/android/server/compat/overrides/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/overrides/Overrides;

    move-result-object v2

    if-nez v2, :cond_3a

    .line 668
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_82

    .line 681
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_8c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_36 .. :try_end_39} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_39} :catch_8c

    return-void

    .line 671
    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 672
    invoke-virtual {v3}, Lcom/android/server/compat/overrides/ChangeOverrides;->getChangeId()J

    move-result-wide v4

    .line 673
    iget-object v6, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/compat/CompatChange;

    if-nez v6, :cond_7a

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change ID "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " not found. Skipping overrides for it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 679
    :cond_7a
    invoke-virtual {v6, v3}, Lcom/android/server/compat/CompatChange;->loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    :try_end_7d
    .catchall {:try_start_3a .. :try_end_7d} :catchall_82

    goto :goto_42

    .line 681
    :cond_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_8c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_7e .. :try_end_81} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_81} :catch_8c

    return-void

    :catchall_82
    move-exception p0

    .line 665
    :try_start_83
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v1

    :try_start_88
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8b
    throw p0
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_8c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_88 .. :try_end_8c} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception p0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public lookupChangeId(Ljava/lang/String;)J
    .registers 4

    .line 158
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 159
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide p0

    return-wide p0

    :cond_25
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 656
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public maxTargetSdkForChangeIdOptIn(J)I
    .registers 3

    .line 303
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    const/4 p1, -0x1

    if-eqz p0, :cond_1c

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p2

    if-eq p2, p1, :cond_1c

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1c
    return p1
.end method

.method public final readConfig(Ljava/io/File;)V
    .registers 8

    const-string v0, "CompatConfig"

    .line 610
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_5f
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_c} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_c} :catch_5f
    .catchall {:try_start_2 .. :try_end_c} :catchall_5d

    .line 611
    :try_start_c
    invoke-static {v1}, Lcom/android/server/compat/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Lcom/android/server/compat/config/Config;->getCompatChange()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/config/Change;

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/android/server/compat/CompatChange;

    invoke-direct {v5, v2}, Lcom/android/server/compat/CompatChange;-><init>(Lcom/android/server/compat/config/Change;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_53

    goto :goto_18

    .line 616
    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_5f
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4f .. :try_end_52} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_52} :catch_5f
    .catchall {:try_start_4f .. :try_end_52} :catchall_5d

    goto :goto_65

    :catchall_53
    move-exception p1

    .line 610
    :try_start_54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v1

    :try_start_59
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5c
    throw p1
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_5f
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_59 .. :try_end_5d} :catch_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_5d} :catch_5f
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    goto :goto_69

    :catch_5f
    move-exception p1

    :try_start_60
    const-string v1, "Encountered an error while reading/parsing compat config file"

    .line 617
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5d

    .line 619
    :goto_65
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    return-void

    :goto_69
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 620
    throw p1
.end method

.method public recheckOverrides(Ljava/lang/String;)V
    .registers 9

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 752
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 753
    invoke-virtual {v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateForRecheck(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v4

    .line 755
    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_f

    :cond_2b
    if-eqz v2, :cond_30

    .line 758
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    :cond_30
    return-void
.end method

.method public registerContentObserver()V
    .registers 1

    .line 774
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {p0}, Lcom/android/server/compat/OverrideValidatorImpl;->registerContentObserver()V

    return-void
.end method

.method public registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .registers 8

    .line 522
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    .line 528
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatChange;->registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 529
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized removeAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 397
    :try_start_2
    iget-object v1, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 399
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 398
    invoke-virtual {p0, v3, v2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_c

    :cond_26
    if-eqz v0, :cond_2e

    .line 403
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 404
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_30

    .line 406
    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeOverride(JLjava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 345
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 347
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 350
    :cond_d
    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removeOverrideUnsafe(JLjava/lang/String;)Z
    .registers 6

    .line 358
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/CompatChange;

    if-eqz p1, :cond_17

    .line 361
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 6

    .line 372
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    .line 373
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 374
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object p0

    .line 375
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/compat/CompatChange;->removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 442
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 445
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 446
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 448
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removePackageOverrides(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 418
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    .line 420
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 421
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_10

    :cond_22
    if-eqz v1, :cond_2a

    .line 424
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 425
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 427
    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z
    .registers 7

    .line 453
    iget-object p1, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 454
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v2

    if-nez v2, :cond_39

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to remove overrides for unknown Change ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping Change ID."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompatConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 459
    :cond_39
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_7

    :cond_43
    return v0
.end method

.method public saveOverrides()V
    .registers 6

    .line 691
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    if-nez v1, :cond_d

    goto/16 :goto_ca

    .line 696
    :cond_d
    new-instance v1, Lcom/android/server/compat/overrides/Overrides;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/Overrides;-><init>()V

    .line 697
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    .line 698
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 699
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 701
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 706
    :cond_36
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 707
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 708
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_7a

    .line 710
    :cond_4c
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_7a

    const-string v1, "CompatConfig"

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_cc

    return-void

    .line 720
    :cond_7a
    :goto_7a
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_ad
    .catchall {:try_start_7a .. :try_end_7f} :catchall_cc

    .line 725
    :try_start_7f
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_86} :catch_9c
    .catchall {:try_start_7f .. :try_end_86} :catchall_cc

    .line 726
    :try_start_86
    new-instance v3, Lcom/android/server/compat/overrides/XmlWriter;

    invoke-direct {v3, v2}, Lcom/android/server/compat/overrides/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    .line 727
    invoke-static {v3, v1}, Lcom/android/server/compat/overrides/XmlWriter;->write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_92

    .line 728
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_9c
    .catchall {:try_start_8e .. :try_end_91} :catchall_cc

    goto :goto_a6

    :catchall_92
    move-exception v1

    .line 725
    :try_start_93
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_9b

    :catchall_97
    move-exception v2

    :try_start_98
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9b
    throw v1
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9c} :catch_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_cc

    :catch_9c
    move-exception v1

    :try_start_9d
    const-string v2, "CompatConfig"

    .line 729
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_a6
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 734
    monitor-exit v0

    return-void

    :catch_ad
    move-exception p0

    const-string v1, "CompatConfig"

    .line 722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create override config file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    monitor-exit v0

    return-void

    .line 693
    :cond_ca
    :goto_ca
    monitor-exit v0

    return-void

    :catchall_cc
    move-exception p0

    .line 734
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_9d .. :try_end_ce} :catchall_cc

    throw p0
.end method

.method public willChangeBeEnabled(JLjava/lang/String;)Z
    .registers 4

    .line 192
    iget-object p0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/CompatChange;

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 197
    :cond_10
    invoke-virtual {p0, p3}, Lcom/android/server/compat/CompatChange;->willBeEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
