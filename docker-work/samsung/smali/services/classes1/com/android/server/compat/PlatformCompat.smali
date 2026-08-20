.class public Lcom/android/server/compat/PlatformCompat;
.super Lcom/android/internal/compat/IPlatformCompat$Stub;
.source "PlatformCompat.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Compatibility"


# instance fields
.field public final mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public final mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field public final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$La7tS0VF-8cvQsA8oEXqB-0faSQ(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/server/compat/PlatformCompat;->lambda$listUIChanges$0(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n_2JjKeulvxyAF8j4MdiUMuKl6A(Lcom/android/server/compat/PlatformCompat;Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCompatConfig(Lcom/android/server/compat/PlatformCompat;)Lcom/android/server/compat/CompatConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 80
    new-instance v0, Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-direct {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 81
    invoke-static {v0, p1}, Lcom/android/server/compat/CompatConfig;->create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/compat/CompatConfig;Lcom/android/internal/compat/AndroidBuildClassifier;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/android/internal/compat/ChangeReporter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 89
    iput-object p2, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 90
    iput-object p3, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$listUIChanges$0(I)[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 1

    .line 329
    new-array p0, p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object p0
.end method


# virtual methods
.method public final checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 462
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/compat/PlatformCompat;->isKnownChangeId(J)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/compat/CompatConfig;->isOverridable(J)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_4

    .line 463
    :cond_27
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only change ids marked as Overridable can be overridden."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    return-void
.end method

.method public final checkCompatChangeLogPermission()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 422
    :cond_9
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.LOG_COMPAT_CHANGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 423
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot log compat change usage"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCompatChangeOverrideOverridablePermission()V
    .registers 3

    .line 451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 454
    :cond_9
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 456
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot override compat change"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCompatChangeOverridePermission()V
    .registers 3

    .line 440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 443
    :cond_9
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 445
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot override compat change"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkCompatChangeReadAndLogPermission()V
    .registers 1

    .line 470
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadPermission()V

    .line 471
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    return-void
.end method

.method public final checkCompatChangeReadPermission()V
    .registers 3

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 432
    :cond_9
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_COMPAT_CHANGE_CONFIG"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 434
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Cannot read compat change"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOverride(JLjava/lang/String;)Z
    .registers 5

    .line 282
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 283
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result p1

    .line 284
    invoke-virtual {p0, p3}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p1
.end method

.method public clearOverrideForTest(JLjava/lang/String;)Z
    .registers 4

    .line 290
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 291
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverride(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearOverrides(Ljava/lang/String;)V
    .registers 3

    .line 269
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 270
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public clearOverridesForTest(Ljava/lang/String;)V
    .registers 2

    .line 276
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 277
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public disableTargetSdkChanges(Ljava/lang/String;I)I
    .registers 4

    .line 260
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 261
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 262
    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->disableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result p2

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 362
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "platform_compat"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 365
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 366
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p2}, Lcom/android/server/compat/CompatConfig;->dumpConfig(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableTargetSdkChanges(Ljava/lang/String;I)I
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 252
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    .line 253
    invoke-virtual {v0, p1, p2}, Lcom/android/server/compat/CompatConfig;->enableTargetSdkChangesForPackage(Ljava/lang/String;I)I

    move-result p2

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return p2
.end method

.method public getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .registers 2

    .line 316
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 317
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 9

    .line 386
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 387
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const-wide/16 v2, 0x0

    move-object v1, p1

    move v5, p2

    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 2

    .line 347
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object p0

    return-object p0
.end method

.method public getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object p0

    return-object p0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .registers 5

    .line 130
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 131
    invoke-virtual {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    if-nez p4, :cond_10

    .line 133
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result p0

    return p0

    .line 135
    :cond_10
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledByUid(JI)Z
    .registers 10

    .line 140
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadAndLogPermission()V

    .line 141
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 142
    array-length v1, v0

    if-nez v1, :cond_13

    goto :goto_27

    .line 146
    :cond_13
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_16
    if-ge v2, v1, :cond_26

    aget-object v4, v0, v2

    .line 148
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 147
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v4

    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    return v3

    .line 143
    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->defaultChangeIdValue(J)Z

    move-result p0

    return p0
.end method

.method public isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 6

    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz p3, :cond_10

    .line 171
    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x2

    :goto_d
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    :cond_10
    return v0
.end method

.method public isChangeEnabledInternal(JLjava/lang/String;I)Z
    .registers 6

    .line 190
    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->willChangeBeEnabled(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 191
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 192
    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 193
    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 194
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 4

    .line 160
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isKnownChangeId(J)Z
    .registers 3

    .line 334
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result p0

    return p0
.end method

.method public final isShownInUI(Lcom/android/internal/compat/CompatibilityChangeInfo;)Z
    .registers 8

    .line 475
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 478
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v2

    const-wide/32 v4, 0x8e787b1

    cmp-long v0, v2, v4

    if-nez v0, :cond_14

    return v1

    .line 481
    :cond_14
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_31

    .line 482
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_30

    .line 483
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result p0

    if-gt p1, p0, :cond_30

    move v1, v2

    :cond_30
    return v1

    :cond_31
    return v2
.end method

.method public final killPackage(Ljava/lang/String;)V
    .registers 6

    .line 391
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 392
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 391
    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    const-string v1, "Compatibility"

    if-gez v0, :cond_30

    .line 395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Didn\'t find package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on device."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Killing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (UID "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/compat/PlatformCompat;->killUid(I)V

    return-void
.end method

.method public final killUid(I)V
    .registers 6

    .line 404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 406
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_16

    const/4 v2, -0x1

    const-string v3, "PlatformCompat overrides"

    .line 408
    invoke-interface {p0, p1, v2, v3}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_16
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_16

    :catchall_11
    move-exception p0

    .line 413
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 414
    throw p0

    .line 413
    :catch_16
    :cond_16
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 1

    .line 322
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeReadPermission()V

    .line 323
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object p0

    return-object p0
.end method

.method public listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 3

    .line 328
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    return-object p0
.end method

.method public lookupChangeId(Ljava/lang/String;)J
    .registers 2

    .line 357
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->lookupChangeId(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    .registers 4

    .line 233
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 235
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 236
    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    goto :goto_d

    .line 238
    :cond_23
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/compat/CompatConfig;->addAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;Z)V

    return-void
.end method

.method public putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    .registers 4

    .line 244
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 245
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 246
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    return-void
.end method

.method public registerContentObserver()V
    .registers 1

    .line 544
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->registerContentObserver()V

    return-void
.end method

.method public registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .registers 4

    .line 504
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    move-result p0

    return p0
.end method

.method public registerPackageReceiver(Landroid/content/Context;)V
    .registers 4

    .line 513
    new-instance v0, Lcom/android/server/compat/PlatformCompat$1;

    invoke-direct {v0, p0}, Lcom/android/server/compat/PlatformCompat$1;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    .line 530
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 531
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 532
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 533
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 534
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p1, v0, p0, v1, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .registers 4

    .line 297
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 299
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 300
    iget-object v1, v1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    goto :goto_d

    .line 302
    :cond_1f
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/compat/CompatConfig;->removeAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    return-void
.end method

.method public removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .registers 4

    .line 309
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverrideOverridablePermission()V

    .line 310
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/android/server/compat/PlatformCompat;->checkAllCompatOverridesAreOverridable(Ljava/util/Collection;)V

    .line 311
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    return-void
.end method

.method public reportChange(JLandroid/content/pm/ApplicationInfo;)V
    .registers 5

    .line 97
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    .line 98
    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    return-void
.end method

.method public reportChangeByPackageName(JLjava/lang/String;I)V
    .registers 5

    .line 104
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    .line 105
    invoke-virtual {p0, p3, p4}, Lcom/android/server/compat/PlatformCompat;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_f

    .line 107
    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 p4, 0x3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    :cond_f
    return-void
.end method

.method public reportChangeByUid(JI)V
    .registers 5

    .line 113
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeLogPermission()V

    const/4 v0, 0x3

    .line 114
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/compat/PlatformCompat;->reportChangeInternal(JII)V

    return-void
.end method

.method public final reportChangeInternal(JII)V
    .registers 5

    .line 118
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJI)V

    return-void
.end method

.method public resetReporting(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/internal/compat/ChangeReporter;->resetReportedChanges(I)V

    return-void
.end method

.method public setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 8

    .line 201
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 206
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 207
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    .line 207
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 210
    :cond_64
    iget-object p1, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance v1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/server/compat/PlatformCompat;->killPackage(Ljava/lang/String;)V

    return-void
.end method

.method public setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    .registers 8

    .line 217
    invoke-virtual {p0}, Lcom/android/server/compat/PlatformCompat;->checkCompatChangeOverridePermission()V

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->enabledChanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 222
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeConfig;->disabledChanges()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 223
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v3, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v3}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    .line 223
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 226
    :cond_64
    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    new-instance p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {p1, v0}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/compat/CompatConfig;->addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    return-void
.end method
