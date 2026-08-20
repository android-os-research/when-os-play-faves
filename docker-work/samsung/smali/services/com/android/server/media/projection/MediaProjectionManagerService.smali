.class public final Lcom/android/server/media/projection/MediaProjectionManagerService;
.super Lcom/android/server/SystemService;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStartCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;,
        Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;
    }
.end annotation


# static fields
.field public static final REQUIRE_FG_SERVICE_FOR_PROJECTION:Z = true

.field public static final TAG:Ljava/lang/String; = "MediaProjectionManagerService"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

.field public final mContext:Landroid/content/Context;

.field public final mDeathEaters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

.field public final mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field public mProjectionToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$SRhah0D7uIjpDibrEwyk7B5In_c(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->lambda$showDexExceptionToast$0(Landroid/hardware/display/SemWifiDisplay;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOps(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbackDelegate(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/MediaRouter$RouteInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProjectionGrant(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMediaRouteInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/MediaRouter$RouteInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/media/projection/MediaProjectionManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetActiveProjectionInfo(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/media/projection/MediaProjectionInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/media/projection/MediaProjectionManagerService;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->handleForegroundServicesChanged(III)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misValidMediaProjection(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->isValidMediaProjection(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveCallback(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smtypeToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    .line 107
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-direct {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    const-string v0, "appops"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 109
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "media_router"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 112
    new-instance p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback-IA;)V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    .line 113
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void
.end method

.method private synthetic lambda$showDexExceptionToast$0(Landroid/hardware/display/SemWifiDisplay;)V
    .registers 7

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    .line 313
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 315
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_23

    const v0, 0x1040beb

    goto :goto_26

    :cond_23
    const v0, 0x1040bea

    :goto_26
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 320
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 317
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 898
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "TYPE_PRESENTATION"

    return-object p0

    :cond_10
    const-string p0, "TYPE_MIRRORING"

    return-object p0

    :cond_13
    const-string p0, "TYPE_SCREEN_CAPTURE"

    return-object p0
.end method


# virtual methods
.method public final addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 5

    .line 209
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$2;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 215
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {v2, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V

    .line 218
    monitor-exit v1

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "MEDIA PROJECTION MANAGER (dumpsys media_projection)"

    .line 274
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "Media Projection: "

    .line 276
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_15

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->dump(Ljava/io/PrintWriter;)V

    goto :goto_1b

    :cond_15
    const-string/jumbo p0, "null"

    .line 280
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-nez p0, :cond_a

    const/4 p0, 0x0

    .line 267
    monitor-exit v0

    return-object p0

    .line 269
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    .line 270
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final getDesktopModeWifiDisplay()Landroid/hardware/display/SemWifiDisplay;
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_17

    .line 330
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_40

    .line 333
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;

    const-string v0, "display"

    .line 334
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 335
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 336
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 339
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p0

    if-eqz p0, :cond_40

    return-object p0

    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleForegroundServicesChanged(III)V
    .registers 6

    .line 162
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_21

    iget v1, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    if-eq v1, p2, :cond_c

    goto :goto_21

    .line 167
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result p2

    if-nez p2, :cond_14

    .line 168
    monitor-exit p1

    return-void

    :cond_14
    and-int/lit8 p2, p3, 0x20

    if-eqz p2, :cond_1a

    .line 172
    monitor-exit p1

    return-void

    .line 175
    :cond_1a
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 176
    monitor-exit p1

    return-void

    .line 164
    :cond_21
    :goto_21
    monitor-exit p1

    return-void

    :catchall_23
    move-exception p0

    .line 176
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final isValidMediaProjection(Landroid/os/IBinder;)Z
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    if-eqz p0, :cond_d

    .line 258
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_d
    const/4 p0, 0x0

    .line 260
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 261
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final linkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;Landroid/os/IBinder$DeathRecipient;)V
    .registers 4

    .line 231
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    .line 232
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 233
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string p1, "MediaProjectionManagerService"

    const-string p2, "Unable to link to death for media projection monitoring callback"

    .line 235
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public monitor()V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onStart()V
    .registers 5

    .line 118
    new-instance v0, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$BinderService-IA;)V

    const-string/jumbo v1, "media_projection"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 120
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouterCallback:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaRouterCallback;

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 123
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 143
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 144
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 145
    :try_start_c
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz p0, :cond_13

    .line 146
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 148
    :cond_13
    monitor-exit p1

    return-void

    :catchall_15
    move-exception p0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 224
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    .line 225
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final showDexExceptionToast(Landroid/hardware/display/SemWifiDisplay;)V
    .registers 4

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 312
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/hardware/display/SemWifiDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showSmartViewExceptionToast()V
    .registers 3

    .line 287
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 288
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$3;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    .line 183
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouteInfo:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_28

    .line 185
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_28

    .line 187
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->getDesktopModeWifiDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->showDexExceptionToast(Landroid/hardware/display/SemWifiDisplay;)V

    goto :goto_1f

    .line 193
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->showSmartViewExceptionToast()V

    .line 195
    :goto_1f
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 197
    :cond_28
    invoke-virtual {p1}, Landroid/media/projection/IMediaProjection$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 198
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStart(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    .registers 3

    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionToken:Landroid/os/IBinder;

    .line 204
    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mProjectionGrant:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->dispatchStop(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    return-void
.end method

.method public final unlinkDeathRecipientLocked(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .registers 3

    .line 240
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 241
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService;->mDeathEaters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder$DeathRecipient;

    if-eqz p0, :cond_12

    const/4 v0, 0x0

    .line 243
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    return-void
.end method
