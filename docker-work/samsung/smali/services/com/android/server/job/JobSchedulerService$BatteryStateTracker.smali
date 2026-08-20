.class public final Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryStateTracker"
.end annotation


# instance fields
.field public mBatteryNotLow:Z

.field public mCharging:Z

.field public mLastBatterySeq:I

.field public mMonitor:Landroid/content/BroadcastReceiver;

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2700
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, -0x1

    .line 2696
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    return-void
.end method


# virtual methods
.method public getSeq()I
    .registers 1

    .line 2753
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    return p0
.end method

.method public isBatteryNotLow()Z
    .registers 1

    .line 2745
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    return p0
.end method

.method public isCharging()Z
    .registers 1

    .line 2741
    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    return p0
.end method

.method public isMonitoring()Z
    .registers 1

    .line 2749
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2758
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2763
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2764
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_LOW"

    .line 2766
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    .line 2767
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "JobScheduler"

    .line 2768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery life too low @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_33
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    if-eqz v1, :cond_ca

    .line 2771
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    :goto_39
    move v3, v4

    goto/16 :goto_ca

    :cond_3c
    const-string v2, "android.intent.action.BATTERY_OKAY"

    .line 2774
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2775
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_64

    const-string v1, "JobScheduler"

    .line 2776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery high enough @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    :cond_64
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    if-nez v1, :cond_ca

    .line 2779
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    goto :goto_39

    :cond_6b
    const-string v2, "android.os.action.CHARGING"

    .line 2782
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2783
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_93

    const-string v1, "JobScheduler"

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery charging @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    :cond_93
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    if-nez v1, :cond_ca

    .line 2787
    iput-boolean v4, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    goto :goto_39

    :cond_9a
    const-string v2, "android.os.action.DISCHARGING"

    .line 2790
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 2791
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_c2

    const-string v1, "JobScheduler"

    .line 2792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery discharging @ "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_c2
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    if-eqz v1, :cond_ca

    .line 2795
    iput-boolean v3, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    goto/16 :goto_39

    :cond_ca
    :goto_ca
    const-string/jumbo v1, "seq"

    .line 2799
    iget v2, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    .line 2800
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mLastBatterySeq:I

    if-eqz v3, :cond_f2

    .line 2802
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    :goto_e0
    if-ltz p1, :cond_f2

    .line 2803
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StateController;->onBatteryStateChangedLocked()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_e0

    .line 2806
    :cond_f2
    monitor-exit v0

    return-void

    :catchall_f4
    move-exception p0

    monitor-exit v0
    :try_end_f6
    .catchall {:try_start_5 .. :try_end_f6} :catchall_f4

    throw p0
.end method

.method public setMonitorBatteryLocked(Z)V
    .registers 3

    if-eqz p1, :cond_23

    .line 2723
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_35

    .line 2724
    new-instance p1, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;-><init>(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 2730
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2731
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2732
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_35

    .line 2734
    :cond_23
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_35

    .line 2735
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 2736
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    :cond_35
    :goto_35
    return-void
.end method

.method public startTracking()V
    .registers 3

    .line 2704
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 2707
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 2708
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.CHARGING"

    .line 2710
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    .line 2711
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2712
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2715
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 2716
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 2717
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    const/16 v1, 0xf

    .line 2718
    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    return-void
.end method
