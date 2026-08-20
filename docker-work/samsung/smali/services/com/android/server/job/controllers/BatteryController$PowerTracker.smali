.class public final Lcom/android/server/job/controllers/BatteryController$PowerTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerTracker"
.end annotation


# instance fields
.field public mPowerConnected:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isPowerConnected()Z
    .registers 1

    .line 236
    iget-boolean p0, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 241
    iget-object p1, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 242
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 245
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_33

    const-string p2, "JobScheduler.Battery"

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power connected @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_33
    iget-boolean p2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    if-eqz p2, :cond_39

    .line 249
    monitor-exit p1

    return-void

    :cond_39
    const/4 p2, 0x1

    .line 251
    iput-boolean p2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    goto :goto_70

    :cond_3d
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 252
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 253
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_67

    const-string p2, "JobScheduler.Battery"

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power disconnected @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_67
    iget-boolean p2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    if-nez p2, :cond_6d

    .line 257
    monitor-exit p1

    return-void

    :cond_6d
    const/4 p2, 0x0

    .line 259
    iput-boolean p2, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    .line 262
    :cond_70
    :goto_70
    iget-object p0, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->-$$Nest$mmaybeReportNewChargingStateLocked(Lcom/android/server/job/controllers/BatteryController;)V

    .line 263
    monitor-exit p1

    return-void

    :catchall_77
    move-exception p0

    monitor-exit p1
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public startTracking()V
    .registers 3

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 231
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    const/16 v1, 0xf

    .line 232
    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$PowerTracker;->mPowerConnected:Z

    return-void
.end method
