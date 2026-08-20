.class public Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;
.super Ljava/lang/Object;
.source "WaitingThreadAborter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private aborted:Z

.field private waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    .line 51
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    if-eqz v0, :cond_a

    .line 52
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    .line 54
    :cond_a
    return-void
.end method

.method public setWaitingThread(Lorg/apache/http/impl/conn/tsccm/WaitingThread;)V
    .registers 3
    .param p1, "waitingThread"    # Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    .line 63
    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->waitingThread:Lorg/apache/http/impl/conn/tsccm/WaitingThread;

    .line 64
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/tsccm/WaitingThreadAborter;->aborted:Z

    if-eqz v0, :cond_9

    .line 65
    invoke-virtual {p1}, Lorg/apache/http/impl/conn/tsccm/WaitingThread;->interrupt()V

    .line 66
    :cond_9
    return-void
.end method
