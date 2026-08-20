.class public Lcom/android/server/power/PowerManagerService$9;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 8178
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 8181
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8182
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8183
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mprintWakeLockLocked(Lcom/android/server/power/PowerManagerService;)V

    .line 8185
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;J)V

    .line 8186
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/32 v2, 0x1b7740

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;J)V

    .line 8187
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$9;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmDelayTimePrintWakeLock(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8188
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method
