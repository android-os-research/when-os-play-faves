.class public final Lokio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PipeSource"
.end annotation


# instance fields
.field public final synthetic this$0:Lokio/Pipe;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokio/Pipe;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 212
    :try_start_5
    iget-object p0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/Pipe;->sourceClosed:Z

    .line 213
    iget-object p0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 197
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_3c

    .line 199
    :goto_b
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2b

    .line 200
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-boolean v2, v1, Lokio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_23

    const-wide/16 p0, -0x1

    monitor-exit v0

    return-wide p0

    .line 201
    :cond_23
    iget-object v2, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v1}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 204
    :cond_2b
    iget-object v1, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 205
    iget-object p0, p0, Lokio/Pipe$PipeSource;->this$0:Lokio/Pipe;

    iget-object p0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 206
    monitor-exit v0

    return-wide p1

    .line 197
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_44
    move-exception p0

    .line 207
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 218
    iget-object p0, p0, Lokio/Pipe$PipeSource;->timeout:Lokio/Timeout;

    return-object p0
.end method
