.class public Lcom/android/server/BatteryService$34;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 3498
    iput-object p1, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 3501
    iget-object v0, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3502
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long/2addr v1, v3

    .line 3504
    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3505
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 3506
    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    div-long v7, v1, v3

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3507
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "12 hours cycle"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-$$Nest$fgetmIncreasingCycleCnt(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/BatteryService;->-$$Nest$fputmIncreasingCycleCnt(Lcom/android/server/BatteryService;J)V

    .line 3509
    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-$$Nest$fgetmIncreasingCycleCnt(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    if-nez v5, :cond_6a

    const-wide/16 v5, 0x4650

    add-long/2addr v1, v5

    .line 3511
    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3512
    iget-object v5, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-string v6, "/sys/class/power_supply/battery/battery_cycle"

    div-long/2addr v1, v3

    invoke-static {v5, v6, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3513
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "monthly cycle"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    iget-object v1, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmIncreasingCycleCnt(Lcom/android/server/BatteryService;J)V

    .line 3516
    :cond_6a
    iget-object p0, p0, Lcom/android/server/BatteryService$34;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$msetFullChargingOnDockStartTime(Lcom/android/server/BatteryService;)V

    .line 3518
    :cond_6f
    monitor-exit v0

    return-void

    :catchall_71
    move-exception p0

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_7 .. :try_end_73} :catchall_71

    throw p0
.end method
