.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mIPM:Landroid/content/pm/IPackageManager;

.field public final mInternal:Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

.field public mIsWatchingPackageBroadcasts:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation
.end field

.field public final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field public final mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

.field public final mRegisteredListenersForDump:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

.field public final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mUm:Landroid/os/UserManager;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$4p4FYgPXMubkCSTTD6ALB9PlRAM(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$getAllSessions$1(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JH6bHMIPeyliulxkptv72amRs88(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$registerPackageInstallerCallback$0(Landroid/os/UserHandle;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LiOcpzW44rUjKCLSavhpG1QnfyM(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$changePackageIcon$4(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqE4smSRh1FsRTnJS1zkSsnRp_Y(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$getShortcutConfigActivityIntent$2(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nAC4ZC1bOXkiBf6hrd7Rh889N_0(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->lambda$registerLoadingProgressForIncrementalApps$3(Landroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackHandler(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegisteredListenersForDump(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutServiceInternal(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getFilteredPackageNames([Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackageVisibleToListener(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartShortcutInner(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 11

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutInner(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisCallingAppIdAllowed([II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isCallingAppIdAllowed([II)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 206
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    .line 182
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 186
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    .line 188
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    const/4 v1, 0x0

    .line 190
    iput-boolean v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 200
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 207
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIPM:Landroid/content/pm/IPackageManager;

    const-string/jumbo v1, "user"

    .line 209
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 210
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 211
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 210
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 212
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 213
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 212
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 214
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 215
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 214
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 216
    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 217
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 216
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 218
    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 219
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 218
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 220
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 221
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 220
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 222
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 223
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    invoke-direct {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;-><init>(Lcom/android/server/pm/UserManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    .line 224
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutServiceInternal;->addShortcutChangeCallback(Landroid/content/pm/LauncherApps$ShortcutChangeCallback;)V

    .line 225
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    const-string v0, "device_policy"

    .line 226
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 227
    new-instance p1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$LocalService;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mInternal:Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    return-void
.end method

.method public static isCallingAppIdAllowed([II)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_11

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_8

    goto :goto_11

    .line 1433
    :cond_8
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    :goto_11
    return v0
.end method

.method private synthetic lambda$changePackageIcon$4(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 1695
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$getAllSessions$1(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 3

    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldFilterSession(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getShortcutConfigActivityIntent$2(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Z
    .registers 2

    .line 750
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$registerLoadingProgressForIncrementalApps$3(Landroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 6

    .line 1477
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1478
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1479
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 1478
    invoke-virtual {v0, p2, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1480
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 1482
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 1480
    invoke-virtual {v0, p2, v1, p0}, Landroid/content/pm/PackageManagerInternal;->registerInstalledLoadingProgressCallback(Ljava/lang/String;Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;I)Z

    :cond_26
    return-void
.end method

.method private synthetic lambda$registerPackageInstallerCallback$0(Landroid/os/UserHandle;I)Z
    .registers 4

    .line 335
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p2, "shouldReceiveEvent"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 284
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_11

    .line 288
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    .line 290
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 291
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    new-instance v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 292
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(Landroid/os/UserHandle;Ljava/lang/String;II)V

    .line 291
    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 295
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Pid: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Uid: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " UserHandle: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Time: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v0

    return-void

    :catchall_85
    move-exception p0

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_6 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public cacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 1053
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot cache shortcuts"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 1058
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 1060
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p0, p5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->toShortcutsCacheFlags(I)I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1058
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->cacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    return-void
.end method

.method public final canAccessProfile(IIIILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p4, p2, :cond_4

    return v0

    .line 437
    :cond_4
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectHasInteractAcrossUsersFullPermission(II)Z

    move-result p1

    if-eqz p1, :cond_b

    return v0

    .line 441
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 443
    :try_start_f
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 444
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p1

    if-eqz p1, :cond_48

    const-string p1, "LauncherAppsService"

    .line 445
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " for another profile "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not allowed"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_52

    const/4 p1, 0x0

    .line 450
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return p1

    :cond_48
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 453
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p2, p4, p5, v0}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result p0

    return p0

    :catchall_52
    move-exception p1

    .line 450
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 451
    throw p1
.end method

.method public final canAccessProfile(ILjava/lang/String;)Z
    .registers 9

    .line 429
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v2

    .line 430
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v3

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 429
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(IIIILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public changePackageIcon(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "packageName cannot be null"

    .line 1692
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1694
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkCallbackCount()V
    .registers 3

    .line 408
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 412
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 415
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 262
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string p3, "LauncherAppsService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 264
    :cond_b
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter p1

    :try_start_e
    const-string p3, "Registered Listeners:"

    .line 265
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 269
    :cond_3e
    monitor-exit p1

    return-void

    :catchall_40
    move-exception p0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final ensureShortcutPermission(IILjava/lang/String;)V
    .registers 5

    .line 897
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 898
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_10

    return-void

    .line 900
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller can\'t access shortcut information"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureShortcutPermission(Ljava/lang/String;)V
    .registers 4

    .line 891
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(IILjava/lang/String;)V

    return-void
.end method

.method public final ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V
    .registers 3

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result p1

    .line 907
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 906
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectHasAccessShortcutsPermission(II)Z

    move-result p0

    if-eqz p0, :cond_12

    return-void

    .line 908
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller can\'t access shortcut information"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActivityLaunchIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 10

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot start activity"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 1292
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 1298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1304
    :try_start_19
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v3, 0x2000000

    const/4 v4, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_28

    .line 1307
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_28
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    throw p0

    .line 1294
    :cond_2d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1289
    :cond_44
    new-instance p0, Landroid/content/ActivityNotFoundException;

    const-string p1, "Activity could not be found"

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 342
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 347
    :try_start_1a
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v4, :cond_32

    aget v6, v0, v5

    .line 348
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 349
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 348
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_43

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 352
    :cond_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 355
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_43
    move-exception p0

    .line 352
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw p0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .registers 6

    .line 873
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot access usage limit"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11

    return-object v0

    .line 877
    :cond_11
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 881
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 882
    invoke-virtual {p0, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object p0

    if-nez p0, :cond_26

    return-object v0

    .line 886
    :cond_26
    new-instance p1, Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 887
    invoke-virtual {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getTotalUsageLimit()J

    move-result-wide p2

    invoke-virtual {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getUsageRemaining()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Landroid/content/pm/LauncherApps$AppUsageLimit;-><init>(JJ)V

    return-object p1

    .line 878
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not the recents app"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check package"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 859
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v4

    .line 860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 862
    :try_start_16
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    int-to-long v2, p3

    .line 863
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p2

    .line 862
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_26

    .line 866
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_26
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 867
    throw p0
.end method

.method public final getCallingUserId()I
    .registers 1

    .line 256
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public final getFilteredPackageNames([Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)[Ljava/lang/String;
    .registers 8

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_18

    aget-object v3, p1, v2

    .line 1439
    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z

    move-result v4

    if-nez v4, :cond_12

    goto :goto_15

    .line 1442
    :cond_12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1444
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;
    .registers 7

    .line 482
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 483
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    .line 487
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_21

    const/4 p1, 0x0

    .line 488
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherActivityInfoInternal;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 515
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 512
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 517
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_hidden_icon_apps_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_26

    return-object p1

    :cond_26
    if-nez p1, :cond_2a

    const/4 p0, 0x0

    return-object p0

    .line 526
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v6

    .line 527
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v7

    .line 529
    :try_start_32
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_fa

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v0

    if-eqz v0, :cond_54

    goto/16 :goto_fa

    .line 534
    :cond_54
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_fe

    if-eqz v0, :cond_60

    .line 579
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return-object p1

    .line 539
    :cond_60
    :try_start_60
    new-instance v9, Ljava/util/ArrayList;

    .line 540
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_9b

    .line 544
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_fe

    if-lez v0, :cond_75

    .line 579
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return-object p1

    .line 547
    :cond_75
    :try_start_75
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    .line 548
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p2

    move v4, v6

    .line 547
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 549
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_92

    .line 550
    invoke-virtual {p0, p2, v6, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 553
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_92
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_97
    .catchall {:try_start_75 .. :try_end_97} :catchall_fe

    .line 579
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return-object p1

    .line 558
    :cond_9b
    :try_start_9b
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 559
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfoInternal;

    .line 560
    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfoInternal;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 562
    :cond_ba
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    .line 564
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 563
    invoke-virtual {p2, v0, v1, v2, v6}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object p2

    .line 565
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_ca
    :goto_ca
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 566
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 567
    invoke-virtual {p0, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_e5

    goto :goto_ca

    .line 570
    :cond_e5
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v6, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 573
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 577
    :cond_f1
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v9}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_f6
    .catchall {:try_start_9b .. :try_end_f6} :catchall_fe

    .line 579
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return-object p1

    :cond_fa
    :goto_fa
    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return-object p1

    :catchall_fe
    move-exception p1

    invoke-virtual {p0, v7, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 580
    throw p1
.end method

.method public final getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;
    .registers 13

    .line 1335
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 1336
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 1337
    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1339
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    .line 1344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1349
    :try_start_20
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 1351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/32 v3, 0xc0000

    .line 1354
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v1, v7

    .line 1349
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 1355
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_3e
    const/4 v2, 0x0

    if-ge v1, p2, :cond_87

    .line 1357
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1358
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1359
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1360
    iget-boolean p0, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p0, :cond_6d

    .line 1367
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v0, 0x1

    goto :goto_87

    .line 1361
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot launch non-exported components "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_84
    .catchall {:try_start_20 .. :try_end_84} :catchall_91

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_87
    :goto_87
    if-nez v0, :cond_8d

    .line 1377
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_8d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v7

    :catchall_91
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    throw p0
.end method

.method public final getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    if-nez v0, :cond_1e

    :try_start_4
    const-string/jumbo v0, "package"

    .line 370
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception v0

    const-string v1, "LauncherAppsService"

    const-string v2, "Error gettig IPackageInstaller"

    .line 372
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method public getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 679
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v1, "Cannot check package"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_13

    return-object v1

    .line 734
    :cond_13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v7

    .line 738
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 740
    :try_start_1e
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 742
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 744
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const-wide/32 v5, 0xc0000

    .line 747
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 743
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 749
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_74

    if-nez p1, :cond_55

    .line 761
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    .line 754
    :cond_55
    :try_start_55
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 755
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_6c

    goto :goto_70

    .line 759
    :cond_6c
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_74

    .line 761
    :goto_70
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_74
    move-exception p0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    throw p0
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 13

    .line 1091
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    const-string v0, "Cannot access shortcuts"

    .line 1092
    invoke-virtual {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1096
    :cond_d
    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1097
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFdAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V

    .line 1100
    :try_start_20
    invoke-virtual {v7}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_26} :catch_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 1102
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11

    .line 1079
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    const-string v0, "Cannot access shortcuts"

    .line 1080
    invoke-virtual {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 1084
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    .line 1109
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    const-string v0, "Cannot access shortcuts"

    .line 1110
    invoke-virtual {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 1114
    :cond_d
    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1115
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconUriAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/infra/AndroidFuture;)V

    .line 1118
    :try_start_20
    invoke-virtual {v7}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_26} :catch_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    move-exception p0

    .line 1120
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 774
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    return-object v2

    .line 784
    :cond_1e
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 786
    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v4

    .line 787
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 788
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v10

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v11, v1

    .line 786
    invoke-virtual/range {v3 .. v11}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 790
    :try_start_3c
    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/content/Intent;
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_6f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3c .. :try_end_43} :catch_6f

    if-eqz v3, :cond_6f

    .line 794
    array-length v1, v3

    if-nez v1, :cond_49

    goto :goto_6f

    .line 797
    :cond_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v2, 0x0

    const/high16 v4, 0xc000000

    .line 799
    :try_start_50
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v5, 0x10000000

    .line 803
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v10, p2

    .line 801
    invoke-virtual {v1, p2, v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    move-object v1, p0

    move-object/from16 v5, p4

    move-object v6, p2

    .line 799
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCreatePendingIntent(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_6a

    .line 805
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_6a
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    throw v0

    :catch_6f
    :cond_6f
    :goto_6f
    return-object v2
.end method

.method public getShortcuts(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 19

    move-object v0, p0

    .line 940
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 942
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 945
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    move-result-wide v5

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object v8

    .line 948
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object v9

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    move-result-object v10

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v11

    if-eqz v8, :cond_3d

    if-eqz v7, :cond_35

    goto :goto_3d

    .line 952
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To query by shortcut ID, package name must also be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    if-eqz v9, :cond_4a

    if-eqz v7, :cond_42

    goto :goto_4a

    .line 956
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To query by locus ID, package name must also be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_4a
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_55

    .line 960
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 964
    :cond_55
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 965
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v3

    .line 967
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 968
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v13

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v14

    move-object/from16 v4, p1

    .line 965
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getShortcutsAsync(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            "Landroid/os/UserHandle;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    .line 975
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 977
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v14, p4

    invoke-virtual {v14, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_18
    move-object/from16 v14, p4

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    move-result-wide v4

    .line 982
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object v7

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object v8

    .line 985
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    move-result-object v9

    .line 986
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v10

    if-eqz v7, :cond_3f

    if-eqz v6, :cond_37

    goto :goto_3f

    .line 988
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To query by shortcut ID, package name must also be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    :goto_3f
    if-eqz v8, :cond_4c

    if-eqz v6, :cond_44

    goto :goto_4c

    .line 992
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To query by locus ID, package name must also be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_4c
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_57

    .line 996
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 999
    :cond_57
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v13

    move-object/from16 v3, p1

    move-object/from16 v14, p4

    .line 999
    invoke-virtual/range {v1 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutsAsync(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIIILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 6

    .line 840
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 841
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const-string v1, "Cannot get launcher extras"

    .line 842
    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    return-object v2

    .line 845
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object v2

    .line 848
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final hasDefaultEnableLauncherActivity(Ljava/lang/String;)Z
    .registers 9

    .line 606
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.LAUNCHER"

    .line 607
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 610
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 612
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v6

    const-wide/16 v3, 0x200

    .line 609
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 613
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    if-ge v1, p1, :cond_42

    .line 615
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v2, :cond_3f

    const/4 p0, 0x1

    return p0

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_42
    return v0
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 5

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p0

    .line 1127
    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public injectBinderCallingPid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public injectBinderCallingUid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 232
    invoke-static {}, Landroid/content/pm/ILauncherApps$Stub;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public final injectCallingUserId()I
    .registers 1

    .line 241
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectCreatePendingIntent(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->getPendingIntentActivityAsApp(I[Landroid/content/Intent;ILandroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public injectHasAccessShortcutsPermission(II)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 917
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_SHORTCUTS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public injectHasInteractAcrossUsersFullPermission(II)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 926
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public injectRestoreCallingIdentity(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 252
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1219
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check component"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    .line 1223
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    .line 1224
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1225
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1224
    invoke-virtual {p1, p2, v5, v1}, Landroid/content/pm/PackageManagerInternal;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result p1

    const/4 v7, 0x1

    if-eq p1, v7, :cond_73

    const/4 v1, 0x2

    if-eq p1, v1, :cond_72

    const/4 v1, 0x3

    if-eq p1, v1, :cond_72

    const/4 v1, 0x4

    if-eq p1, v1, :cond_72

    .line 1237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1239
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0xc0000

    .line 1242
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v2, p2

    .line 1239
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 1244
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz p1, :cond_60

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-nez p1, :cond_60

    if-eqz p0, :cond_60

    iget-object p1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_60

    .line 1245
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result p1
    :try_end_5a
    .catchall {:try_start_2c .. :try_end_5a} :catchall_6d

    if-eqz p1, :cond_60

    .line 1256
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_60
    if-eqz p0, :cond_69

    .line 1254
    :try_start_62
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_6d

    if-eqz p0, :cond_69

    move v0, v7

    .line 1256
    :cond_69
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_6d
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    throw p0

    :cond_72
    return v0

    :cond_73
    return v7
.end method

.method public final isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 5

    .line 1418
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1419
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/4 v0, 0x0

    .line 1418
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 7

    .line 623
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 624
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 625
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 626
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_38

    .line 629
    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2c

    goto :goto_38

    .line 633
    :cond_2c
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3b
    return v0
.end method

.method public isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 812
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check package"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    .line 816
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 819
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0x200c0000

    .line 823
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v2, p2

    .line 819
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 825
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_48

    invoke-static {}, Lcom/android/server/pm/SProtect;->isAppLockEnabled()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 826
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-nez p1, :cond_48

    if-eqz p0, :cond_44

    .line 827
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_44

    invoke-static {p2}, Lcom/android/server/pm/SProtect;->isHiddenBySprotect(Ljava/lang/String;)Z

    move-result p0
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_55

    if-nez p0, :cond_44

    move v0, v1

    .line 833
    :cond_44
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_48
    if-eqz p0, :cond_51

    .line 829
    :try_start_4a
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_55

    if-eqz p0, :cond_51

    move v0, v1

    .line 833
    :cond_51
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_55
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 834
    throw p0
.end method

.method public final isPackageVisibleToListener(Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;)Z
    .registers 4

    .line 1424
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v0, p2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    iget-object p2, p2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 1425
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 1424
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot pin shortcuts"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 1046
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 1047
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1046
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1463
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;"
        }
    .end annotation

    .line 685
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot retrieve activities"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 688
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 689
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 691
    :try_start_16
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_23

    .line 694
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    return-object v2

    :catchall_23
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 695
    throw p1
.end method

.method public final queryIntentLauncherActivities(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 701
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide/32 v3, 0xc0000

    move-object v1, p1

    move v5, p2

    .line 700
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    .line 705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v0, :cond_4c

    .line 708
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 709
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_32

    goto :goto_49

    .line 714
    :cond_32
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 716
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 715
    invoke-virtual {v5, v4, p2, v6}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v4

    if-nez v4, :cond_3f

    goto :goto_49

    .line 721
    :cond_3f
    new-instance v5, Landroid/content/pm/LauncherActivityInfoInternal;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v3, v4}, Landroid/content/pm/LauncherActivityInfoInternal;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4c
    return-object v1
.end method

.method public registerLoadingProgressForIncrementalApps()V
    .registers 5

    .line 1471
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1475
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1476
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    new-instance v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V

    .line 1484
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1476
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    goto :goto_d

    :cond_28
    return-void
.end method

.method public registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 5

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 333
    new-instance p1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    return-void
.end method

.method public registerShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/content/pm/IShortcutChangeCallback;)V
    .registers 6

    .line 1010
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_18

    .line 1013
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "To query by shortcut ID, package name must also be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1016
    :cond_18
    :goto_18
    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-virtual {p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    goto :goto_2d

    .line 1017
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "To query by locus ID, package name must also be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1021
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v0

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    .line 1022
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectHasInteractAcrossUsersFullPermission(II)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 p1, 0x0

    .line 1027
    :cond_44
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->addShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)V

    return-void
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 315
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_13

    .line 316
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 319
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 320
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public final requestsPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 602
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public resolveLauncherActivityInternal(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot resolve activity"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return-object v0

    .line 648
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 651
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0xc0000

    .line 654
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v2, p2

    move v5, p1

    .line 651
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_55

    if-nez v1, :cond_2b

    .line 671
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_2b
    if-eqz p2, :cond_51

    .line 658
    :try_start_2d
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    goto :goto_51

    .line 662
    :cond_34
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 663
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 664
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 663
    invoke-virtual {p0, p2, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object p0
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_55

    if-nez p0, :cond_48

    .line 671
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 669
    :cond_48
    :try_start_48
    new-instance p1, Landroid/content/pm/LauncherActivityInfoInternal;

    invoke-direct {p1, v1, p0}, Landroid/content/pm/LauncherActivityInfoInternal;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;)V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_55

    .line 671
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_51
    :goto_51
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_55
    move-exception p0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    throw p0
.end method

.method public final shouldFilterSession(ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 362
    :cond_4
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    move-result v1

    if-eq p1, v1, :cond_17

    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 363
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canQueryPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6

    .line 495
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const-string v0, "cannot get shouldHideFromSuggestions"

    .line 496
    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 499
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 500
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 499
    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 503
    :cond_1b
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_26

    move v1, p1

    :cond_26
    return v1
.end method

.method public final shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    .line 584
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_33

    .line 587
    :cond_10
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    return v0

    .line 590
    :cond_19
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_24

    return v0

    .line 597
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->requestsPermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->hasDefaultEnableLauncherActivity(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 v0, 0x1

    :cond_33
    :goto_33
    return v0
.end method

.method public showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    .line 1386
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v2, "Cannot show app details"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 1391
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1393
    :try_start_12
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_76

    const/4 v5, -0x1

    .line 1396
    :try_start_17
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v6, 0x400000

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_25} :catch_26
    .catchall {:try_start_17 .. :try_end_25} :catchall_76

    goto :goto_3e

    :catch_26
    move-exception v0

    :try_start_27
    const-string v6, "LauncherAppsService"

    .line 1399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :goto_3e
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    .line 1402
    invoke-static {v6, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "uId"

    .line 1403
    invoke-virtual {v10, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v0, 0x10008000

    .line 1404
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v4, p5

    .line 1405
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_76

    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    iget-object v6, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    .line 1411
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v13, p6

    .line 1409
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    return-void

    :catchall_76
    move-exception v0

    .line 1407
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1408
    throw v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p4

    .line 1315
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "Cannot start activity"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    move-object/from16 v2, p7

    .line 1319
    invoke-virtual {p0, p4, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2c

    move-object v3, p5

    .line 1324
    invoke-virtual {v4, p5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1326
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    .line 1328
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p6

    .line 1326
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    return-void

    .line 1321
    :cond_2c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 1264
    invoke-virtual/range {p7 .. p7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const-string v1, "Cannot start details activity"

    .line 1265
    invoke-virtual {p0, v8, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 1269
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "market"

    .line 1271
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "details"

    .line 1272
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object v3, p4

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    const-string/jumbo v4, "id"

    .line 1273
    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1274
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1270
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "android-app"

    .line 1275
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object v3, p2

    .line 1276
    invoke-virtual {v2, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.intent.extra.REFERRER"

    .line 1275
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    move-object v1, p5

    .line 1277
    invoke-virtual {v4, p5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1279
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 19

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    .line 1136
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 1135
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutInner(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public final startShortcutInner(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 25

    move-object v0, p0

    move v1, p1

    move-object/from16 v10, p4

    .line 1143
    invoke-virtual {p0, v10, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    const-string v2, "Cannot start activity"

    move/from16 v11, p10

    .line 1144
    invoke-virtual {p0, v11, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_13

    return v12

    .line 1149
    :cond_13
    iget-object v2, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2a

    move/from16 v2, p2

    .line 1151
    invoke-virtual {p0, p1, v2, v10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(IILjava/lang/String;)V

    .line 1154
    :cond_2a
    new-instance v13, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v13}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 1156
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v8

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p10

    move-object v9, v13

    .line 1156
    invoke-virtual/range {v1 .. v9}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntentsAsync(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/android/internal/infra/AndroidFuture;)V

    .line 1160
    :try_start_49
    invoke-virtual {v13}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Landroid/content/Intent;
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_50} :catch_b6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_49 .. :try_end_50} :catch_b6

    if-eqz v7, :cond_b6

    .line 1164
    array-length v1, v7

    if-nez v1, :cond_56

    goto :goto_b6

    .line 1170
    :cond_56
    invoke-static/range {p9 .. p9}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 1171
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->isApplyActivityFlagsForBubbles()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1173
    aget-object v1, v7, v12

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1174
    aget-object v1, v7, v12

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1177
    :cond_70
    aget-object v1, v7, v12

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1178
    aget-object v1, v7, v12

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1181
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p10

    .line 1182
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutStartingThemeResName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 1184
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a7

    if-nez p9, :cond_9e

    .line 1186
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_a0

    :cond_9e
    move-object/from16 v2, p9

    :goto_a0
    const-string v3, "android.activity.splashScreenTheme"

    .line 1188
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_a9

    :cond_a7
    move-object/from16 v4, p9

    :goto_a9
    move-object v0, p0

    move-object v1, v7

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v5, p10

    .line 1190
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    return v0

    :catch_b6
    :cond_b6
    :goto_b6
    return v12
.end method

.method public final startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 13

    const/4 v0, 0x0

    .line 1199
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p0

    .line 1201
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const-string p1, "LauncherAppsService"

    .line 1204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t start activity, code="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_2a} :catch_2a

    :catch_2a
    return v0
.end method

.method public final startWatchingPackageBroadcasts()V
    .registers 8

    .line 382
    iget-boolean v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    if-nez v0, :cond_2e

    .line 383
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    .line 384
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    .line 385
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 389
    iput-boolean v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    :cond_2e
    return-void
.end method

.method public final stopWatchingPackageBroadcasts()V
    .registers 3

    .line 400
    iget-boolean v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    if-eqz v0, :cond_13

    .line 401
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    :cond_13
    return-void
.end method

.method public final toShortcutsCacheFlags(I)I
    .registers 2

    if-nez p1, :cond_5

    const/16 p0, 0x4000

    goto :goto_12

    :cond_5
    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_12

    :cond_b
    const/4 p0, 0x2

    if-ne p1, p0, :cond_11

    const/high16 p0, 0x20000000

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    const-string p1, "Invalid cache owner"

    .line 1456
    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    return p0
.end method

.method public uncacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            "I)V"
        }
    .end annotation

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureStrictAccessShortcutsPermission(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot uncache shortcuts"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 1071
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 1073
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p0, p5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->toShortcutsCacheFlags(I)I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1071
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    return-void
.end method

.method public unregisterShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/IShortcutChangeCallback;)V
    .registers 3

    .line 1033
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 1035
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutChangeHandler:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->removeShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;)V

    return-void
.end method

.method public final verifyCallingPackage(Ljava/lang/String;)V
    .registers 3

    .line 458
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public verifyCallingPackage(Ljava/lang/String;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 465
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIPM:Landroid/content/pm/IPackageManager;

    const-wide/32 v0, 0xc2000

    .line 469
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 465
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    const/4 p0, -0x1

    :goto_f
    if-gez p0, :cond_27

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherAppsService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    if-ne p0, p2, :cond_2a

    return-void

    .line 476
    :cond_2a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
