.class public abstract Lcom/android/server/ssrm/common/AbstractEG;
.super Ljava/lang/Object;
.source "AbstractEG.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/android/server/ssrm/common/IEvent;",
        "R::",
        "Lcom/android/server/ssrm/common/IEReceiver<",
        "TE;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/server/ssrm/common/IEGenerator;"
    }
.end annotation


# instance fields
.field private event:Lcom/android/server/ssrm/common/IEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field protected listeners:Lcom/android/server/ssrm/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/ConcurrentList<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/server/ssrm/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->listeners:Lcom/android/server/ssrm/ConcurrentList;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->event:Lcom/android/server/ssrm/common/IEvent;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->lock:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/android/server/ssrm/common/AbstractEG;->init()V

    .line 34
    return-void
.end method


# virtual methods
.method public addReceiver(Lcom/android/server/ssrm/common/IEReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    .local p1, "receiver":Lcom/android/server/ssrm/common/IEReceiver;, "TR;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->listeners:Lcom/android/server/ssrm/ConcurrentList;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/ConcurrentList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public abstract deregister(Landroid/content/Context;)V
.end method

.method public abstract getGeneratorIdentifier()Ljava/lang/String;
.end method

.method public getLastEvent()Lcom/android/server/ssrm/common/IEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/common/AbstractEG;->event:Lcom/android/server/ssrm/common/IEvent;

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getReceivers()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->listeners:Lcom/android/server/ssrm/ConcurrentList;

    invoke-virtual {v0}, Lcom/android/server/ssrm/ConcurrentList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 1

    .line 30
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    return-void
.end method

.method public notifyReceiver(Lcom/android/server/ssrm/common/IEReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    .local p1, "receiver":Lcom/android/server/ssrm/common/IEReceiver;, "TR;"
    invoke-virtual {p0}, Lcom/android/server/ssrm/common/AbstractEG;->getLastEvent()Lcom/android/server/ssrm/common/IEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/ssrm/common/IEReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V

    .line 58
    return-void
.end method

.method public notifyReceivers()V
    .registers 3

    .line 61
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->listeners:Lcom/android/server/ssrm/ConcurrentList;

    invoke-virtual {v0}, Lcom/android/server/ssrm/ConcurrentList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TR;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/common/IEReceiver;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/common/AbstractEG;->notifyReceiver(Lcom/android/server/ssrm/common/IEReceiver;)V

    goto :goto_6

    .line 65
    :cond_16
    return-void
.end method

.method public abstract register(Landroid/content/Context;)V
.end method

.method public removeReceiver(Lcom/android/server/ssrm/common/IEReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    .local p1, "receiver":Lcom/android/server/ssrm/common/IEReceiver;, "TR;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->listeners:Lcom/android/server/ssrm/ConcurrentList;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/ConcurrentList;->remove(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public setLastEvent(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/android/server/ssrm/common/AbstractEG;, "Lcom/android/server/ssrm/common/AbstractEG<TE;TR;>;"
    .local p1, "event":Lcom/android/server/ssrm/common/IEvent;, "TE;"
    iget-object v0, p0, Lcom/android/server/ssrm/common/AbstractEG;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_3
    iput-object p1, p0, Lcom/android/server/ssrm/common/AbstractEG;->event:Lcom/android/server/ssrm/common/IEvent;

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 39
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
