.class public Lcom/android/server/power/PowerManagerService$11;
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

    .line 10976
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 10979
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10980
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmTargetBrightnessForLimit(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 10981
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmMasterBrightnessLimitRunning(Lcom/android/server/power/PowerManagerService;Z)V

    const-string p0, "PowerManagerService"

    const-string v1, "[api] BrightnessLimitRunnable done"

    .line 10982
    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10983
    monitor-exit v0

    return-void

    .line 10985
    :cond_24
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmTargetBrightnessForLimit(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    const/4 v5, -0x1

    if-le v3, v4, :cond_3b

    move v3, v5

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x1

    :goto_3c
    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fputmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;I)V

    .line 10986
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmLastRequestedLimitationOfBrightness(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/server/power/PowerManagerService;->updateMasterBrightnessLimitLocked(II)V

    .line 10987
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$11;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$fgetmMasterBrightnessLimitPeriod(Lcom/android/server/power/PowerManagerService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10988
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5b

    throw p0
.end method
