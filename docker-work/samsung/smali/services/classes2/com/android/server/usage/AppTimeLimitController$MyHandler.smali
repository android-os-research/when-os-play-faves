.class public Lcom/android/server/usage/AppTimeLimitController$MyHandler;
.super Landroid/os/Handler;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_TIMEOUT:I = 0x1

.field public static final MSG_INFORM_LIMIT_REACHED_LISTENER:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V
    .registers 3

    .line 578
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 579
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 584
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 596
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_34

    .line 591
    :cond_c
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {p0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmLock(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 592
    :try_start_13
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->onLimitReached()V

    .line 593
    monitor-exit v0

    goto :goto_34

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw p0

    .line 586
    :cond_1f
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController;->-$$Nest$fgetmLock(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->checkTimeout(J)V

    .line 588
    monitor-exit v0

    :goto_34
    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw p0
.end method
