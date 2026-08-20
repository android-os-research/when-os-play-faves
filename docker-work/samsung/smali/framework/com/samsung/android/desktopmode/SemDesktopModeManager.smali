.class public final Lcom/samsung/android/desktopmode/SemDesktopModeManager;
.super Ljava/lang/Object;
.source "SemDesktopModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;,
        Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    }
.end annotation


# static fields
.field public static final blacklist LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.desktoplauncher"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UI_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice"

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBlockers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDesktopModeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;",
            "Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Lcom/samsung/android/desktopmode/IDesktopMode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/desktopmode/IDesktopMode;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/desktopmode/IDesktopMode;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    .line 168
    iput-object p2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    .line 169
    return-void
.end method

.method public static greylist-max-p isDesktopDockConnected()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string v1, "isDesktopDockConnected() is removed. Please use Intent.ACTION_DOCK_EVENT sticky broadcast instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-p isDesktopMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string v1, "isDesktopMode() is removed. Please check Configuration.semDesktopModeEnabled instead, or consider using getDesktopModeState() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-p registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener(EventListener) is removed.  Please use registerListener(DesktopModeListener) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public static greylist-max-p unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V
    .registers 3
    .param p0, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener(EventListener) is removed.  Please use unregisterListener(DesktopModeListener) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method


# virtual methods
.method public blacklist forceSetHdmiSettings(Z)V
    .registers 3
    .param p1, "desktopMode"    # Z

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->scheduleUpdateDesktopMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 395
    goto :goto_a

    .line 393
    :catch_6
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 396
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .registers 2

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 330
    :catch_7
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isAllowed()Z
    .registers 2

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->isAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 373
    :catch_7
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isDeviceConnected()Z
    .registers 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->isDeviceConnected()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 349
    :catch_7
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopMode;->onSecuredAppLaunched(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 563
    goto :goto_a

    .line 561
    :catch_6
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 564
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method public whitelist registerBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .registers 7
    .param p1, "blocker"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 493
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_7e

    .line 497
    if-nez p1, :cond_17

    .line 498
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerBlocker: DesktopModeBlocker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    monitor-exit v0

    return-void

    .line 501
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    if-nez v1, :cond_22

    .line 502
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    .line 504
    :cond_22
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 505
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerBlocker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v0

    return-void

    .line 509
    :cond_4b
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_86

    .line 511
    .local v1, "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;
    :try_start_50
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    .line 512
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerBlocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_77} :catch_78
    .catchall {:try_start_50 .. :try_end_77} :catchall_86

    .line 516
    goto :goto_7c

    .line 514
    :catch_78
    move-exception v2

    .line 515
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_79
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 517
    .end local v1    # "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_7c
    monitor-exit v0

    .line 518
    return-void

    .line 495
    :cond_7e
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system may call registerBlocker()"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local p1    # "blocker":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    throw v1

    .line 517
    .restart local p0    # "this":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .restart local p1    # "blocker":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_79 .. :try_end_88} :catchall_86

    throw v1
.end method

.method public whitelist registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 206
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    if-nez p1, :cond_f

    .line 208
    :try_start_5
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v0

    return-void

    .line 211
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 212
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    .line 214
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 215
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_43
    new-instance v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;

    invoke-direct {v1, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_76

    .line 220
    .local v1, "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    .line 221
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6f} :catch_70
    .catchall {:try_start_48 .. :try_end_6f} :catchall_76

    .line 225
    goto :goto_74

    .line 223
    :catch_70
    move-exception v2

    .line 224
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 226
    .end local v1    # "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public blacklist sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "message"    # Landroid/os/Bundle;

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopMode;->sendMessage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 406
    :catch_7
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 409
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setOnMessageReceivedListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;)Z
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;

    .line 463
    if-nez p1, :cond_9

    .line 464
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V

    goto :goto_13

    .line 466
    :cond_9
    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;-><init>(Lcom/samsung/android/desktopmode/SemDesktopModeManager$OnMessageReceivedListener;)V

    .line 467
    .local v0, "iDesktopLauncher":Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v1, v0}, Lcom/samsung/android/desktopmode/IDesktopMode;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_15

    .line 469
    .end local v0    # "iDesktopLauncher":Lcom/samsung/android/desktopmode/SemDesktopModeManager$IDesktopModeLauncherImpl;
    :goto_13
    const/4 v0, 0x1

    return v0

    .line 470
    :catch_15
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 473
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V
    .registers 7
    .param p1, "blocker"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;

    .line 528
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_79

    .line 532
    if-nez p1, :cond_17

    .line 533
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterBlocker: DesktopModeBlocker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v0

    return-void

    .line 536
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    if-nez v1, :cond_1d

    .line 537
    monitor-exit v0

    return-void

    .line 539
    :cond_1d
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;

    .line 540
    .local v1, "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;
    if-nez v1, :cond_46

    .line 541
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterBlocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit v0

    return-void

    .line 544
    :cond_46
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 545
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mBlockers:Ljava/util/Map;
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_81

    .line 548
    :cond_51
    :try_start_51
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    .line 549
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterBlocker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_6f} :catch_70
    .catchall {:try_start_51 .. :try_end_6f} :catchall_81

    .line 552
    goto :goto_74

    .line 550
    :catch_70
    move-exception v2

    .line 551
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_71
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 553
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_74
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;->nullOutBlockerLocked()V

    .line 554
    .end local v1    # "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlockerDelegate;
    monitor-exit v0

    .line 555
    return-void

    .line 530
    :cond_79
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system may call unregisterBlocker()"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local p1    # "blocker":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    throw v1

    .line 554
    .restart local p0    # "this":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .restart local p1    # "blocker":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_71 .. :try_end_83} :catchall_81

    throw v1
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 252
    sget-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    if-nez p1, :cond_f

    .line 254
    :try_start_5
    sget-object v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterListener: Listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 258
    monitor-exit v0

    return-void

    .line 260
    :cond_15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;

    .line 261
    .local v1, "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;
    if-nez v1, :cond_3e

    .line 262
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already unregistered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    monitor-exit v0

    return-void

    .line 265
    :cond_3e
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mDesktopModeListeners:Ljava/util/Map;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_71

    .line 269
    :cond_49
    :try_start_49
    iget-object v2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->mService:Lcom/samsung/android/desktopmode/IDesktopMode;

    invoke-interface {v2, v1}, Lcom/samsung/android/desktopmode/IDesktopMode;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    .line 270
    sget-object v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_67} :catch_68
    .catchall {:try_start_49 .. :try_end_67} :catchall_71

    .line 273
    goto :goto_6c

    .line 271
    :catch_68
    move-exception v2

    .line 272
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_69
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 274
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6c
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;->nullOutListenerLocked()V

    .line 275
    .end local v1    # "delegate":Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListenerDelegate;
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    throw v1
.end method
