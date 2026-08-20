.class public Lcom/android/server/am/ActiveServices$5;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2

    .line 2481
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 2484
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_b

    const-string v0, "ActivityManager"

    const-string v1, "+++ evaluating deferred FGS notifications +++"

    .line 2485
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2488
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2490
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v3, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_21
    if-ltz v3, :cond_75

    .line 2491
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, v5, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2492
    iget-wide v6, v5, Lcom/android/server/am/ServiceRecord;->fgDisplayTime:J

    cmp-long v6, v6, v0

    if-gtz v6, :cond_72

    .line 2493
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v6, :cond_52

    const-string v6, "ActivityManager"

    .line 2494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FGS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " handling deferred notification now"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    :cond_52
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v6, v6, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2501
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_67

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_67

    .line 2502
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 2503
    iput-boolean v4, v5, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    goto :goto_72

    .line 2505
    :cond_67
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_72

    const-string v5, "ActivityManager"

    const-string v6, "  - service no longer running/fg, ignoring"

    .line 2506
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    :goto_72
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 2511
    :cond_75
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_9c

    const-string v0, "ActivityManager"

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done evaluating deferred FGS notifications; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$5;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mPendingFgsNotifications:Ljava/util/ArrayList;

    .line 2513
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " remaining"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2512
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_14 .. :try_end_9d} :catchall_a1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_a1
    move-exception p0

    :try_start_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
