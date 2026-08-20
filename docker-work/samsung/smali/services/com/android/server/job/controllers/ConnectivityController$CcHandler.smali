.class public Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CcHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .registers 3

    .line 1285
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 1286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1291
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_22

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    goto :goto_2d

    .line 1300
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_32

    .line 1301
    :try_start_12
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 1302
    :goto_18
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateAllTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;Z)V

    .line 1303
    monitor-exit v1

    goto :goto_2d

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    :try_start_21
    throw p0

    .line 1294
    :cond_22
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_32

    .line 1295
    :try_start_27
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1296
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2f

    .line 1306
    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_32

    return-void

    :catchall_2f
    move-exception p0

    .line 1296
    :try_start_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw p0

    :catchall_32
    move-exception p0

    .line 1306
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_32

    throw p0
.end method
