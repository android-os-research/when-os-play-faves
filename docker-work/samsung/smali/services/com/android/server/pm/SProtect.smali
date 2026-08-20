.class public Lcom/android/server/pm/SProtect;
.super Ljava/lang/Object;
.source "SProtect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SProtect$SProtectSettingsObserver;
    }
.end annotation


# static fields
.field public static final APPLOCK_PKG_NAME:Ljava/lang/String; = "com.samsung.android.applock"

.field public static final SPROTECT_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.sprotect"

.field public static final TAG:Ljava/lang/String; = "SProtect"

.field public static mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mContext:Landroid/content/Context;

.field public static mHiddenPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mLockedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPm:Lcom/android/server/pm/PackageManagerService;

.field public static final mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field public mSProtectSettingsObserver:Lcom/android/server/pm/SProtect$SProtectSettingsObserver;


# direct methods
.method public static bridge synthetic -$$Nest$mgetSprotectList(Lcom/android/server/pm/SProtect;Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SProtect;->getSprotectList(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmAppLockEnabled()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/android/server/pm/SProtect;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/pm/SProtect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSProtectLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 1

    sget-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmHiddenPackages(Landroid/util/ArraySet;)V
    .registers 1

    sput-object p0, Lcom/android/server/pm/SProtect;->mHiddenPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputmLockedPackages(Landroid/util/ArraySet;)V
    .registers 1

    sput-object p0, Lcom/android/server/pm/SProtect;->mLockedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/server/pm/SProtect;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/server/pm/SProtect;->mHiddenPackages:Landroid/util/ArraySet;

    .line 29
    sput-object v0, Lcom/android/server/pm/SProtect;->mLockedPackages:Landroid/util/ArraySet;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    sput-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sput-object p1, Lcom/android/server/pm/SProtect;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 35
    sput-object p2, Lcom/android/server/pm/SProtect;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Lcom/android/server/pm/SProtect$SProtectSettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/pm/SProtect$SProtectSettingsObserver;-><init>(Lcom/android/server/pm/SProtect;)V

    iput-object p1, p0, Lcom/android/server/pm/SProtect;->mSProtectSettingsObserver:Lcom/android/server/pm/SProtect$SProtectSettingsObserver;

    return-void
.end method

.method public static checkForHiddenPackage(ILjava/lang/String;)Z
    .registers 3

    .line 144
    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p0, :cond_10

    .line 145
    invoke-static {p1}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static filterSprotectHiddenList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 125
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_20
    return-object p0
.end method

.method public static getPackageManagerHandler()Landroid/os/Handler;
    .registers 1

    .line 134
    sget-object v0, Lcom/android/server/pm/SProtect;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getSProtectPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .registers 3

    .line 138
    sget-object v0, Lcom/android/server/pm/SProtect;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    monitor-enter v0

    .line 139
    :try_start_5
    sget-object v1, Lcom/android/server/pm/SProtect;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    const-string v2, "com.samsung.android.app.sprotect"

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    monitor-exit v0

    return-object v1

    :catchall_13
    move-exception v1

    .line 140
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static isAppLockEnabled()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/server/pm/SProtect;->mAppLockEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isHiddenBySprotect(Ljava/lang/String;)Z
    .registers 3

    .line 40
    sget-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 42
    :try_start_9
    sget-object v1, Lcom/android/server/pm/SProtect;->mHiddenPackages:Landroid/util/ArraySet;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1e

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    .line 47
    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p0

    :cond_1c
    const/4 p0, 0x0

    goto :goto_14

    :catchall_1e
    move-exception p0

    sget-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 48
    throw p0
.end method

.method public static isLockedBySprotect(Ljava/lang/String;)Z
    .registers 3

    .line 52
    sget-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 54
    :try_start_9
    sget-object v1, Lcom/android/server/pm/SProtect;->mLockedPackages:Landroid/util/ArraySet;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1e

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    .line 59
    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p0

    :cond_1c
    const/4 p0, 0x0

    goto :goto_14

    :catchall_1e
    move-exception p0

    sget-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 60
    throw p0
.end method

.method public static resetSProtectList()V
    .registers 2

    .line 68
    sget-object v0, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v1, 0x0

    .line 70
    :try_start_a
    sput-object v1, Lcom/android/server/pm/SProtect;->mHiddenPackages:Landroid/util/ArraySet;

    .line 71
    sput-object v1, Lcom/android/server/pm/SProtect;->mLockedPackages:Landroid/util/ArraySet;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_16

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_16
    move-exception v0

    sget-object v1, Lcom/android/server/pm/SProtect;->mSProtectLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 74
    throw v0
.end method


# virtual methods
.method public final getSprotectList(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object p0, Lcom/android/server/pm/SProtect;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 104
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    const-string v0, ","

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 106
    array-length v0, p0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_23

    aget-object v2, p0, v1

    .line 107
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_23
    return-object p1

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerContentObserver(Landroid/content/ContentResolver;)V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/SProtect;->mSProtectSettingsObserver:Lcom/android/server/pm/SProtect$SProtectSettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SProtect$SProtectSettingsObserver;->onChange(Z)V

    const-string v0, "app_lock_enabled"

    .line 116
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/SProtect;->mSProtectSettingsObserver:Lcom/android/server/pm/SProtect$SProtectSettingsObserver;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "ssecure_hidden_apps_packages"

    .line 117
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/SProtect;->mSProtectSettingsObserver:Lcom/android/server/pm/SProtect$SProtectSettingsObserver;

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "applock_locked_apps_packages"

    .line 118
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/SProtect;->mSProtectSettingsObserver:Lcom/android/server/pm/SProtect$SProtectSettingsObserver;

    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
