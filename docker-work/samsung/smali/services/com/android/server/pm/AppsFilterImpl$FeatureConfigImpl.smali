.class public Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
.super Ljava/lang/Object;
.source "AppsFilterImpl.java"

# interfaces
.implements Lcom/android/server/pm/FeatureConfig;
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AppsFilterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureConfigImpl"
.end annotation


# static fields
.field public static final FILTERING_ENABLED_NAME:Ljava/lang/String; = "package_query_filtering_enabled"


# instance fields
.field public mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mDisabledPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mFeatureEnabled:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public mLoggingEnabled:Landroid/util/SparseBooleanArray;

.field public final mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$r6f8QAl7MpA9ThI7Ijt48dWtCRQ(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->lambda$onSystemReady$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 4

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 213
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 221
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 222
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V
    .registers 4

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 213
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    const/4 v1, 0x0

    .line 215
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 226
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 227
    iput-object v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 228
    iget-boolean v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 229
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 230
    iget-object p1, p1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private synthetic lambda$onSystemReady$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 245
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "package_query_filtering_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 246
    monitor-enter p0

    :try_start_e
    const-string/jumbo v0, "package_query_filtering_enabled"

    const/4 v1, 0x1

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 249
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw p1

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public enableLogging(IZ)V
    .registers 3

    if-eqz p2, :cond_14

    .line 292
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-nez p2, :cond_d

    .line 293
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    .line 295
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2e

    .line 297
    :cond_14
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_2e

    .line 298
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 300
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 301
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_2e

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    :cond_2e
    :goto_2e
    return-void
.end method

.method public isGloballyEnabled()Z
    .registers 1

    .line 262
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_3

    return p0

    :catchall_3
    move-exception p0

    .line 267
    throw p0
.end method

.method public isLoggingEnabled(I)Z
    .registers 2

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mLoggingEnabled:Landroid/util/SparseBooleanArray;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onCompatChange(Ljava/lang/String;)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v0

    .line 312
    invoke-interface {v0, p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 316
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    .line 317
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-static {p0, v0, p1}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$mupdateShouldFilterCacheForPackage(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    const-string/jumbo v0, "package_manager_service"

    const-string/jumbo v1, "package_query_filtering_enabled"

    const/4 v2, 0x1

    .line 239
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mFeatureEnabled:Z

    .line 243
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    .line 242
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x81452eb

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    return-void
.end method

.method public packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 276
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_d

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_d
    move-exception p0

    .line 281
    throw p0
.end method

.method public setAppsFilter(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/FeatureConfig;
    .registers 2

    .line 354
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;)V

    return-object v0
.end method

.method public final updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    .line 325
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-wide/32 v2, 0x81452eb

    .line 323
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 327
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 329
    :cond_1d
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_26
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz p0, :cond_2d

    .line 332
    invoke-static {p0}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V

    :cond_2d
    return-void
.end method

.method public updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 5

    .line 338
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_1e

    if-nez p2, :cond_1e

    .line 339
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isTestOnly()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 340
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 341
    :goto_1f
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->enableLogging(IZ)V

    if-eqz p2, :cond_39

    .line 343
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mDisabledPackages:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 344
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    if-eqz p0, :cond_46

    .line 345
    invoke-static {p0}, Lcom/android/server/pm/AppsFilterImpl;->-$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V

    goto :goto_46

    .line 347
    :cond_39
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 348
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->updateEnabledState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_46
    :goto_46
    return-void
.end method
