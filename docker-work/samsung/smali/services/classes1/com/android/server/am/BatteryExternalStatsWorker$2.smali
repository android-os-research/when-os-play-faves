.class public Lcom/android/server/am/BatteryExternalStatsWorker$2;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 514
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$2;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 515
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
