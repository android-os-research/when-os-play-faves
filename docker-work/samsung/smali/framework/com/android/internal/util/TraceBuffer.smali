.class public Lcom/android/internal/util/TraceBuffer;
.super Ljava/lang/Object;
.source "TraceBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;,
        Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:TP;T:TP;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private blacklist mBufferCapacity:I

.field private final blacklist mBufferLock:Ljava/lang/Object;

.field private blacklist mBufferUsedSize:I

.field private final blacklist mProtoDequeuedCallback:Ljava/util/function/Consumer;

.field private final blacklist mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
            "TP;TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "bufferCapacity"    # I

    .line 103
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    new-instance v0, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>(Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider-IA;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/TraceBuffer;-><init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/util/TraceBuffer$ProtoProvider;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "bufferCapacity"    # I
    .param p2, "protoProvider"    # Lcom/android/internal/util/TraceBuffer$ProtoProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/util/TraceBuffer$ProtoProvider;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p3, "protoDequeuedCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 108
    iput p1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    .line 109
    iput-object p2, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    .line 110
    iput-object p3, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->resetBuffer()V

    .line 112
    return-void
.end method

.method private blacklist discardOldest(I)V
    .registers 7
    .param p1, "protoLength"    # I

    .line 178
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getAvailableSpace()I

    move-result v0

    int-to-long v0, v0

    .line 180
    .local v0, "availableSpace":J
    :goto_5
    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-gez v2, :cond_32

    .line 182
    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "item":Ljava/lang/Object;, "TP;"
    if-eqz v2, :cond_2a

    .line 186
    iget v3, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    iget-object v4, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    invoke-interface {v4, v2}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->getItemSize(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/util/TraceBuffer;->getAvailableSpace()I

    move-result v3

    int-to-long v0, v3

    .line 189
    iget-object v3, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    if-eqz v3, :cond_29

    .line 190
    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 192
    .end local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_29
    goto :goto_5

    .line 184
    .restart local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_2a
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "No element to discard from buffer"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    .end local v2    # "item":Ljava/lang/Object;, "TP;"
    :cond_32
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p1, "proto":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->getItemSize(Ljava/lang/Object;)I

    move-result v0

    .line 138
    .local v0, "protoLength":I
    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    if-gt v0, v1, :cond_24

    .line 142
    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_d
    invoke-direct {p0, v0}, Lcom/android/internal/util/TraceBuffer;->discardOldest(I)V

    .line 144
    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 145
    iget v2, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    .line 146
    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mBufferLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_21

    throw v2

    .line 139
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trace object too large for the buffer. Buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Object size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist contains([B)Z
    .registers 4
    .param p1, "other"    # [B

    .line 152
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/TraceBuffer$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/TraceBuffer;[B)V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 152
    return v0
.end method

.method public blacklist getAvailableSpace()I
    .registers 3

    .line 115
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    iget v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getBufferSize()I
    .registers 2

    .line 212
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    return v0
.end method

.method public blacklist getStatus()Ljava/lang/String;
    .registers 4

    .line 219
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes\nBuffer usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes\nElements in the buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 222
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 220
    return-object v1

    .line 223
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method synthetic blacklist lambda$contains$0$com-android-internal-util-TraceBuffer([BLjava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # [B
    .param p2, "p"    # Ljava/lang/Object;

    .line 153
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    invoke-interface {v0, p2}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->getBytes(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public blacklist resetBuffer()V
    .registers 5

    .line 199
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    if-eqz v1, :cond_1d

    .line 201
    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 202
    .local v2, "item":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/internal/util/TraceBuffer;->mProtoDequeuedCallback:Ljava/util/function/Consumer;

    invoke-interface {v3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 203
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_d

    .line 205
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 206
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferUsedSize:I

    .line 207
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public blacklist setCapacity(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 126
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iput p1, p0, Lcom/android/internal/util/TraceBuffer;->mBufferCapacity:I

    .line 127
    return-void
.end method

.method public blacklist size()I
    .registers 2

    .line 122
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public blacklist writeTraceToFile(Ljava/io/File;Ljava/lang/Object;)V
    .registers 7
    .param p1, "traceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .local p2, "encapsulatingProto":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lcom/android/internal/util/TraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 163
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_29

    .line 164
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 165
    iget-object v2, p0, Lcom/android/internal/util/TraceBuffer;->mProtoProvider:Lcom/android/internal/util/TraceBuffer$ProtoProvider;

    iget-object v3, p0, Lcom/android/internal/util/TraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2, p2, v3, v1}, Lcom/android/internal/util/TraceBuffer$ProtoProvider;->write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1f

    .line 167
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 168
    .end local v1    # "os":Ljava/io/OutputStream;
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_29

    .line 169
    return-void

    .line 163
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v3

    :try_start_25
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .end local p1    # "traceFile":Ljava/io/File;
    .end local p2    # "encapsulatingProto":Ljava/lang/Object;, "TS;"
    :goto_28
    throw v2

    .line 168
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/android/internal/util/TraceBuffer;, "Lcom/android/internal/util/TraceBuffer<TP;TS;TT;>;"
    .restart local p1    # "traceFile":Ljava/io/File;
    .restart local p2    # "encapsulatingProto":Ljava/lang/Object;, "TS;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw v1
.end method
