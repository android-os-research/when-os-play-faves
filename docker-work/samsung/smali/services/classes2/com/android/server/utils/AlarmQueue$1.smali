.class public Lcom/android/server/utils/AlarmQueue$1;
.super Ljava/lang/Object;
.source "AlarmQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/AlarmQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 94
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmContext(Lcom/android/server/utils/AlarmQueue;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_26

    .line 102
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 107
    :cond_26
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmLock(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v2}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    .line 109
    monitor-exit v0

    return-void

    .line 111
    :cond_3b
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v2}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J

    move-result-wide v3

    .line 112
    iget-object v2, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v2}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmMinTimeBetweenAlarmsMs(Lcom/android/server/utils/AlarmQueue;)J

    move-result-wide v5

    .line 113
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2d .. :try_end_48} :catchall_75

    .line 115
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmExactAlarm(Lcom/android/server/utils/AlarmQueue;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v2, 0x3

    .line 116
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v6}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_74

    :cond_61
    const/4 v2, 0x3

    const-wide/16 v7, 0x2

    .line 119
    div-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v8}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :goto_74
    return-void

    :catchall_75
    move-exception p0

    .line 113
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method
