.class public Lcom/samsung/android/sume/core/channel/VoidBufferChannel;
.super Ljava/lang/Object;
.source "VoidBufferChannel.java"

# interfaces
.implements Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cancel()V
    .registers 1

    .line 26
    return-void
.end method

.method public blacklist close()V
    .registers 1

    .line 21
    return-void
.end method

.method public blacklist isClosedForReceive()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isClosedForSend()Z
    .registers 2

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist receive()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/channel/VoidBufferChannel;->receive()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .registers 2
    .param p1, "data"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 11
    return-void
.end method

.method public bridge synthetic blacklist send(Ljava/lang/Object;)V
    .registers 2

    .line 8
    check-cast p1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/channel/VoidBufferChannel;->send(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    return-void
.end method
