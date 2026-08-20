.class public Lorg/apache/http/impl/conn/tsccm/WaitingThread;
.super Ljava/lang/Object;
.source "WaitingThread.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private aborted:Z

.field private final cond:Ljava/util/concurrent/locks/Condition;

.field private final pool:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

.field private waiter:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .registers 5
    .param p1, "cond"    # Ljava/util/concurrent/locks/Condition;
    .param p2, "pool"    # Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_a

    .line 84
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    .line 85
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->pool:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    .line 86
    return-void

    .line 81
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Condition must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public await(Ljava/util/Date;)Z
    .registers 6
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_3a

    .line 154
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->aborted:Z

    const-string v1, "Operation interrupted"

    if-nez v0, :cond_34

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "success":Z
    const/4 v2, 0x0

    if-eqz p1, :cond_1c

    .line 162
    :try_start_14
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v3

    move v0, v3

    goto :goto_22

    .line 164
    :cond_1c
    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_22
    iget-boolean v3, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->aborted:Z
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_30

    if-nez v3, :cond_2a

    .line 170
    iput-object v2, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    .line 171
    nop

    .line 172
    return v0

    .line 168
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .end local p1    # "deadline":Ljava/util/Date;
    throw v3
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    .line 170
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lorg/apache/http/impl/conn/tsccm/WaitingThread;
    .restart local p1    # "deadline":Ljava/util/Date;
    :catchall_30
    move-exception v1

    iput-object v2, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    .line 171
    throw v1

    .line 155
    .end local v0    # "success":Z
    :cond_34
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A thread is already waiting on this object.\ncaller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nwaiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 96
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public final getPool()Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;
    .registers 2

    .line 108
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->pool:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    return-object v0
.end method

.method public final getThread()Ljava/lang/Thread;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    return-object v0
.end method

.method public interrupt()V
    .registers 2

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->aborted:Z

    .line 198
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 199
    return-void
.end method

.method public wakeup()V
    .registers 3

    .line 186
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->waiter:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    .line 193
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 194
    return-void

    .line 187
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nobody waiting on this object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
