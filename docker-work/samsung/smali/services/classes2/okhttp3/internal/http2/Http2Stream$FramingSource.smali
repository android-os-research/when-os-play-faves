.class public final Lokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramingSource"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public closed:Z

.field public finished:Z

.field public final maxByteCount:J

.field public final readBuffer:Lokio/Buffer;

.field public final receiveBuffer:Lokio/Buffer;

.field public final synthetic this$0:Lokhttp3/internal/http2/Http2Stream;

.field public trailers:Lokhttp3/Headers;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/Http2Stream;J)V
    .registers 4

    .line 364
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    .line 344
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    .line 365
    iput-wide p2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    return-void
.end method

.method public static synthetic access$000(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;
    .registers 1

    .line 339
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    return-object p0
.end method

.method public static synthetic access$100(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;
    .registers 1

    .line 339
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    return-object p0
.end method

.method public static synthetic access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;
    .registers 1

    .line 339
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object p0
.end method

.method public static synthetic access$202(Lokhttp3/internal/http2/Http2Stream$FramingSource;Lokhttp3/Headers;)Lokhttp3/Headers;
    .registers 2

    .line 339
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;

    return-object p1
.end method


# virtual methods
.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    const/4 v1, 0x1

    .line 500
    :try_start_4
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 501
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 502
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 503
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_20

    .line 506
    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 508
    :cond_20
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    return-void

    :catchall_26
    move-exception p0

    .line 504
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a9

    :goto_6
    const/4 v2, 0x0

    .line 377
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v3

    .line 378
    :try_start_a
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v4}, Lokio/AsyncTimeout;->enter()V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_a6

    .line 380
    :try_start_11
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, v4, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v5, :cond_25

    .line 382
    iget-object v2, v4, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v2, :cond_1c

    goto :goto_25

    .line 384
    :cond_1c
    new-instance v2, Lokhttp3/internal/http2/StreamResetException;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v2, v4}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    .line 387
    :cond_25
    :goto_25
    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v4, :cond_94

    .line 390
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v4, v4, v0

    const-wide/16 v5, -0x1

    if-lez v4, :cond_6b

    .line 392
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v4, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 393
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-wide v7, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v7, p1

    iput-wide v7, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    if-nez v2, :cond_80

    .line 395
    iget-object p3, p3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 397
    invoke-virtual {p3}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v9, p3

    cmp-long p3, v7, v9

    if-ltz p3, :cond_80

    .line 400
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v4, p3, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v7, p3, Lokhttp3/internal/http2/Http2Stream;->id:I

    iget-wide v8, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v4, v7, v8, v9}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 401
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iput-wide v0, p3, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    goto :goto_80

    .line 403
    :cond_6b
    iget-boolean v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v4, :cond_7f

    if-nez v2, :cond_7f

    .line 405
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_76
    .catchall {:try_start_11 .. :try_end_76} :catchall_9d

    .line 409
    :try_start_76
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object v2, v2, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v3

    goto :goto_6

    :cond_7f
    move-wide p1, v5

    :cond_80
    :goto_80
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object p3, p3, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {p3}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 411
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_76 .. :try_end_88} :catchall_a6

    cmp-long p3, p1, v5

    if-eqz p3, :cond_90

    .line 417
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    return-wide p1

    :cond_90
    if-nez v2, :cond_93

    return-wide v5

    .line 426
    :cond_93
    throw v2

    .line 388
    :cond_94
    :try_start_94
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    .line 409
    :try_start_9e
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw p1

    :catchall_a6
    move-exception p0

    .line 411
    monitor-exit v3
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_a6

    throw p0

    .line 369
    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public receive(Lokio/BufferedSource;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_81

    .line 448
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 449
    :try_start_9
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 450
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1c

    move v4, v5

    goto :goto_1d

    :cond_1c
    move v4, v6

    .line 451
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_7e

    if-eqz v4, :cond_2b

    .line 455
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 456
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    sget-object p1, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Stream;->closeLater(Lokhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_2b
    if-eqz v3, :cond_31

    .line 462
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 467
    :cond_31
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_78

    sub-long/2addr p2, v2

    .line 475
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    monitor-enter v2

    .line 476
    :try_start_41
    iget-boolean v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v3, :cond_51

    .line 477
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 478
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->clear()V

    goto :goto_6c

    .line 480
    :cond_51
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v5, v6

    .line 481
    :goto_5d
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;

    invoke-virtual {v3, v4}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v5, :cond_6b

    .line 483
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_6b
    move-wide v3, v0

    .line 486
    :goto_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_75

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    .line 488
    invoke-virtual {p0, v3, v4}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    goto :goto_0

    :catchall_75
    move-exception p0

    .line 486
    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0

    .line 468
    :cond_78
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :catchall_7e
    move-exception p0

    .line 451
    :try_start_7f
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p0

    :cond_81
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 494
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object p0
.end method

.method public final updateConnectionFlowControl(J)V
    .registers 3

    .line 435
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lokhttp3/internal/http2/Http2Stream;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    return-void
.end method
