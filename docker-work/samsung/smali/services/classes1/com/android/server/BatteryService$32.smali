.class public Lcom/android/server/BatteryService$32;
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

    .line 3429
    iput-object p1, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 3433
    iget-object v0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3434
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryMaxCurrent(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    .line 3435
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_49

    .line 3436
    iget-object v0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3437
    :try_start_15
    iget-object v0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2a

    .line 3438
    iget-object v0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryMaxCurrentFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;J)V

    .line 3440
    :cond_2a
    iget-object v0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_44

    .line 3441
    iget-object v0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;J)V

    .line 3442
    iget-object p0, p0, Lcom/android/server/BatteryService$32;->this$0:Lcom/android/server/BatteryService;

    const-string v0, "/efs/FactoryApp/max_current"

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryMaxCurrent(Lcom/android/server/BatteryService;)J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3444
    :cond_44
    monitor-exit v3

    return-void

    :catchall_46
    move-exception p0

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_15 .. :try_end_48} :catchall_46

    throw p0

    :catchall_49
    move-exception p0

    .line 3435
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method
