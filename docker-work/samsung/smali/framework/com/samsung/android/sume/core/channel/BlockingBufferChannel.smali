.class public Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;
.super Ljava/lang/Object;
.source "BlockingBufferChannel.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist close()V
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isClosedForReceive()Z
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isClosedForSend()Z
    .registers 3

    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5

    .line 31
    const-string/jumbo v0, "receive"

    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_b} :catch_13
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    .line 36
    sget-object v2, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v1

    .line 36
    :catchall_11
    move-exception v1

    goto :goto_1e

    .line 32
    :catch_13
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_14
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    .line 34
    const/4 v2, 0x0

    .line 36
    sget-object v3, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-object v2

    .line 36
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1e
    sget-object v2, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    throw v1
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 5
    .param p1, "data"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 21
    :try_start_0
    sget-object v0, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 25
    goto :goto_23

    .line 23
    :catch_1f
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 26
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_23
    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .registers 2

    .line 13
    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/BlockingBufferChannel;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
