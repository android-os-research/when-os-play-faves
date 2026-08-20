.class public Lcom/android/server/am/ComponentAliasResolver;
.super Ljava/lang/Object;
.source "ComponentAliasResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ComponentAliasResolver$Resolution;
    }
.end annotation


# static fields
.field public static final ALIAS_FILTER_ACTION:Ljava/lang/String; = "com.android.intent.action.EXPERIMENTAL_IS_ALIAS"

.field public static final ALIAS_FILTER_ACTION_ALT:Ljava/lang/String; = "android.intent.action.EXPERIMENTAL_IS_ALIAS"

.field public static final DEBUG:Z = true

.field public static final META_DATA_ALIAS_TARGET:Ljava/lang/String; = "alias_target"

.field public static final OPT_IN_PROPERTY:Ljava/lang/String; = "com.android.EXPERIMENTAL_COMPONENT_ALIAS_OPT_IN"

.field public static final PACKAGE_QUERY_FLAGS:I = 0x4c2080

.field public static final TAG:Ljava/lang/String; = "ComponentAliasResolver"

.field public static final USE_EXPERIMENTAL_COMPONENT_ALIAS:J = 0xbb29c26L


# instance fields
.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mCompatChangeListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mEnabledByDeviceConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mFromTo:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mOverrideString:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public mPlatformCompat:Lcom/android/server/compat/PlatformCompat;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DjJWXFIJ3_BNTNCvsdO3dZ1NaRE(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->refresh()V

    return-void
.end method

.method public static synthetic $r8$lambda$P4t6b1wsz3USYZuJU1C8gP8AUZA(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->lambda$resolveReceiver$3(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_2OxRZ4U6vSjN36RsLCXLeWe0rk(Lcom/android/server/am/ComponentAliasResolver;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ComponentAliasResolver;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_AhmZh-oxD-4WZe1ntaJobTQzwA(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ComponentAliasResolver;->lambda$resolveService$2(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ypOqHEGcbw7wX6zLm_i7omJBtow(Lcom/android/server/am/ComponentAliasResolver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ComponentAliasResolver;->lambda$update$1(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->refresh()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    .line 135
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$1;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 152
    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    iput-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mCompatChangeListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 121
    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 122
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .registers 3

    const-string p1, "ComponentAliasResolver"

    const-string v0, "USE_EXPERIMENTAL_COMPONENT_ALIAS changed."

    .line 153
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ComponentAliasResolver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$resolveReceiver$3(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 1

    .line 489
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$resolveService$2(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/ComponentName;
    .registers 13

    .line 459
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    int-to-long v4, p2

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    move v7, p4

    .line 461
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_18

    .line 463
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_19

    :cond_18
    move-object p0, p1

    :goto_19
    if-nez p0, :cond_1c

    return-object p1

    .line 467
    :cond_1c
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private synthetic lambda$update$1(Z)V
    .registers 5

    if-eqz p1, :cond_13

    .line 190
    iget-object p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    .line 191
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 190
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    goto :goto_18

    .line 193
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :goto_18
    return-void
.end method

.method public static unflatten(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    .line 361
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 365
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid component name detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentAliasResolver"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static validateAlias(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .registers 6

    .line 281
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    return v3

    .line 287
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    return v3

    .line 290
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComponentAliasResolver"

    .line 290
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 373
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ACTIVITY MANAGER COMPONENT-ALIAS (dumpsys activity component-alias)"

    .line 374
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Enabled: "

    .line 375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v1, "  Aliases:"

    .line 377
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 378
    :goto_18
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 379
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 380
    iget-object v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v4, "    "

    .line 381
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " -> "

    .line 383
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 387
    :cond_4e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 388
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public final extractAliasesLocked(Ljava/util/List;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 317
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 319
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "alias_target"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ComponentAliasResolver;->unflatten(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_4

    .line 323
    :cond_27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ComponentAliasResolver;->validateAndAddAliasLocked(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto :goto_4

    :cond_2b
    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isEnabledForPackageLocked(Ljava/lang/String;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 266
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.EXPERIMENTAL_COMPONENT_ALIAS_OPT_IN"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_2a

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USE_EXPERIMENTAL_COMPONENT_ALIAS not enabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ComponentAliasResolver"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return p0
.end method

.method public final loadFromMetadataLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "ComponentAliasResolver"

    const-string v1, "Scanning service aliases..."

    .line 228
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXPERIMENTAL_IS_ALIAS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->loadFromMetadataLockedInner(Landroid/content/Intent;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.EXPERIMENTAL_IS_ALIAS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->loadFromMetadataLockedInner(Landroid/content/Intent;)V

    return-void
.end method

.method public final loadFromMetadataLockedInner(Landroid/content/Intent;)V
    .registers 6

    .line 239
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4c2080

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->extractAliasesLocked(Ljava/util/List;)V

    const-string v0, "ComponentAliasResolver"

    const-string v3, "Scanning receiver aliases..."

    .line 244
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/am/ComponentAliasResolver;->extractAliasesLocked(Ljava/util/List;)V

    return-void
.end method

.method public final loadOverridesLocked()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "ComponentAliasResolver"

    const-string v1, "Loading aliases overrides ..."

    .line 335
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    const-string v2, "\\,+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v4, v2, :cond_65

    aget-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "\\:+"

    .line 337
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 338
    aget-object v6, v5, v3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_62

    .line 341
    :cond_26
    aget-object v6, v5, v3

    invoke-static {v6}, Lcom/android/server/am/ComponentAliasResolver;->unflatten(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_2f

    goto :goto_62

    .line 346
    :cond_2f
    array-length v7, v5

    const/4 v8, 0x1

    if-ne v7, v8, :cond_56

    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [removed]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v5, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    .line 350
    :cond_56
    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/android/server/am/ComponentAliasResolver;->unflatten(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_5f

    goto :goto_62

    .line 355
    :cond_5f
    invoke-virtual {p0, v6, v5}, Lcom/android/server/am/ComponentAliasResolver;->validateAndAddAliasLocked(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_65
    return-void
.end method

.method public onSystemReady(ZLjava/lang/String;)V
    .registers 8

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "platform_compat"

    .line 162
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/PlatformCompat;

    iput-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0xbb29c26

    .line 164
    iget-object v4, p0, Lcom/android/server/am/ComponentAliasResolver;->mCompatChangeListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 166
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_22

    const-string v0, "ComponentAliasResolver"

    const-string v1, "Compat listener set."

    .line 167
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    return-void

    :catchall_22
    move-exception p0

    .line 166
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final refresh()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ComponentAliasResolver;->update(ZLjava/lang/String;)V

    .line 212
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final refreshLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "ComponentAliasResolver"

    const-string v1, "Refreshing aliases..."

    .line 217
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->loadFromMetadataLocked()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->loadOverridesLocked()V

    return-void
.end method

.method public resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Lcom/android/server/am/ComponentAliasResolver$Resolution<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_69

    .line 430
    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_16

    .line 431
    new-instance p0, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {p0, v4, v4}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_66

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 434
    :cond_16
    :try_start_16
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 435
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-eqz p0, :cond_5c

    const-string v3, "ComponentAliasResolver"

    const/4 v5, 0x2

    .line 440
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 441
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v3, "STACKTRACE"

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :cond_36
    const-string v3, "ComponentAliasResolver"

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias resolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    invoke-static {v3, v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    :cond_5c
    new-instance v3, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {v3, p1, p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_16 .. :try_end_62} :catchall_66

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_66
    move-exception p0

    .line 448
    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p0

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw p0
.end method

.method public resolveReceiver(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;IIIZ)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Lcom/android/server/am/ComponentAliasResolver$Resolution<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p2

    .line 488
    new-instance v1, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/ResolveInfo;)V

    move-object v2, p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ComponentAliasResolver;->resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v1

    .line 490
    invoke-virtual {v1}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 492
    new-instance v1, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    invoke-direct {v1, p2, v3}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 497
    :cond_1a
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 505
    new-instance v6, Landroid/content/Intent;

    move-object v4, p1

    invoke-direct {v6, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 506
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {v1}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move/from16 v1, p4

    int-to-long v8, v1

    move-object/from16 v7, p3

    move/from16 v10, p6

    move/from16 v11, p5

    move/from16 v12, p7

    .line 509
    invoke-virtual/range {v5 .. v12}, Landroid/content/pm/PackageManagerInternal;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 511
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_5a

    .line 516
    :cond_4d
    new-instance v2, Lcom/android/server/am/ComponentAliasResolver$Resolution;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, p2, v1}, Lcom/android/server/am/ComponentAliasResolver$Resolution;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 513
    :cond_5a
    :goto_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alias target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentAliasResolver"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;III)Lcom/android/server/am/ComponentAliasResolver$Resolution;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "III)",
            "Lcom/android/server/am/ComponentAliasResolver$Resolution<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 458
    new-instance v6, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda2;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda2;-><init>(Landroid/content/Intent;Ljava/lang/String;III)V

    invoke-virtual {p0, v6}, Lcom/android/server/am/ComponentAliasResolver;->resolveComponentAlias(Ljava/util/function/Supplier;)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 473
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 475
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 477
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2c
    return-object p0
.end method

.method public update(ZLjava/lang/String;)V
    .registers 9

    .line 175
    iget-object v0, p0, Lcom/android/server/am/ComponentAliasResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-nez v1, :cond_9

    .line 177
    monitor-exit v0

    return-void

    .line 179
    :cond_9
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    if-nez p1, :cond_1f

    iget-object v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v3, 0xbb29c26

    const-string v5, "android"

    .line 181
    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    const/4 v2, 0x1

    .line 183
    :cond_20
    iget-boolean v1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    if-eq v2, v1, :cond_4d

    const-string v1, "ComponentAliasResolver"

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_30

    const-string v4, "Enabling"

    goto :goto_32

    :cond_30
    const-string v4, "Disabling"

    :goto_32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " component aliases..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/android/server/am/ComponentAliasResolver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ComponentAliasResolver;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_4d
    iput-boolean v2, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabled:Z

    .line 198
    iput-boolean p1, p0, Lcom/android/server/am/ComponentAliasResolver;->mEnabledByDeviceConfig:Z

    .line 199
    iput-object p2, p0, Lcom/android/server/am/ComponentAliasResolver;->mOverrideString:Ljava/lang/String;

    if-eqz v2, :cond_59

    .line 202
    invoke-virtual {p0}, Lcom/android/server/am/ComponentAliasResolver;->refreshLocked()V

    goto :goto_5e

    .line 204
    :cond_59
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 206
    :goto_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public final validateAndAddAliasLocked(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentAliasResolver"

    .line 298
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {p1, p2}, Lcom/android/server/am/ComponentAliasResolver;->validateAlias(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2d

    return-void

    .line 306
    :cond_2d
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->isEnabledForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 307
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ComponentAliasResolver;->isEnabledForPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_47

    .line 311
    :cond_42
    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver;->mFromTo:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_47
    return-void
.end method
