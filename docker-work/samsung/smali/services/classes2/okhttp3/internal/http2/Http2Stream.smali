.class public final Lokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lokhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public bytesLeftInWriteWindow:J

.field public final connection:Lokhttp3/internal/http2/Http2Connection;

.field public errorCode:Lokhttp3/internal/http2/ErrorCode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public errorException:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public hasResponseHeaders:Z

.field public final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field public final id:I

.field public final readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field public final sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

.field public final source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

.field public unacknowledgedBytesRead:J

.field public final writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V
    .registers 9
    .param p5    # Lokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    .line 69
    new-instance v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 70
    new-instance v1, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    if-eqz p2, :cond_6d

    .line 86
    iput p1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    .line 87
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    .line 88
    iget-object p1, p2, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 89
    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 90
    new-instance p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object p2, p2, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2}, Lokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lokhttp3/internal/http2/Http2Stream;J)V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 91
    new-instance p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {p2, p0}, Lokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lokhttp3/internal/http2/Http2Stream;)V

    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 92
    iput-boolean p4, p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 93
    iput-boolean p3, p2, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz p5, :cond_49

    .line 95
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_49
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p1

    if-eqz p1, :cond_5a

    if-nez p5, :cond_52

    goto :goto_5a

    .line 99
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_5a
    :goto_5a
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result p0

    if-nez p0, :cond_6c

    if-eqz p5, :cond_63

    goto :goto_6c

    .line 101
    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "remotely-initiated streams should have headers"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    :goto_6c
    return-void

    .line 84
    :cond_6d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "connection == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addBytesToWriteWindow(J)V
    .registers 5

    .line 640
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public cancelStreamIfNecessary()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    monitor-enter p0

    .line 517
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v1, :cond_17

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v1, :cond_15

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 518
    :goto_18
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 519
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_30

    if-eqz v0, :cond_26

    .line 525
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_2f

    :cond_26
    if-nez v1, :cond_2f

    .line 527
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_2f
    :goto_2f
    return-void

    :catchall_30
    move-exception v0

    .line 519
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public checkOutNotClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v1, :cond_25

    .line 647
    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1c

    .line 649
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1b

    .line 650
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_13

    goto :goto_1a

    :cond_13
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, p0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_1a
    throw v0

    :cond_1b
    return-void

    .line 648
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 646
    :cond_25
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .registers 3
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 265
    :cond_7
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p2, p0, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public final closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .registers 5
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 284
    monitor-exit p0

    return v1

    .line 286
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_16

    .line 287
    monitor-exit p0

    return v1

    .line 289
    :cond_16
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 290
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_27

    .line 293
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, p0}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p1

    .line 292
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public closeLater(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/http2/Http2Stream;->closeInternal(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 276
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, p0, p1}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public enqueueTrailers(Lokhttp3/Headers;)V
    .registers 3

    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1d

    .line 223
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    if-eqz v0, :cond_14

    .line 224
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    # setter for: Lokhttp3/internal/http2/Http2Stream$FramingSink;->trailers:Lokhttp3/Headers;
    invoke-static {v0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSink;->access$302(Lokhttp3/internal/http2/Http2Stream$FramingSink;Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 225
    monitor-exit p0

    return-void

    .line 223
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "trailers.size() == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already finished"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_25
    move-exception p1

    .line 225
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw p1
.end method

.method public getConnection()Lokhttp3/internal/http2/Http2Connection;
    .registers 1

    .line 139
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    return-object p0
.end method

.method public declared-synchronized getErrorCode()Lokhttp3/internal/http2/ErrorCode;
    .registers 2

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .registers 1

    .line 106
    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    return p0
.end method

.method public getSink()Lokio/Sink;
    .registers 3

    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_15

    .line 250
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_15
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 253
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    return-object p0

    :catchall_19
    move-exception v0

    .line 252
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getSource()Lokio/Source;
    .registers 1

    .line 238
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    return-object p0
.end method

.method public isLocallyInitiated()Z
    .registers 4

    .line 134
    iget v0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 135
    :goto_a
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean p0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-ne p0, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 4

    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 122
    monitor-exit p0

    return v1

    .line 124
    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v2, :cond_12

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_22

    :cond_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v2, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v2, :cond_1c

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_22

    :cond_1c
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_22

    .line 127
    monitor-exit p0

    return v1

    :cond_22
    const/4 v0, 0x1

    .line 129
    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lokio/Timeout;
    .registers 1

    .line 229
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object p0
.end method

.method public receiveData(Lokio/BufferedSource;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lokio/BufferedSource;J)V

    return-void
.end method

.method public receiveHeaders(Lokhttp3/Headers;Z)V
    .registers 5

    .line 309
    monitor-enter p0

    .line 310
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    if-nez p2, :cond_9

    goto :goto_f

    .line 314
    :cond_9
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    # setter for: Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;
    invoke-static {v0, p1}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$202(Lokhttp3/internal/http2/Http2Stream$FramingSource;Lokhttp3/Headers;)Lokhttp3/Headers;

    goto :goto_16

    .line 311
    :cond_f
    :goto_f
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 312
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :goto_16
    if-eqz p2, :cond_1c

    .line 317
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iput-boolean v1, p1, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 319
    :cond_1c
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result p1

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2e

    if-nez p1, :cond_2d

    .line 323
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget p0, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {p1, p0}, Lokhttp3/internal/http2/Http2Connection;->removeStream(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_2d
    return-void

    :catchall_2e
    move-exception p1

    .line 321
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public declared-synchronized receiveRstStream(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_a

    .line 329
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 332
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeHeaders()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_41

    .line 150
    :goto_6
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_16

    .line 151
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_3a

    goto :goto_6

    .line 154
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 157
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Headers;
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_41

    monitor-exit p0

    return-object v0

    .line 159
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_32

    goto :goto_39

    :cond_32
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_39
    throw v0

    :catchall_3a
    move-exception v0

    .line 154
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->readTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trailers()Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_12

    .line 168
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_a

    goto :goto_11

    :cond_a
    new-instance v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lokhttp3/internal/http2/ErrorCode;)V

    :goto_11
    throw v0

    .line 170
    :cond_12
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v1, v0, Lokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v1, :cond_41

    # getter for: Lokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lokio/Buffer;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$000(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    # getter for: Lokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lokio/Buffer;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$100(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 173
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    # getter for: Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->source:Lokhttp3/internal/http2/Http2Stream$FramingSource;

    # getter for: Lokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lokhttp3/Headers;
    invoke-static {v0}, Lokhttp3/internal/http2/Http2Stream$FramingSource;->access$200(Lokhttp3/internal/http2/Http2Stream$FramingSource;)Lokhttp3/Headers;

    move-result-object v0

    goto :goto_3f

    :cond_3d
    sget-object v0, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_4a

    :goto_3f
    monitor-exit p0

    return-object v0

    .line 171
    :cond_41
    :try_start_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "too early; can\'t read the trailers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForIo()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 660
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    .line 662
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 663
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public writeHeaders(Ljava/util/List;ZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_36

    .line 198
    monitor-enter p0

    const/4 v0, 0x1

    .line 199
    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-eqz p2, :cond_c

    .line 201
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->sink:Lokhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean v0, v1, Lokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 203
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_33

    if-nez p3, :cond_24

    .line 208
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    .line 209
    :try_start_12
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v2, p3, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-nez p3, :cond_1e

    move p3, v0

    goto :goto_1f

    :cond_1e
    const/4 p3, 0x0

    .line 210
    :goto_1f
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception p0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_21

    throw p0

    .line 213
    :cond_24
    :goto_24
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p2, p1}, Lokhttp3/internal/http2/Http2Connection;->writeHeaders(IZLjava/util/List;)V

    if-eqz p3, :cond_32

    .line 216
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->connection:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->flush()V

    :cond_32
    return-void

    :catchall_33
    move-exception p1

    .line 203
    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1

    .line 196
    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "headers == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTimeout()Lokio/Timeout;
    .registers 1

    .line 233
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Stream;->writeTimeout:Lokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object p0
.end method
