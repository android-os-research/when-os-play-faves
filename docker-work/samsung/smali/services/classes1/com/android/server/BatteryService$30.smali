.class public Lcom/android/server/BatteryService$30;
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

    .line 3360
    iput-object p1, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 3364
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PREVENT_SWELLING:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSehHealthInfo(Lcom/android/server/BatteryService;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object v0

    iget-boolean v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmFullChargingOnDockStartTime(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1b

    return-void

    .line 3372
    :cond_1b
    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3374
    :try_start_22
    iget-object v3, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmCurrentBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    .line 3375
    iget-object v5, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmCurrentBatteryUsage(Lcom/android/server/BatteryService;J)V

    .line 3376
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_68

    cmp-long v0, v3, v1

    if-gtz v0, :cond_33

    return-void

    .line 3380
    :cond_33
    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3381
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryUsageFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-static {v0, v5, v6}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryUsage(Lcom/android/server/BatteryService;J)V

    .line 3382
    iget-object v0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3383
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetFEATURE_SAVE_BATTERY_CYCLE()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3384
    iget-object p0, p0, Lcom/android/server/BatteryService$30;->this$0:Lcom/android/server/BatteryService;

    const-string v0, "/sys/class/power_supply/battery/battery_cycle"

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryUsage(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3386
    :cond_63
    monitor-exit v1

    return-void

    :catchall_65
    move-exception p0

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_65

    throw p0

    :catchall_68
    move-exception p0

    .line 3376
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw p0
.end method
