.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 10333
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public finishUidChanges()V
    .registers 1

    .line 10513
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->finishUidChangesInternal()V

    return-void
.end method

.method public getLastGoToSleep()Landroid/os/PowerManager$SleepData;
    .registers 1

    .line 10558
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgetLastGoToSleepInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$SleepData;

    move-result-object p0

    return-object p0
.end method

.method public getLastUserActivityState()I
    .registers 1

    .line 10731
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgetLastUserActivityStateInternal(Lcom/android/server/power/PowerManagerService;)I

    move-result p0

    return p0
.end method

.method public getLastWakeup()Landroid/os/PowerManager$WakeData;
    .registers 1

    .line 10553
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mgetLastWakeupInternal(Lcom/android/server/power/PowerManagerService;)Landroid/os/PowerManager$WakeData;

    move-result-object p0

    return-object p0
.end method

.method public getLowPowerState(I)Landroid/os/PowerSaveState;
    .registers 2

    .line 10462
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverPolicy(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object p0

    return-object p0
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 10563
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$minterceptPowerKeyDownInternal(Lcom/android/server/power/PowerManagerService;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public isInternalDisplayOff()Z
    .registers 1

    .line 10584
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misInternalDisplayOffInternal(Lcom/android/server/power/PowerManagerService;)Z

    move-result p0

    return p0
.end method

.method public isProximityPositive()Z
    .registers 1

    .line 10591
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$misProximityPositiveInternal(Lcom/android/server/power/PowerManagerService;)Z

    move-result p0

    return p0
.end method

.method public registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 4

    .line 10468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] registerLowPowerModeObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10469
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10468
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10471
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatterySaverController(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    return-void
.end method

.method public registerUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .registers 4

    .line 10711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerUserActivityStateListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 10716
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mregisterUserActivityStateListenerInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    return-void

    .line 10714
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDeviceIdleMode(Z)Z
    .registers 4

    .line 10476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setDeviceIdleMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10477
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleModeInternal(Z)Z

    move-result p0

    return p0
.end method

.method public setDeviceIdleTempWhitelist([I)V
    .registers 2

    .line 10493
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleTempWhitelistInternal([I)V

    return-void
.end method

.method public setDeviceIdleWhitelist([I)V
    .registers 2

    .line 10488
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setDeviceIdleWhitelistInternal([I)V

    return-void
.end method

.method public setDozeOverrideFromDreamManager(II)V
    .registers 6

    .line 10346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setDozeOverrideFromDreamManager: screenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10347
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10346
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_36

    move p1, v0

    :pswitch_27
    const/4 v1, -0x1

    if-lt p2, v1, :cond_2e

    const/16 v2, 0xff

    if-le p2, v2, :cond_2f

    :cond_2e
    move p2, v1

    .line 10367
    :cond_2f
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIZ)V

    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public setDozeOverrideFromDreamManager(IIIZ)V
    .registers 7

    .line 10376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setDozeOverrideFromDreamManager: screenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10377
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shouldWait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10376
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10381
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeModeBySysfs(Lcom/android/server/power/PowerManagerService;I)V

    packed-switch p1, :pswitch_data_4e

    const/4 p1, 0x0

    :pswitch_3f
    const/4 p3, -0x1

    if-lt p2, p3, :cond_46

    const/16 v0, 0xff

    if-le p2, v0, :cond_47

    :cond_46
    move p2, p3

    .line 10400
    :cond_47
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, p4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIZ)V

    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method public setDrawWakeLockOverrideFromSidekick(Z)V
    .registers 2

    .line 10426
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDrawWakeLockOverrideFromSidekickInternal(Lcom/android/server/power/PowerManagerService;Z)V

    return-void
.end method

.method public setGoToSleepPrevention(Z)V
    .registers 4

    .line 10598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setGoToSleepPrevention: enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10599
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetGoToSleepPreventionInternal(Lcom/android/server/power/PowerManagerService;Z)V

    return-void
.end method

.method public setHbmBlock(Z)V
    .registers 4

    .line 10703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setHbmBlock: enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10704
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setHbmBlockInternal(Z)V

    return-void
.end method

.method public setLightDeviceIdleMode(Z)Z
    .registers 4

    .line 10482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setLightDeviceIdleMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10483
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLightDeviceIdleModeInternal(Z)Z

    move-result p0

    return p0
.end method

.method public setLowPowerStandbyActive(Z)V
    .registers 2

    .line 10503
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerStandbyActiveInternal(Z)V

    return-void
.end method

.method public setLowPowerStandbyAllowlist([I)V
    .registers 2

    .line 10498
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->setLowPowerStandbyAllowlistInternal([I)V

    return-void
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .registers 6

    .line 10432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setMaximumScreenOffTimeoutFromDeviceAdmin: userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 10433
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10432
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10435
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromDeviceAdminInternal(IJ)V

    return-void
.end method

.method public setMaximumScreenOffTimeoutFromKnox(IJ)V
    .registers 6

    .line 10442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setMaximumScreenOffTimeoutFromKnox: userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10443
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10442
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10446
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->setMaximumScreenOffTimeoutFromKnoxInternal(IJ)V

    return-void
.end method

.method public setPowerBoost(II)V
    .registers 3

    .line 10538
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerBoostInternal(Lcom/android/server/power/PowerManagerService;II)V

    return-void
.end method

.method public setPowerMode(IZ)V
    .registers 3

    .line 10543
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z

    return-void
.end method

.method public setScreenBrightnessOverrideFromWindowManager(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    :cond_b
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 10340
    :cond_d
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetScreenBrightnessOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;F)V

    return-void
.end method

.method public setScreenDimDurationOverrideFromSqd(Z)V
    .registers 2

    .line 10570
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetScreenDimDurationOverrideFromSqdInternal(Lcom/android/server/power/PowerManagerService;Z)V

    return-void
.end method

.method public setScreenDimDurationOverrideFromWindowManager(J)V
    .registers 3

    .line 10577
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetScreenDimDurationOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V

    return-void
.end method

.method public setUserActivityTimeoutForDexOverrideFromWindowManager(J)V
    .registers 3

    .line 10420
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetUserActivityTimeoutForDexOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V

    return-void
.end method

.method public setUserActivityTimeoutOverrideFromWindowManager(J)V
    .registers 3

    .line 10414
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetUserActivityTimeoutOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;J)V

    return-void
.end method

.method public setUserInactiveOverrideFromWindowManager()V
    .registers 3

    .line 10407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] setUserInactiveOverrideFromWindowManager()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10408
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10407
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10409
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetUserInactiveOverrideFromWindowManagerInternal(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method public setWakeLockBlackListEnableDisable(IZ)V
    .registers 8

    .line 10657
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2a

    .line 10660
    :try_start_a
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakelockBlacklistAppid(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 10661
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakelockBlacklistAppid(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 10663
    :cond_28
    monitor-exit v0

    return-void

    .line 10666
    :cond_2a
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakelockBlacklistAppid(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b4

    .line 10667
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakelockBlacklistAppid(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 10668
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakelockBlacklistAppid(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10673
    :goto_51
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakeLocks(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5b
    :goto_5b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_89

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 10674
    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v4, p1, :cond_5b

    .line 10676
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 10678
    iget-boolean v1, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v1, :cond_82

    .line 10680
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnotifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_87

    .line 10682
    :cond_82
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnotifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_87
    move v1, v3

    goto :goto_5b

    :cond_89
    if-eqz v1, :cond_9c

    .line 10689
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result p2

    or-int/2addr p2, v3

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10690
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10691
    monitor-exit v0

    return-void

    :cond_9c
    const-string p0, "PowerManagerService"

    .line 10693
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PWL] can not change appid =  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10694
    monitor-exit v0

    return-void

    .line 10670
    :cond_b4
    monitor-exit v0

    return-void

    :catchall_b6
    move-exception p0

    .line 10696
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_a .. :try_end_b8} :catchall_b6

    throw p0
.end method

.method public setWakeLockEnableDisable(IZ)I
    .registers 11

    .line 10606
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "PowerManagerService"

    .line 10607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PWL] SetWakeLockEnableDisable uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , disable= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10609
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmWakeLocks(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 10612
    iget v6, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v6, p1, :cond_81

    iget-boolean v6, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    if-eq v6, p2, :cond_81

    .line 10613
    iput-boolean p2, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    .line 10615
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v6, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 10617
    iget-boolean v3, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v3, :cond_5a

    .line 10619
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnotifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_5f

    .line 10621
    :cond_5a
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnotifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_5f
    move v3, v5

    :cond_60
    if-eqz v3, :cond_31

    const-string v5, "PowerManagerService"

    .line 10624
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] find out: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  disabled -> "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 10628
    :cond_81
    iget-object v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_31

    .line 10629
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move v6, v2

    :goto_8a
    if-ge v6, v5, :cond_31

    .line 10631
    iget-object v7, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v7, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    if-ne v7, p1, :cond_b9

    .line 10632
    iget-boolean v7, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v7, p2, :cond_b9

    const-string p0, "PowerManagerService"

    .line 10633
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PWL] find out in ws: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  disabled -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 10634
    monitor-exit v0

    return p0

    :cond_b9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8a

    :cond_bc
    if-eqz v3, :cond_cf

    .line 10643
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result p2

    or-int/2addr p2, v5

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 10644
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 10645
    monitor-exit v0

    return v5

    :cond_cf
    const-string p0, "PowerManagerService"

    .line 10647
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PWL] can not change uid =  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10648
    monitor-exit v0

    return v2

    :catchall_e7
    move-exception p0

    .line 10650
    monitor-exit v0
    :try_end_e9
    .catchall {:try_start_7 .. :try_end_e9} :catchall_e7

    throw p0
.end method

.method public startUidChanges()V
    .registers 1

    .line 10508
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->startUidChangesInternal()V

    return-void
.end method

.method public uidActive(I)V
    .registers 2

    .line 10528
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->uidActiveInternal(I)V

    return-void
.end method

.method public uidGone(I)V
    .registers 2

    .line 10523
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->uidGoneInternal(I)V

    return-void
.end method

.method public uidIdle(I)V
    .registers 2

    .line 10533
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->uidIdleInternal(I)V

    return-void
.end method

.method public unregisterUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .registers 4

    .line 10721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterUserActivityStateListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1f

    .line 10726
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$munregisterUserActivityStateListenerInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    return-void

    .line 10724
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateProfileActivityTimeFromKnox(IJ)V
    .registers 6

    .line 10452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] updateProfileActivityTimeFromKnox: userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10453
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    .line 10452
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10456
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->updateProfileActivityTimeFromKnoxInternal(IJ)V

    return-void
.end method

.method public updateUidProcState(II)V
    .registers 3

    .line 10518
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->updateUidProcStateInternal(II)V

    return-void
.end method

.method public wasDeviceIdleFor(J)Z
    .registers 3

    .line 10548
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    move-result p0

    return p0
.end method
