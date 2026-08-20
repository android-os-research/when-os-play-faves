.class public Lcom/android/server/BatteryService$33;
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

    .line 3474
    iput-object p1, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 3477
    iget-object v0, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLockBatteryInfoBackUp(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3478
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/sys/class/power_supply/battery/fg_asoc"

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;)J

    move-result-wide v1

    .line 3479
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@currentAsoc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    iget-object v3, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$mreadBatteryAsocFromEfsLocked(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V

    .line 3482
    iget-object v3, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_45

    .line 3483
    iget-object v3, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3, v1, v2}, Lcom/android/server/BatteryService;->-$$Nest$minitializeSavedAsoc(Lcom/android/server/BatteryService;J)J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V

    :cond_45
    cmp-long v3, v1, v5

    if-ltz v3, :cond_77

    .line 3486
    iget-object v3, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_77

    iget-object v3, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0xa

    cmp-long v1, v3, v1

    if-gez v1, :cond_77

    .line 3489
    iget-object v1, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$fputmSavedBatteryAsoc(Lcom/android/server/BatteryService;J)V

    .line 3490
    iget-object v1, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "/efs/FactoryApp/asoc"

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3492
    :cond_77
    iget-object p0, p0, Lcom/android/server/BatteryService$33;->this$0:Lcom/android/server/BatteryService;

    const-string v1, "/sys/class/power_supply/battery/fg_asoc"

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmSavedBatteryAsoc(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/BatteryService;->-$$Nest$msaveBatteryInfo(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 3493
    monitor-exit v0

    return-void

    :catchall_84
    move-exception p0

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7 .. :try_end_86} :catchall_84

    throw p0
.end method
