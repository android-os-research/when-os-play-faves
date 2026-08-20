.class public final Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/DDLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountingOutputStream"
.end annotation


# instance fields
.field public count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 372
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized beforeWrite(J)V
    .registers 5

    monitor-enter p0

    .line 376
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 377
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 395
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 396
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByteCount()J
    .registers 3

    monitor-enter p0

    .line 381
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 390
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 391
    iget-wide v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 392
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 386
    iget-wide p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$CountingOutputStream;->count:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 387
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
