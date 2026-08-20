.class Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;
.super Lcom/samsung/android/cover/ICoverService$Stub;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SemCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverServiceWrapper"
.end annotation


# instance fields
.field final synthetic greylist this$0:Lcom/samsung/android/cover/SemCoverService;


# direct methods
.method private constructor greylist <init>(Lcom/samsung/android/cover/SemCoverService;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor greylist <init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;)V

    return-void
.end method


# virtual methods
.method public greylist onCoverAppCovered(Z)I
    .registers 7
    .param p1, "covered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 135
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v1}, Lcom/samsung/android/cover/SemCoverService;->getCoverHost()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 136
    monitor-exit v0

    return v2

    .line 138
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v1}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    if-eqz p1, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    if-eqz p1, :cond_2b

    .line 140
    const/16 v1, 0x10

    monitor-exit v0

    return v1

    .line 142
    :cond_2b
    const/16 v1, 0x20

    monitor-exit v0

    return v1

    .line 145
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public greylist onSystemReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v1}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public greylist onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmLock(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v1}, Lcom/samsung/android/cover/SemCoverService;->-$$Nest$fgetmHandler(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1
.end method
