.class public Lcom/samsung/android/server/pm/monetization/MonetizationUtils;
.super Ljava/lang/Object;
.source "MonetizationUtils.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;


# instance fields
.field public final DISABLE_GALAXY_STORE_BADGE:Ljava/lang/String;

.field public final DISABLE_GALAXY_STORE_BADGE_FOR_APP:Ljava/lang/String;

.field public final ENABLE_GALAXY_STORE_BADGE:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public final TRUECALLER_PKGNAME:Ljava/lang/String;

.field public final mBadgeLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsTruecallerSettingsUpdated:Z

.field public mLauncherApps:Landroid/content/pm/ILauncherApps;

.field public mPackageManager:Landroid/content/pm/IPackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPreloadAppsForBadge:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPreloadAppsLaunched:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsForBadge:Landroid/util/ArraySet;

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v1, "persist.galaxy_store.badge.feature"

    .line 45
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    const-string v0, "Monetization"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->TAG:Ljava/lang/String;

    const-string v0, "0"

    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->DISABLE_GALAXY_STORE_BADGE:Ljava/lang/String;

    .line 55
    iput-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->ENABLE_GALAXY_STORE_BADGE:Ljava/lang/String;

    const-string v0, "2"

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->DISABLE_GALAXY_STORE_BADGE_FOR_APP:Ljava/lang/String;

    const-string v0, "com.truecaller"

    .line 58
    iput-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->TRUECALLER_PKGNAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;
    .registers 3

    .line 66
    const-class v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->sInstance:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    if-nez v1, :cond_e

    .line 68
    new-instance v1, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->sInstance:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 70
    :cond_e
    sget-object p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->sInstance:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public changeMonetizationBadgeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 260
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_85

    const-string/jumbo v0, "value cannot be null"

    .line 266
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_8e

    goto :goto_42

    :pswitch_22
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v0, 0x2

    goto :goto_42

    :pswitch_2d
    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_42

    :cond_36
    move v0, v2

    goto :goto_42

    :pswitch_38
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_42

    :cond_41
    move v0, v3

    :goto_42
    const-string/jumbo v1, "persist.galaxy_store.badge.feature"

    const-string/jumbo v4, "packageName cannot be null"

    packed-switch v0, :pswitch_data_98

    const-string p0, "Monetization"

    const-string p1, "Unknown parameter passed to change badge state"

    .line 288
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 284
    :pswitch_53
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0, p2, v3, v3, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    goto :goto_84

    .line 276
    :pswitch_5a
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 277
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_6a
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0, p2, v3, v3, v2}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    goto :goto_84

    .line 269
    :pswitch_71
    iget-object p2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_84

    .line 270
    iget-object p2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->resetSettingsForMonetization(Z)V

    .line 272
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void

    .line 263
    :cond_85
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "changeMonetizationBadgeState can only be run by the system or feature not supported"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_8e
    .packed-switch 0x30
        :pswitch_38
        :pswitch_2d
        :pswitch_22
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_71
        :pswitch_5a
        :pswitch_53
    .end packed-switch
.end method

