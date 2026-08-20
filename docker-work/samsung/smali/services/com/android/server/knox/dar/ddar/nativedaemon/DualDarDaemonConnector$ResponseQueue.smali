.class public Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DualDarDaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field public mMaxCount:I

.field public final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 379
    iput p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;)V
    .registers 10

    .line 384
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 386
    iget v4, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_9

    goto :goto_1c

    :cond_1b
    move-object v2, v3

    :goto_1c
    if-nez v2, :cond_8e

    .line 393
    :goto_1e
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    if-lt v1, v2, :cond_84

    const-string v1, "DualDarDaemonConnector"

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more buffered than allowed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    .line 395
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mMaxCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 394
    invoke-static {v1, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    const-string v2, "DualDarDaemonConnector"

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1e

    .line 403
    :cond_84
    new-instance v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, v3}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_8e
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez p1, :cond_9b

    .line 409
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 410
    :cond_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_a2

    .line 412
    :try_start_9c
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_a1} :catch_a1

    :catch_a1
    return-void

    :catchall_a2
    move-exception p0

    .line 410
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, "Pending requests:"

    .line 447
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter p1

    .line 449
    :try_start_8
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Cmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmd:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 452
    :cond_3b
    monitor-exit p1

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public remove(ILjava/lang/String;I)Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    .registers 9

    .line 420
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v0

    .line 421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    .line 422
    iget v4, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    if-ne v4, p1, :cond_9

    goto :goto_1c

    :cond_1b
    move-object v2, v3

    :goto_1c
    if-nez v2, :cond_28

    .line 428
    new-instance v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V

    .line 429
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_28
    iget p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez p1, :cond_35

    .line 434
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue;->mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_4f

    .line 438
    :try_start_36
    iget-object p0, v2, Lcom/android/server/knox/dar/ddar/nativedaemon/DualDarDaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long p1, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/nativedaemon/NativeDaemonEvent;
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_41} :catch_42

    move-object v3, p0

    :catch_42
    if-nez v3, :cond_4e

    const-string p0, "DualDarDaemonConnector"

    const-string p1, "Timeout waiting for response"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 441
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_4e
    return-object v3

    :catchall_4f
    move-exception p0

    .line 435
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method
