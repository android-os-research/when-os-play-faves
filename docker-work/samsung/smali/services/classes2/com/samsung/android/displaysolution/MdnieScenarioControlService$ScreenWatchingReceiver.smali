.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 464
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action  :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MdnieScenarioControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c2

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mActivityManager  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mMdnieManager  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmMdnieManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mMediaRouterManager  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmMediaRouterManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mSemDisplaySolutionManager  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmSemDisplaySolutionManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", DesktopModeFeature  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmMdnieManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmMediaRouterManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;

    move-result-object p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmSemDisplaySolutionManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object p1

    if-nez p1, :cond_b4

    .line 480
    :cond_8f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetGET_SYSTEM_SERVICES_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr p1, v3

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const-string p1, "Failure to register all of the services system."

    .line 483
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_b4
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p1

    if-eqz p1, :cond_c1

    .line 488
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetting_is_changed(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    :cond_c1
    return-void

    :cond_c2
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_16c

    .line 492
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object p1

    if-nez p1, :cond_fe

    .line 493
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmContext(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "keyguard"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    invoke-static {p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/KeyguardManager;)V

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mKeyGuardManager : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_fe
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object p1

    if-eqz p1, :cond_117

    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmKeyGuardManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_117

    .line 497
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputisLockScreenOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 498
    :cond_117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isLockScreenOn : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetisLockScreenOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 500
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmUsePixelSelfMoveConfig(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 501
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetPIXEL_SELF_MOVE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v2

    int-to-long v4, v2

    add-long/2addr p1, v4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 504
    :cond_159
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmScreenStateOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 505
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetisLockScreenOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 506
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    :cond_16b
    return-void

    :cond_16c
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 511
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void

    :cond_17a
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 514
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 515
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputisLockScreenOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 516
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmScreenStateOn(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 518
    :try_start_18c
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object p1

    if-eqz p1, :cond_1a2

    .line 519
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 p1, -0x1

    invoke-interface {p0, p1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_18c .. :try_end_19c} :catch_19d

    goto :goto_1a2

    :catch_19d
    const-string p0, "failed to onForegroundActivitiesChanged"

    .line 522
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a2
    :goto_1a2
    return-void

    :cond_1a3
    const-string v0, "ACTION_MOVIE_PLAYER_STATE_IN"

    .line 526
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 527
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmVideoModeCheck(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 528
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmGalleryAppState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 531
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_292

    :cond_1d6
    const-string v0, "ACTION_MOVIE_PLAYER_STATE_OUT"

    .line 534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 535
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmVideoModeCheck(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 536
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmVideoEnd(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 539
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_292

    :cond_20a
    const-string v0, "ACTION_GAME_MODE_STATE_IN"

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 543
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmGameAppLauncher(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 545
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_292

    :cond_238
    const-string v0, "ACTION_GAME_MODE_STATE_OUT"

    .line 548
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_246

    .line 549
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmGameAppLauncher(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_292

    :cond_246
    const-string v0, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    .line 551
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 552
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const-string/jumbo p1, "status"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmUserActivityStatus(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)V

    goto :goto_292

    :cond_25b
    const-string p2, "com.samsung.systemui.statusbar.EXPANDED"

    .line 557
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_269

    .line 558
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmQuickPanelState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)V

    goto :goto_292

    :cond_269
    const-string p2, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 560
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_292

    .line 561
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmQuickPanelState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)V

    .line 562
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmAutoBrightnessMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result p1

    if-eqz p1, :cond_292

    .line 563
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p1

    const/16 p2, 0x17

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetmHandler(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_292
    :goto_292
    return-void
.end method
