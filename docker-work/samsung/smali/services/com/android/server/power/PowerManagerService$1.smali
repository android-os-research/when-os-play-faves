.class public Lcom/android/server/power/PowerManagerService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mDefaultDisplayState:I

.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 5528
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5529
    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDefaultDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker(Ljava/lang/String;)V
    .registers 2

    .line 5630
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDisplaySuspendBlocker(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/power/SuspendBlocker;->acquire(Ljava/lang/String;)V

    return-void
.end method

.method public onAutoBrightnessAdjutmentApplied(III)V
    .registers 6

    .line 5714
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mfindForegroundPackageName(Lcom/android/server/power/PowerManagerService;)Ljava/lang/String;

    move-result-object v0

    .line 5715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/power/PowerManagerService;)I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 5716
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmScreenBrightnessModeSetting(Lcom/android/server/power/PowerManagerService;)I

    move-result p1

    .line 5717
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const/4 p1, 0x3

    aput-object p3, v0, p1

    .line 5719
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5720
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onColorFadeExit(Z)V
    .registers 2

    return-void
.end method

.method public onDefaultDisplayStateChange(I)V
    .registers 4

    .line 5642
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5643
    :try_start_7
    iput p1, p0, Lcom/android/server/power/PowerManagerService$1;->mDefaultDisplayState:I

    .line 5645
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDefaultDisplayReadyByProximity(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x2

    if-ne p1, v1, :cond_32

    const-string p1, "PowerManagerService"

    const-string/jumbo v1, "onDisplayStateChange: mDefaultDisplayReadyByProximity: true"

    .line 5646
    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5647
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDefaultDisplayReadyByProximity(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5649
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 5650
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 5652
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public onDisplayStateChange(ZZ)V
    .registers 6

    .line 5608
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5609
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x9

    invoke-static {v1, v2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetPowerModeInternal(Lcom/android/server/power/PowerManagerService;IZ)Z

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2d

    .line 5611
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDecoupleHalInteractiveModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 5612
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetHalInteractiveModeLocked(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5614
    :cond_1f
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDecoupleHalAutoSuspendModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z

    move-result p2

    if-nez p2, :cond_47

    .line 5615
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetHalAutoSuspendModeLocked(Lcom/android/server/power/PowerManagerService;Z)V

    goto :goto_47

    .line 5618
    :cond_2d
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDecoupleHalAutoSuspendModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z

    move-result p2

    if-nez p2, :cond_3a

    .line 5619
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetHalAutoSuspendModeLocked(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5621
    :cond_3a
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDecoupleHalInteractiveModeFromDisplayConfig(Lcom/android/server/power/PowerManagerService;)Z

    move-result p2

    if-nez p2, :cond_47

    .line 5622
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetHalInteractiveModeLocked(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5625
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public onProximityNegative()V
    .registers 15

    .line 5559
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5561
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmProximityPositive(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    const-string v1, "PowerManagerService"

    const-string v2, "DisplayPowerCallbacks : onProximityNegative()"

    .line 5562
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    iget v1, p0, Lcom/android/server/power/PowerManagerService$1;->mDefaultDisplayState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3e

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    .line 5565
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-ne v1, v3, :cond_3e

    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "onProximityNegative: mDisplayDefaultReadyByProximity: false"

    .line 5566
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDefaultDisplayReadyByProximity(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5576
    :cond_3e
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-ne v1, v3, :cond_6a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsDualViewMode(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 5578
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    .line 5579
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastScreenWakeTime(Lcom/android/server/power/PowerManagerService;J)V

    .line 5582
    :cond_6a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmProximityPositive(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5583
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmInterceptedPowerKeyForProximity(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5584
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmInterceptedKeyForProximity(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5586
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerGroup;

    invoke-virtual {v1}, Lcom/android/server/power/PowerGroup;->getWakefulnessLocked()I

    move-result v1

    if-eq v1, v3, :cond_c5

    .line 5587
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x6d

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastWakeUpReason(Lcom/android/server/power/PowerManagerService;I)V

    .line 5588
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, " proximity negative"

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmScreenOnReason(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 5589
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/power/PowerGroup;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v1

    .line 5590
    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    const/16 v9, 0x6d

    const-string v10, "android.server.power:PROXIMITY"

    const/16 v11, 0x3e8

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmContext(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 5592
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x3e8

    .line 5589
    invoke-static/range {v5 .. v13}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mwakePowerGroupLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JILjava/lang/String;ILjava/lang/String;I)V

    .line 5595
    :cond_c5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 5596
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmPowerGroups(Lcom/android/server/power/PowerManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/power/PowerGroup;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmClock(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v1

    .line 5597
    invoke-interface {v1}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e8

    .line 5596
    invoke-static/range {v5 .. v11}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerGroup;JIII)Z

    .line 5599
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 5600
    monitor-exit v0

    return-void

    :catchall_f5
    move-exception p0

    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_7 .. :try_end_f7} :catchall_f5

    throw p0
.end method

.method public onProximityPositive()V
    .registers 6

    .line 5541
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5543
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmProximityPositive(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_11

    monitor-exit v0

    return-void

    :cond_11
    const-string v1, "PowerManagerService"

    const-string v2, "DisplayPowerCallbacks : onProximityPositive()"

    .line 5544
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmIsDualViewMode(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmNotifier(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/Notifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V

    .line 5547
    :cond_2a
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmProximityPositive(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5548
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 5549
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 5550
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_4f

    .line 5553
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDPSIDuration(Lcom/android/server/power/PowerManagerService;)[J

    move-result-object p0

    const/4 v0, 0x4

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void

    :catchall_4f
    move-exception p0

    .line 5550
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public onStateChanged()V
    .registers 4

    .line 5533
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5534
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 5535
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 5536
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onTransitionStarted(I)V
    .registers 10

    .line 5674
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5675
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDualScreenPolicy(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    if-eq v1, p1, :cond_4e

    const-string v1, "PowerManagerService"

    .line 5676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTransitionStarted: dualScreenPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5677
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmForceSetHalInteractiveMode(Lcom/android/server/power/PowerManagerService;Z)V

    .line 5678
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDualScreenPolicy(Lcom/android/server/power/PowerManagerService;I)V

    .line 5679
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->-$$Nest$muserActivityNoUpdateLocked(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 5681
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDirty(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {p1, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDirty(Lcom/android/server/power/PowerManagerService;I)V

    .line 5682
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mupdatePowerStateLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 5684
    :cond_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public releaseSuspendBlocker(Ljava/lang/String;)V
    .registers 2

    .line 5635
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDisplaySuspendBlocker(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/power/SuspendBlocker;->release(Ljava/lang/String;)V

    return-void
.end method

.method public updateDuration([J)V
    .registers 10

    .line 5691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastScreenWakeTime(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    .line 5694
    :goto_12
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$sfgetLD_KEYS()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    if-ge v5, v6, :cond_21

    .line 5695
    aget-wide v6, p1, v5

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_21
    cmp-long v3, v0, v3

    if-ltz v3, :cond_53

    .line 5698
    :goto_25
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$sfgetLD_KEYS()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_3e

    .line 5699
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDPSIDuration(Lcom/android/server/power/PowerManagerService;)[J

    move-result-object v3

    aget-wide v4, v3, v2

    aget-wide v6, p1, v2

    add-long/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 5701
    :cond_3e
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDPSIDuration(Lcom/android/server/power/PowerManagerService;)[J

    move-result-object p1

    const/4 v2, 0x3

    aget-wide v3, p1, v2

    add-long/2addr v3, v0

    aput-wide v3, p1, v2

    .line 5702
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastScreenWakeTime(Lcom/android/server/power/PowerManagerService;J)V

    :cond_53
    return-void
.end method
