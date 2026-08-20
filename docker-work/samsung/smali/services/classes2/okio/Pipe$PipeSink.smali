.class public final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PipeSink"
.end annotation


# instance fields
.field public final synthetic this$0:Lokio/Pipe;

.field public final timeout:Lokio/PushableTimeout;


# direct methods
.method public constructor <init>(Lokio/Pipe;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance p1, Lokio/PushableTimeout;

    invoke-direct {p1}, Lokio/PushableTimeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 166
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v1, Lokio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_d

    monitor-exit v0

    return-void

    .line 168
    :cond_d
    # getter for: Lokio/Pipe;->foldedSink:Lokio/Sink;
    invoke-static {v1}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 169
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    # getter for: Lokio/Pipe;->foldedSink:Lokio/Sink;
    invoke-static {v1}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v1

    goto :goto_41

    .line 171
    :cond_1a
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v1, Lokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_36

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2d

    goto :goto_36

    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_36
    :goto_36
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lokio/Pipe;->sinkClosed:Z

    .line 173
    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 175
    :goto_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_5e

    if-eqz v1, :cond_5d

    .line 178
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 180
    :try_start_4d
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    .line 182
    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {p0}, Lokio/PushableTimeout;->pop()V

    goto :goto_5d

    :catchall_56
    move-exception v0

    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {p0}, Lokio/PushableTimeout;->pop()V

    throw v0

    :cond_5d
    :goto_5d
    return-void

    :catchall_5e
    move-exception p0

    .line 175
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 144
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v1, Lokio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_52

    .line 146
    # getter for: Lokio/Pipe;->foldedSink:Lokio/Sink;
    invoke-static {v1}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 147
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    # getter for: Lokio/Pipe;->foldedSink:Lokio/Sink;
    invoke-static {v1}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v1

    goto :goto_35

    .line 148
    :cond_18
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v2, v1, Lokio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_34

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2b

    goto :goto_34

    .line 149
    :cond_2b
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    :goto_34
    const/4 v1, 0x0

    .line 151
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_5a

    if-eqz v1, :cond_51

    .line 154
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 156
    :try_start_41
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4a

    .line 158
    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {p0}, Lokio/PushableTimeout;->pop()V

    goto :goto_51

    :catchall_4a
    move-exception v0

    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {p0}, Lokio/PushableTimeout;->pop()V

    throw v0

    :cond_51
    :goto_51
    return-void

    .line 144
    :cond_52
    :try_start_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5a
    move-exception p0

    .line 151
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 188
    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 108
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_78

    :goto_b
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_5a

    .line 111
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    # getter for: Lokio/Pipe;->foldedSink:Lokio/Sink;
    invoke-static {v3}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 112
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    # getter for: Lokio/Pipe;->foldedSink:Lokio/Sink;
    invoke-static {v1}, Lokio/Pipe;->access$000(Lokio/Pipe;)Lokio/Sink;

    move-result-object v1

    goto :goto_5b

    .line 116
    :cond_20
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v4, v3, Lokio/Pipe;->sourceClosed:Z

    if-nez v4, :cond_51

    .line 118
    iget-wide v4, v3, Lokio/Pipe;->maxBufferSize:J

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-nez v1, :cond_3d

    .line 120
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 124
    :cond_3d
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 125
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-long/2addr p2, v1

    .line 127
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_b

    .line 116
    :cond_51
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "source is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    const/4 v1, 0x0

    .line 129
    :goto_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_80

    if-eqz v1, :cond_77

    .line 132
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokio/PushableTimeout;->push(Lokio/Timeout;)V

    .line 134
    :try_start_67
    invoke-interface {v1, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_70

    .line 136
    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {p0}, Lokio/PushableTimeout;->pop()V

    goto :goto_77

    :catchall_70
    move-exception p1

    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/PushableTimeout;

    invoke-virtual {p0}, Lokio/PushableTimeout;->pop()V

    throw p1

    :cond_77
    :goto_77
    return-void

    .line 108
    :cond_78
    :try_start_78
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_80
    move-exception p0

    .line 129
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_80

    throw p0
.end method
