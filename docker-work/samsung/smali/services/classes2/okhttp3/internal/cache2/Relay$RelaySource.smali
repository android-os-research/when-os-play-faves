.class public Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RelaySource"
.end annotation


# instance fields
.field public fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field public sourcePos:J

.field public final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field public final timeout:Lokio/Timeout;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .registers 3

    .line 224
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object p1, p1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 348
    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 349
    :try_start_b
    iget-object p0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v2, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v2, :cond_1a

    .line 351
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 352
    iput-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v2

    .line 354
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_21

    if-eqz v0, :cond_20

    .line 357
    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_20
    return-void

    :catchall_21
    move-exception p0

    .line 354
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 252
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_11a

    .line 258
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 260
    :goto_b
    :try_start_b
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    cmp-long v5, v5, v7

    const/4 v6, 0x2

    const-wide/16 v9, -0x1

    if-nez v5, :cond_31

    .line 262
    iget-boolean v5, v0, Lokhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v5, :cond_1e

    monitor-exit v4

    return-wide v9

    .line 265
    :cond_1e
    iget-object v5, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v5, :cond_28

    .line 266
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    invoke-virtual {v5, v0}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 271
    :cond_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 273
    monitor-exit v4

    goto :goto_41

    .line 276
    :cond_31
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v11

    sub-long v11, v7, v11

    .line 279
    iget-wide v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v13, v11

    if-gez v0, :cond_fc

    .line 281
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_117

    move v0, v6

    :goto_41
    const-wide/16 v4, 0x20

    if-ne v0, v6, :cond_5e

    .line 293
    iget-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 294
    iget-object v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-wide v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v10, v6, v4

    move-object/from16 v12, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    iget-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v2

    :cond_5e
    const/4 v6, 0x0

    .line 302
    :try_start_5f
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v11, v0, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iget-object v12, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-wide v13, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v11, v12, v13, v14}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-nez v0, :cond_83

    .line 306
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_ec

    .line 332
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 333
    :try_start_77
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v6, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v2

    return-wide v9

    :catchall_80
    move-exception v0

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_77 .. :try_end_82} :catchall_80

    throw v0

    .line 311
    :cond_83
    :try_start_83
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 312
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v13, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v15, 0x0

    move-object/from16 v14, p1

    move-wide/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 313
    iget-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    iget-object v15, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    add-long v16, v7, v4

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 317
    invoke-virtual {v0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v18

    move-wide/from16 v19, v11

    .line 316
    invoke-virtual/range {v15 .. v20}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 319
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4
    :try_end_ad
    .catchall {:try_start_83 .. :try_end_ad} :catchall_ec

    .line 321
    :try_start_ad
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v5, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v5, v0, v11, v12}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v9, v0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_d4

    .line 323
    iget-object v0, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v9, v5, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 327
    :cond_d4
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v7, v5, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v7, v11

    iput-wide v7, v5, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    monitor-exit v4
    :try_end_dc
    .catchall {:try_start_ad .. :try_end_dc} :catchall_e9

    .line 332
    monitor-enter v5

    .line 333
    :try_start_dd
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v6, v0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5

    return-wide v2

    :catchall_e6
    move-exception v0

    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_e6

    throw v0

    :catchall_e9
    move-exception v0

    .line 328
    :try_start_ea
    monitor-exit v4
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    :try_start_eb
    throw v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v0

    .line 332
    iget-object v2, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 333
    :try_start_f0
    iget-object v1, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v6, v1, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v2
    :try_end_f8
    .catchall {:try_start_f0 .. :try_end_f8} :catchall_f9

    throw v0

    :catchall_f9
    move-exception v0

    :try_start_fa
    monitor-exit v2
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    throw v0

    :cond_fc
    sub-long/2addr v7, v13

    .line 285
    :try_start_fd
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 286
    iget-object v0, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v13, v0, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v15, v5, v11

    move-object/from16 v14, p1

    move-wide/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 287
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    monitor-exit v4

    return-wide v2

    :catchall_117
    move-exception v0

    .line 289
    monitor-exit v4
    :try_end_119
    .catchall {:try_start_fd .. :try_end_119} :catchall_117

    throw v0

    .line 252
    :cond_11a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 340
    iget-object p0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object p0
.end method
