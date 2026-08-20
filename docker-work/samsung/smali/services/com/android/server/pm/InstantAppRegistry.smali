.class public Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;,
        Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    }
.end annotation


# static fields
.field public static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field public static final ATTR_LABEL:Ljava/lang/String; = "label"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final DEBUG:Z = false

.field public static final DEFAULT_INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field public static final DEFAULT_INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field public static final DEFAULT_UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field public static final DEFAULT_UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field public static final INSTANT_APPS_FOLDER:Ljava/lang/String; = "instant"

.field public static final INSTANT_APP_ANDROID_ID_FILE:Ljava/lang/String; = "android_id"

.field public static final INSTANT_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field public static final INSTANT_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field public static final INSTANT_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field public static final INSTANT_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field public static final LOG_TAG:Ljava/lang/String; = "InstantAppRegistry"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field public static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/utils/WatchedSparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Lcom/android/server/utils/WatchedSparseBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/InstantAppRegistry;",
            ">;"
        }
    .end annotation
.end field

.field public final mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUserManager:Lcom/android/server/pm/UserManagerInternal;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$2pE2QxHKL3qyKow-GEuePPCZ6FA(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->lambda$pruneInstantApps$2(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RPnYSPgSDxy-GJLNjgJSxUtXv3k(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$deleteInstantApplicationMetadata$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YG8XBnqw2dfkOcFqEmUkKMV9lyg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$onPackageInstalled$0(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kpTTC06QAMxHJkyob9iBOOpDO_I(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->lambda$pruneInstantApps$3(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/InstantAppRegistry;)Lcom/android/server/utils/WatchableImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/InstantAppRegistry;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistInstantApplicationCookie(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcomputeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smpeekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/pm/DeletePackageHelper;)V
    .registers 6

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 187
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mObserver:Lcom/android/server/utils/Watcher;

    .line 208
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 210
    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 211
    iput-object p4, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 212
    new-instance p1, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 214
    new-instance p1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 215
    new-instance p2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 216
    new-instance p3, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p3}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 218
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 219
    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 220
    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 221
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;)V
    .registers 5

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 187
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstantAppRegistry$1;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mObserver:Lcom/android/server/utils/Watcher;

    .line 230
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 231
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 232
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    .line 233
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 236
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 238
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object v2, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 240
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    .line 244
    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    return-void
.end method

.method public static computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 1161
    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cookie_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".dat"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1164
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public static deleteDir(Ljava/io/File;)V
    .registers 5

    .line 1297
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1299
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1300
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1303
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 3

    .line 1293
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstantApplicationsDir(I)Ljava/io/File;
    .registers 3

    .line 1288
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "instant"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$deleteInstantApplicationMetadata$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    .line 664
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$onPackageInstalled$0(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 2

    .line 396
    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pruneInstantApps$2(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 841
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 842
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    move-object p1, v0

    goto :goto_15

    .line 843
    :cond_11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    :goto_15
    if-nez p2, :cond_18

    goto :goto_1c

    .line 844
    :cond_18
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    :goto_1c
    const/4 p2, 0x0

    if-nez p1, :cond_22

    if-nez v0, :cond_22

    return p2

    :cond_22
    const/4 v1, -0x1

    if-nez p1, :cond_26

    return v1

    :cond_26
    const/4 v2, 0x1

    if-nez v0, :cond_2a

    return v2

    .line 853
    :cond_2a
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez p1, :cond_37

    return p2

    .line 859
    :cond_37
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez p0, :cond_44

    return p2

    .line 864
    :cond_44
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v3

    .line 865
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-lez p2, :cond_59

    return v2

    .line 867
    :cond_59
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v3

    .line 868
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    cmp-long p2, v3, v5

    if-gez p2, :cond_6e

    return v1

    .line 871
    :cond_6e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide p1

    .line 873
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 872
    invoke-static {p0}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v3

    cmp-long p0, p1, v3

    if-lez p0, :cond_83

    return v2

    :cond_83
    return v1
.end method

.method public static synthetic lambda$pruneInstantApps$3(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 7

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    sub-long/2addr v0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public static parseMetadata(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1191
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1192
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1193
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1194
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->parsePackage(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object p0

    return-object p0

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .registers 7

    .line 1132
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1137
    :cond_8
    :try_start_8
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_4c

    .line 1143
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1144
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1145
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1148
    :try_start_1d
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 1149
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1150
    invoke-static {v4, v1}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v1

    invoke-direct {v5, v1, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_2a} :catch_30
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_30
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 1155
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v5

    :catchall_2e
    move-exception p0

    goto :goto_48

    :catch_30
    move-exception v1

    .line 1152
    :try_start_31
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed parsing instant metadata file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_2e

    .line 1155
    :goto_48
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1156
    throw p0

    :catch_4c
    const-string p0, "InstantAppRegistry"

    const-string v0, "No instant metadata file"

    .line 1139
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static parsePackage(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "label"

    .line 1203
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 1209
    :cond_16
    :goto_16
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1210
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "permissions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1211
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/InstantAppRegistry;->parsePermissions(Landroid/util/TypedXmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_16

    .line 1215
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 1216
    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1218
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1219
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1221
    new-instance v2, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v2, p1, v0, p0, v1}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method

.method public static parsePermissions(Landroid/util/TypedXmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1229
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1230
    :cond_4
    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1231
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "permission"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "name"

    .line 1232
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1233
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "granted"

    .line 1234
    invoke-interface {p0, v2, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1235
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_30
    return-void
.end method

.method public static peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 7

    .line 1169
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 1170
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 1173
    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v0

    .line 1177
    :cond_13
    array-length p1, p0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p1, :cond_3b

    aget-object v2, p0, v1

    .line 1178
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_38

    .line 1179
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1180
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    return-object v2

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3b
    return-object v0
.end method


# virtual methods
.method public addInstantApp(II)V
    .registers 6

    .line 544
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez v1, :cond_17

    .line 547
    new-instance v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    .line 548
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    const/4 p1, 0x1

    .line 550
    invoke-virtual {v1, p2, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 551
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    .line 552
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    :catchall_20
    move-exception p0

    .line 551
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public final addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    .line 604
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 609
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 610
    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1c

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 615
    :cond_1c
    new-instance v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 617
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V

    .line 620
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeInstantApplicationIconLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public final canPropagatePermission(Ljava/lang/String;)Z
    .registers 4

    .line 1045
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v0, Landroid/permission/PermissionManager;

    .line 1046
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionManager;

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, p1, v0}, Landroid/permission/PermissionManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_29

    .line 1050
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    if-eq v1, p1, :cond_20

    .line 1051
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_29

    .line 1053
    :cond_20
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_29

    move v0, p1

    :cond_29
    return v0
.end method

.method public final createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;
    .registers 13

    .line 969
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 970
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_5f

    .line 974
    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 975
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 977
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 978
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-interface {v2, v0, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v0

    .line 979
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 980
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 984
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 985
    invoke-interface {p1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    move v7, p2

    move-object v8, p1

    .line 984
    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p3, :cond_4d

    .line 987
    new-instance p0, Landroid/content/pm/InstantAppInfo;

    invoke-direct {p0, p1, v1, v2}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    .line 990
    :cond_4d
    new-instance p2, Landroid/content/pm/InstantAppInfo;

    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {p2, p3, p0, v1, v2}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p2

    :cond_5f
    :goto_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteInstantApplicationMetadata(Ljava/lang/String;I)V
    .registers 6

    .line 662
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_3
    new-instance v1, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 667
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 668
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 669
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "icon.png"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 670
    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 671
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 673
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 675
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final getInstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 946
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    .line 947
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_34

    .line 949
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v3, :cond_31

    .line 950
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_31

    :cond_1f
    const/4 v4, 0x1

    .line 953
    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v3

    if-nez v3, :cond_27

    goto :goto_31

    :cond_27
    if-nez v1, :cond_2e

    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    :cond_2e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_34
    return-object v1
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 328
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 329
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "android_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_9d

    if-eqz v1, :cond_35

    .line 333
    :try_start_14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_1e
    .catchall {:try_start_14 .. :try_end_1c} :catchall_9d

    :try_start_1c
    monitor-exit p0

    return-object p1

    :catch_1e
    move-exception v1

    const-string v2, "InstantAppRegistry"

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read instant app android id file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 340
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    .line 341
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_5f

    const-string p1, "InstantAppRegistry"

    const-string p2, "Cannot create instant app cookie directory"

    .line 344
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    monitor-exit p0

    return-object v0

    .line 347
    :cond_5f
    new-instance v1, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string p2, "android_id"

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_1c .. :try_end_6a} :catchall_9d

    .line 349
    :try_start_6a
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_84
    .catchall {:try_start_6a .. :try_end_6f} :catchall_9d

    .line 350
    :try_start_6f
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7a

    .line 351
    :try_start_76
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_84
    .catchall {:try_start_76 .. :try_end_79} :catchall_9d

    goto :goto_9b

    :catchall_7a
    move-exception p2

    .line 349
    :try_start_7b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception p1

    :try_start_80
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_83
    throw p2
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_84} :catch_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_9d

    :catch_84
    move-exception p1

    :try_start_85
    const-string p2, "InstantAppRegistry"

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing instant app android id file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    :goto_9b
    monitor-exit p0

    return-object v0

    :catchall_9d
    move-exception p1

    .line 355
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_85 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method public getInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)[B
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->getPendingPersistCookieLPr(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)[B

    move-result-object p0

    if-eqz p0, :cond_d

    .line 258
    monitor-exit v0

    return-object p0

    .line 260
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 261
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_40

    if-eqz p1, :cond_3d

    .line 263
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_27
    .catchall {:try_start_1d .. :try_end_25} :catchall_40

    :try_start_25
    monitor-exit v0

    return-object p0

    :catch_27
    const-string p1, "InstantAppRegistry"

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading cookie file: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/4 p0, 0x0

    .line 268
    monitor-exit v0

    return-object p0

    :catchall_40
    move-exception p0

    .line 269
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 317
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo p2, "icon.png"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    .line 322
    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    .line 323
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public getInstantApps(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object v0

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_10

    if-eqz p0, :cond_f

    .line 364
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_f
    return-object v0

    :cond_10
    return-object p0
.end method

.method public final getUninstalledInstantAppStates(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v1, :cond_11

    .line 1093
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    .line 1095
    monitor-exit v0

    return-object v1

    :cond_11
    const/4 v1, 0x0

    .line 1098
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_59

    .line 1100
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1102
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 1104
    array-length v2, v0

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_4c

    aget-object v4, v0, v3

    .line 1105
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_49

    .line 1108
    :cond_30
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "metadata.xml"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1111
    invoke-static {v5}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v4

    if-nez v4, :cond_3f

    goto :goto_49

    :cond_3f
    if-nez v1, :cond_46

    .line 1116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    :cond_46
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1123
    :cond_4c
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1124
    :try_start_4f
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 1125
    monitor-exit v2

    return-object v1

    :catchall_56
    move-exception p0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_56

    throw p0

    :catchall_59
    move-exception p0

    .line 1098
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public final getUninstalledInstantApplications(Lcom/android/server/pm/Computer;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 1000
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantAppStates(I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2a

    .line 1001
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_2a

    .line 1006
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p2, :cond_2a

    .line 1008
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    if-nez p1, :cond_22

    .line 1010
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    :cond_22
    iget-object v1, v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2a
    :goto_2a
    return-object p1
.end method

.method public grantInstantAccess(ILandroid/content/Intent;II)Z
    .registers 9

    .line 510
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 512
    monitor-exit v0

    return v2

    .line 514
    :cond_a
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-eqz v1, :cond_69

    .line 515
    invoke-virtual {v1, p4}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_69

    .line 518
    :cond_19
    invoke-virtual {v1, p3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 519
    monitor-exit v0

    return v2

    :cond_21
    if-eqz p2, :cond_3f

    const-string v1, "android.intent.action.VIEW"

    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_3f

    const-string v1, "android.intent.category.BROWSABLE"

    .line 523
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 524
    monitor-exit v0

    return v2

    .line 527
    :cond_3f
    iget-object p2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/utils/WatchedSparseArray;

    if-nez p2, :cond_53

    .line 530
    new-instance p2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {p2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    .line 531
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :cond_53
    invoke-virtual {p2, p3}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez p0, :cond_63

    .line 535
    new-instance p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseBooleanArray;-><init>()V

    .line 536
    invoke-virtual {p2, p3, p0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_63
    const/4 p1, 0x1

    .line 538
    invoke-virtual {p0, p4, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->put(IZ)V

    .line 539
    monitor-exit v0

    return p1

    .line 516
    :cond_69
    :goto_69
    monitor-exit v0

    return v2

    :catchall_6b
    move-exception p0

    .line 540
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public final hasInstantAppMetadata(Ljava/lang/String;I)Z
    .registers 5

    .line 726
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 727
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "metadata.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "icon.png"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/io/File;

    const-string v1, "android_id"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 729
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_36

    .line 730
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_34

    goto :goto_36

    :cond_34
    const/4 p0, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p0, 0x1

    :goto_37
    return p0
.end method

.method public hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 4

    .line 656
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasUninstalledInstantAppState(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 657
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantAppMetadata(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final hasUninstalledInstantAppState(Ljava/lang/String;I)Z
    .registers 7

    .line 705
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    const/4 v1, 0x0

    if-nez p0, :cond_a

    .line 707
    monitor-exit v0

    return v1

    .line 710
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_14

    .line 712
    monitor-exit v0

    return v1

    .line 714
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    move v2, v1

    :goto_19
    if-ge v2, p2, :cond_33

    .line 716
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 717
    iget-object v3, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v3}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 718
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 721
    :cond_33
    monitor-exit v0

    return v1

    :catchall_35
    move-exception p0

    .line 722
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public isInstantAccessGranted(III)Z
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedSparseArray;

    const/4 p1, 0x0

    if-nez p0, :cond_10

    .line 487
    monitor-exit v0

    return p1

    .line 489
    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez p0, :cond_1a

    .line 491
    monitor-exit v0

    return p1

    .line 493
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    .line 494
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 174
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final makeCache()Lcom/android/server/utils/SnapshotCache;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/InstantAppRegistry;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/InstantAppRegistry$2;-><init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public final onChanged()V
    .registers 1

    .line 183
    invoke-virtual {p0, p0}, Lcom/android/server/pm/InstantAppRegistry;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;[I)V
    .registers 15

    .line 373
    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p2, 0x0

    goto :goto_c

    .line 374
    :cond_8
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p2

    :goto_c
    if-nez p2, :cond_f

    return-void

    .line 379
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_12
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_ce

    aget v4, p3, v3

    .line 382
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_25

    goto/16 :goto_ca

    .line 387
    :cond_25
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 390
    invoke-interface {p1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 391
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->addInstantApp(II)V

    .line 395
    :cond_39
    new-instance v5, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v5, p2}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 400
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 401
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "metadata.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 402
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "icon.png"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 405
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_6a

    goto :goto_ca

    .line 410
    :cond_6a
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    .line 413
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    .line 412
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 422
    monitor-exit v0

    return-void

    .line 429
    :cond_86
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 428
    invoke-static {v7}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v7

    .line 430
    array-length v8, v7

    move v9, v2

    :goto_94
    if-ge v9, v8, :cond_a3

    aget-object v10, v7, v9

    .line 431
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 432
    monitor-exit v0

    return-void

    :cond_a0
    add-int/lit8 v9, v9, 0x1

    goto :goto_94

    :cond_a3
    const-string v6, "InstantAppRegistry"

    .line 437
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signature for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " changed - dropping cookie"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v6, p2, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 441
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_ca
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    .line 443
    :cond_ce
    monitor-exit v0

    return-void

    :catchall_d0
    move-exception p0

    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_12 .. :try_end_d2} :catchall_d0

    throw p0
.end method

.method public onPackageUninstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    .registers 10

    if-nez p2, :cond_3

    return-void

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_6
    array-length v1, p3

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_40

    aget v3, p3, v2

    if-eqz p4, :cond_15

    .line 454
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_3d

    .line 458
    :cond_15
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 460
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 461
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    goto :goto_3d

    .line 464
    :cond_26
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 465
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    .line 466
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeAppLPw(II)V

    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 469
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 475
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 476
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 477
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 478
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;
    .registers 8

    .line 1060
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1061
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-eqz p0, :cond_2f

    .line 1063
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2f

    .line 1065
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2f

    .line 1067
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 1069
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 1070
    invoke-virtual {v4}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1071
    iget-object p0, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    monitor-exit v0

    return-object p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1076
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_47

    .line 1078
    new-instance p0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo p2, "metadata.xml"

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1080
    invoke-static {p0}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object p0

    if-nez p0, :cond_44

    const/4 p0, 0x0

    return-object p0

    .line 1085
    :cond_44
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object p0

    :catchall_47
    move-exception p0

    .line 1076
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    .registers 5

    .line 291
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 292
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 293
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-nez p4, :cond_1c

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-nez p2, :cond_1c

    const-string p1, "InstantAppRegistry"

    const-string p2, "Cannot create instant app cookie directory"

    .line 294
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    monitor-exit p0

    return-void

    .line 298
    :cond_1c
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2f

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_2f

    const-string p2, "InstantAppRegistry"

    const-string p4, "Cannot delete instant app cookie file"

    .line 299
    invoke-static {p2, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    if-eqz p1, :cond_66

    .line 303
    array-length p2, p1

    if-gtz p2, :cond_35

    goto :goto_66

    .line 306
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_68

    .line 307
    :try_start_36
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_4e

    const/4 p2, 0x0

    .line 308
    :try_start_3c
    array-length p4, p1

    invoke-virtual {p0, p1, p2, p4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_44

    .line 309
    :try_start_40
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4e

    goto :goto_65

    :catchall_44
    move-exception p1

    .line 307
    :try_start_45
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p0

    :try_start_4a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw p1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception p0

    const-string p1, "InstantAppRegistry"

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error writing instant app cookie file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_65
    return-void

    .line 304
    :cond_66
    :goto_66
    :try_start_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception p1

    .line 306
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    throw p1
.end method

.method public final propagateInstantAppPermissionsIfNeeded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1021
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 1025
    :cond_b
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 1028
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1030
    :try_start_1a
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_4c

    aget-object v5, v0, v4

    .line 1031
    invoke-virtual {p0, v5}, Lcom/android/server/pm/InstantAppRegistry;->canPropagatePermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1032
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 1034
    iget-object v6, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v7, Landroid/permission/PermissionManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/permission/PermissionManager;

    .line 1035
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1036
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 1035
    invoke-virtual {v6, v7, v5, v8}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_49
    .catchall {:try_start_1a .. :try_end_49} :catchall_50

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1040
    :cond_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_50
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1041
    throw p0
.end method

.method public pruneInstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z
    .registers 14

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 755
    :try_start_9
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    const-string p1, "InstantAppRegistry"

    const-string p2, "Error pruning installed instant apps"

    .line 758
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public pruneInstantApps(Lcom/android/server/pm/Computer;)V
    .registers 14

    .line 734
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 735
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "installed_instant_app_max_cache_period"

    const-wide v2, 0x39ef8b000L

    .line 734
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 739
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 740
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "uninstalled_instant_app_max_cache_period"

    .line 739
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    const-wide v6, 0x7fffffffffffffffL

    move-object v4, p0

    move-object v5, p1

    .line 745
    :try_start_26
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string p1, "InstantAppRegistry"

    const-string v0, "Error pruning installed and uninstalled instant apps"

    .line 748
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public final pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    .line 789
    iget-object v3, v0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 790
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 792
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    cmp-long v4, v4, p2

    const/4 v5, 0x1

    if-ltz v4, :cond_1e

    return v5

    .line 799
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 802
    iget-object v4, v0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 805
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v8

    .line 806
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_32
    if-ge v12, v9, :cond_8b

    .line 808
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v14, :cond_3e

    const/4 v15, 0x0

    goto :goto_42

    .line 809
    :cond_3e
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    :goto_42
    if-nez v15, :cond_45

    goto :goto_87

    .line 814
    :cond_45
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v16

    sub-long v16, v6, v16

    cmp-long v16, v16, p4

    if-gez v16, :cond_54

    goto :goto_87

    .line 820
    :cond_54
    array-length v10, v4

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_58
    if-ge v11, v10, :cond_76

    aget v5, v4, v11

    .line 821
    invoke-interface {v14, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 822
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v18

    if-eqz v18, :cond_72

    .line 823
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-eqz v5, :cond_6f

    const/16 v17, 0x1

    goto :goto_72

    :cond_6f
    const/16 v17, 0x0

    goto :goto_76

    :cond_72
    :goto_72
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_58

    :cond_76
    :goto_76
    if-eqz v17, :cond_87

    if-nez v13, :cond_80

    .line 833
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    .line 835
    :cond_80
    invoke-interface {v15}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto :goto_32

    :cond_8b
    if-eqz v13, :cond_95

    .line 840
    new-instance v4, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v13, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 882
    :cond_95
    iget-object v4, v0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz v13, :cond_c9

    .line 884
    :try_start_9a
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_9f
    if-ge v6, v5, :cond_c9

    .line 886
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Ljava/lang/String;

    .line 887
    iget-object v7, v0, Lcom/android/server/pm/InstantAppRegistry;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    const-wide/16 v20, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x1

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c6

    .line 891
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v9

    cmp-long v7, v9, p2

    if-ltz v7, :cond_c6

    .line 892
    monitor-exit v4

    return v8

    :cond_c6
    add-int/lit8 v6, v6, 0x1

    goto :goto_9f

    .line 900
    :cond_c9
    iget-object v5, v0, Lcom/android/server/pm/InstantAppRegistry;->mUserManager:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_d1
    if-ge v7, v6, :cond_12f

    aget v8, v5, v7

    .line 902
    new-instance v9, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1, v2}, Lcom/android/server/pm/InstantAppRegistry$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-virtual {v0, v9, v8}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 908
    invoke-static {v8}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v8

    .line 909
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_e9

    :cond_e7
    :goto_e7
    const/4 v11, 0x1

    goto :goto_12c

    .line 912
    :cond_e9
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_f0

    goto :goto_e7

    .line 916
    :cond_f0
    array-length v9, v8

    const/4 v10, 0x0

    :goto_f2
    if-ge v10, v9, :cond_e7

    aget-object v11, v8, v10

    .line 917
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_fe

    :cond_fc
    :goto_fc
    const/4 v11, 0x1

    goto :goto_129

    .line 921
    :cond_fe
    new-instance v12, Ljava/io/File;

    const-string/jumbo v13, "metadata.xml"

    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 922
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_10d

    goto :goto_fc

    .line 926
    :cond_10d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 927
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v13, v13, v18

    cmp-long v12, v13, v1

    if-lez v12, :cond_fc

    .line 929
    invoke-static {v11}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 930
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v11

    cmp-long v11, v11, p2

    if-ltz v11, :cond_fc

    .line 931
    monitor-exit v4

    const/4 v11, 0x1

    return v11

    :goto_129
    add-int/lit8 v10, v10, 0x1

    goto :goto_f2

    :goto_12c
    add-int/lit8 v7, v7, 0x1

    goto :goto_d1

    .line 936
    :cond_12f
    monitor-exit v4

    const/4 v0, 0x0

    return v0

    :catchall_132
    move-exception v0

    monitor-exit v4
    :try_end_134
    .catchall {:try_start_9a .. :try_end_134} :catchall_132

    throw v0
.end method

.method public pruneUninstalledInstantApps(Lcom/android/server/pm/Computer;JJ)Z
    .registers 14

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, p4

    .line 766
    :try_start_9
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(Lcom/android/server/pm/Computer;JJJ)Z

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    const-string p1, "InstantAppRegistry"

    const-string p2, "Error pruning uninstalled instant apps"

    .line 769
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 168
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final removeAppLPw(II)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    return-void

    .line 593
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    if-nez p1, :cond_e

    return-void

    .line 597
    :cond_e
    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    .line 598
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void
.end method

.method public final removeInstantAppLPw(II)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    return-void

    .line 561
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseBooleanArray;

    if-nez v0, :cond_e

    return-void

    .line 567
    :cond_e
    :try_start_e
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->delete(I)V

    .line 570
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Lcom/android/server/utils/WatchedSparseArray;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3d

    if-nez v0, :cond_19

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    .line 574
    :cond_19
    :try_start_19
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_3d

    if-nez p1, :cond_25

    .line 582
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    .line 578
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_39

    .line 579
    invoke-virtual {p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedSparseBooleanArray;->delete(I)V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3d

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 582
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    :catchall_3d
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    .line 583
    throw p1
.end method

.method public final removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;I)V"
        }
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    if-nez v0, :cond_5

    return-void

    .line 685
    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_e

    return-void

    .line 689
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_38

    .line 691
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 692
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_35

    .line 695
    :cond_23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 696
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 697
    iget-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 698
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->onChanged()V

    return-void

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_38
    return-void
.end method

.method public setInstantAppCookie(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[BII)Z
    .registers 7

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_39

    .line 275
    :try_start_5
    array-length v1, p2

    if-lez v1, :cond_39

    .line 276
    array-length v1, p2

    if-le v1, p3, :cond_39

    const-string p0, "InstantAppRegistry"

    .line 277
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app cookie for package "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes while max size is "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 280
    monitor-exit v0

    return p0

    .line 284
    :cond_39
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILcom/android/server/pm/parsing/pkg/AndroidPackage;[B)V

    const/4 p0, 0x1

    .line 285
    monitor-exit v0

    return p0

    :catchall_41
    move-exception p0

    .line 286
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_5 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public snapshot()Lcom/android/server/pm/InstantAppRegistry;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/InstantAppRegistry;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 97
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry;->snapshot()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final writeInstantApplicationIconLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 8

    .line 625
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 631
    :cond_f
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 635
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_28

    .line 636
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4b

    .line 638
    :cond_28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 639
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 638
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 641
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 642
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object p0, v0

    .line 645
    :goto_4b
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo p2, "icon.png"

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 648
    :try_start_5b
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_75

    .line 649
    :try_start_60
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p2, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_6b

    .line 650
    :try_start_67
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_75

    goto :goto_7d

    :catchall_6b
    move-exception p0

    .line 648
    :try_start_6c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception p1

    :try_start_71
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_74
    throw p0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_75} :catch_75

    :catch_75
    move-exception p0

    const-string p1, "InstantAppRegistry"

    const-string p2, "Error writing instant app icon"

    .line 651
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7d
    return-void
.end method

.method public final writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V
    .registers 14

    const-string/jumbo v0, "permission"

    const-string/jumbo v1, "permissions"

    const-string/jumbo v2, "package"

    .line 1243
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    .line 1244
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1e

    return-void

    .line 1248
    :cond_1e
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "metadata.xml"

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1250
    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 1253
    :try_start_2c
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_96

    .line 1255
    :try_start_30
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v5

    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    .line 1256
    invoke-interface {v5, v6, v7}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1258
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1260
    invoke-interface {v5, v3, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "label"

    .line 1261
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mContext:Landroid/content/Context;

    .line 1262
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1261
    invoke-virtual {p1, p0}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1262
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1261
    invoke-interface {v5, v3, v6, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1264
    invoke-interface {v5, v3, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object p0

    array-length v6, p0

    const/4 v8, 0x0

    :goto_60
    if-ge v8, v6, :cond_83

    aget-object v9, p0, v8

    .line 1266
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    .line 1267
    invoke-interface {v5, v3, v10, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    const-string/jumbo v9, "granted"

    .line 1269
    invoke-interface {v5, v3, v9, v7}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1271
    :cond_7d
    invoke-interface {v5, v3, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 1273
    :cond_83
    invoke-interface {v5, v3, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    invoke-interface {v5, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    invoke-interface {v5}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1278
    invoke-virtual {p2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8f
    .catchall {:try_start_30 .. :try_end_8f} :catchall_93

    .line 1283
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a4

    :catchall_93
    move-exception p0

    move-object v3, v4

    goto :goto_97

    :catchall_96
    move-exception p0

    :goto_97
    :try_start_97
    const-string p1, "InstantAppRegistry"

    const-string v0, "Failed to write instant state, restoring backup"

    .line 1280
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    invoke-virtual {p2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_a5

    .line 1283
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_a4
    return-void

    :catchall_a5
    move-exception p0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1284
    throw p0
.end method