.method public dumpMonetizationBadgeState(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 224
    :cond_2
    array-length v2, p2

    if-ge v1, v2, :cond_23

    .line 225
    aget-object v2, p2, v1

    if-eqz v2, :cond_23

    .line 226
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_23

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_18

    goto :goto_23

    :cond_18
    add-int/lit8 v1, v1, 0x1

    const-string v3, "--proto"

    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 234
    :cond_23
    :goto_23
    iget-object p2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 235
    :try_start_26
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Monetization app list:"

    .line 236
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_34

    .line 238
    :cond_44
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Monetization apps launched list:"

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 241
    :cond_62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GalaxyStore badge feature state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 245
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "GalaxyStore monetized apps: "

    .line 246
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_95
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_95

    .line 249
    :cond_a5
    monitor-exit p2

    return-void

    :catchall_a7
    move-exception p0

    monitor-exit p2
    :try_end_a9
    .catchall {:try_start_26 .. :try_end_a9} :catchall_a7

    throw p0
.end method

.method public initializeSettingsForMonetization(ZZ)V
    .registers 13

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c1

    :try_start_3
    const-string v1, "launcherapps"

    .line 156
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/content/pm/ILauncherApps$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mLauncherApps:Landroid/content/pm/ILauncherApps;

    .line 157
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v1, "package"

    .line 158
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 160
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigTagForMonetizationApps"

    .line 161
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MONETIZATION_PACKAGES"

    .line 163
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->readSettingsForMonetization(Ljava/lang/String;Z)V

    .line 166
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_58

    .line 167
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "galaxy_app_store_india_nudge_packages"

    .line 167
    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->readSettingsForMonetization(Ljava/lang/String;Z)V

    .line 171
    :cond_58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bc

    const-string v2, ";"

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    array-length v2, v1

    move v5, v4

    move v6, v5

    :goto_67
    if-ge v5, v2, :cond_b7

    aget-object v7, v1, v5

    const-string v8, "-"

    .line 176
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_78

    .line 178
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_78
    iget-object v8, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_a4

    .line 181
    invoke-virtual {p0, v7, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a4

    const-string v6, "Monetization"

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Monetized pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " launched for user"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0, v7, v4, v3, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    move v6, v3

    :cond_a4
    const-string v8, "com.truecaller"

    .line 186
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b4

    if-eqz p2, :cond_b4

    const/4 v8, 0x4

    .line 187
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->modifyAppState(Ljava/lang/String;I)V

    .line 188
    iput-boolean v4, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    :cond_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_b7
    if-eqz v6, :cond_bc

    .line 191
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->writeSettingsForMonetization(Z)V

    .line 193
    :cond_bc
    monitor-exit v0

    goto :goto_db

    :catchall_be
    move-exception p0

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_3 .. :try_end_c0} :catchall_be

    :try_start_c0
    throw p0
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c1} :catch_c1

    :catch_c1
    move-exception p0

    const/4 p1, 0x5

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Monetization Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_db
    return-void
.end method

.method public isGalaxyStoreFeatureEnabled()Z
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isMonetizedPreloadApp(Ljava/lang/String;)Z
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 139
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final modifyAppState(Ljava/lang/String;I)V
    .registers 9

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "monetization"

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method

.method public final readSettingsForMonetization(Ljava/lang/String;Z)V
    .registers 8

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, ";"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 130
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v0, :cond_1a

    aget-object v3, p1, v2

    const/4 v4, 0x1

    .line 131
    invoke-virtual {p0, v3, v1, p2, v4}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    return-void
.end method

.method public final resetSettingsForMonetization(Z)V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_b

    .line 145
    :try_start_5
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    goto :goto_10

    .line 147
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 149
    :goto_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public sendChangePackageIconInfo(Ljava/lang/String;[I)V
    .registers 9

    .line 79
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_29

    aget v2, p2, v1

    .line 81
    :try_start_6
    iget-object v3, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mLauncherApps:Landroid/content/pm/ILauncherApps;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/ILauncherApps;->changePackageIcon(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_26

    :catch_c
    move-exception v2

    const/4 v3, 0x5

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Monetization Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    return-void
.end method

.method public shouldAppSupportBadgeIcon(Ljava/lang/String;)Z
    .registers 5

    .line 294
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_17
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 297
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    const/4 v1, 0x1

    :cond_28
    monitor-exit v0

    return v1

    :catchall_2a
    move-exception p0

    .line 298
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public updateSettingsForMonetization(Ljava/lang/String;ZZZ)V
    .registers 6

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_30

    if-eqz p3, :cond_11

    .line 94
    :try_start_5
    iget-object p4, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_2e

    :cond_11
    if-eqz p4, :cond_1d

    .line 97
    iget-object p4, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    monitor-exit v0

    return-void

    .line 99
    :cond_1d
    iget-object p4, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    monitor-exit v0

    return-void

    :cond_27
    if-eqz p2, :cond_2c

    .line 103
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->writeSettingsForMonetization(Z)V

    .line 104
    :cond_2c
    monitor-exit v0

    goto :goto_4a

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_f

    :try_start_2f
    throw p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception p0

    const/4 p1, 0x5

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Monetization Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public updateState()V
    .registers 3

    .line 208
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    const-string v1, "com.truecaller"

    .line 209
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->modifyAppState(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mIsTruecallerSettingsUpdated:Z

    :cond_d
    return-void
.end method

.method public final wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 3

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public final writeSettingsForMonetization(Z)V
    .registers 5

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    goto :goto_c

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    .line 115
    :goto_c
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_25
    if-eqz p1, :cond_37

    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MONETIZATION_PACKAGES"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_46

    .line 122
    :cond_37
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "galaxy_app_store_india_nudge_packages"

    .line 122
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_46
    return-void
.end method
