.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$Entry;,
        Lokhttp3/internal/cache/DiskLruCache$Editor;,
        Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field public static final CLEAN:Ljava/lang/String; = "CLEAN"

.field public static final DIRTY:Ljava/lang/String; = "DIRTY"

.field public static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field public static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field public static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field public static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field public static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field public static final READ:Ljava/lang/String; = "READ"

.field public static final REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field public final appVersion:I

.field public final cleanupRunnable:Ljava/lang/Runnable;

.field public closed:Z

.field public final directory:Ljava/io/File;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final fileSystem:Lokhttp3/internal/io/FileSystem;

.field public hasJournalErrors:Z

.field public initialized:Z

.field public final journalFile:Ljava/io/File;

.field public final journalFileBackup:Ljava/io/File;

.field public final journalFileTmp:Ljava/io/File;

.field public journalWriter:Lokio/BufferedSink;

.field public final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public maxSize:J

.field public mostRecentRebuildFailed:Z

.field public mostRecentTrimFailed:Z

.field public nextSequenceNumber:J

.field public redundantOpCount:I

.field public size:J

.field public final valueCount:I


# direct methods
.method public static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 308
    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 87
    const-class v0, Lokhttp3/internal/cache/DiskLruCache;

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .registers 14

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 148
    iput-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 150
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 165
    iput-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 169
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 197
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    .line 198
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 199
    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 200
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 201
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 202
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 203
    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 204
    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 205
    iput-object p7, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_36

    if-lez p3, :cond_2d

    .line 269
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp DiskLruCache"

    .line 270
    invoke-static {v8, v1}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 272
    new-instance v9, Lokhttp3/internal/cache/DiskLruCache;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v9

    .line 265
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final declared-synchronized checkNotClosed()V
    .registers 3

    monitor-enter p0

    .line 644
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    .line 647
    monitor-exit p0

    return-void

    .line 645
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 660
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_b

    goto :goto_3e

    .line 665
    :cond_b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget-object v4, v0, v3

    .line 666
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v4, :cond_2c

    .line 667
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 670
    :cond_2f
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 671
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->close()V

    const/4 v0, 0x0

    .line 672
    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 673
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_42

    .line 674
    monitor-exit p0

    return-void

    .line 661
    :cond_3e
    :goto_3e
    :try_start_3e
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_42

    .line 662
    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_1
    iget-object v0, p1, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 530
    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p1, :cond_f5

    const/4 v1, 0x0

    if-eqz p2, :cond_47

    .line 535
    iget-boolean v2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_47

    move v2, v1

    .line 536
    :goto_f
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_47

    .line 537
    iget-object v3, p1, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2d

    .line 541
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v4, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 542
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_fb

    .line 543
    monitor-exit p0

    return-void

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 538
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 539
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 548
    :cond_47
    :goto_47
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_7f

    .line 549
    iget-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_77

    .line 551
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 552
    iget-object v2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 553
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, p1, v2}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 554
    iget-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v3, p1, v1

    .line 555
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {p1, v2}, Lokhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v5

    .line 556
    iget-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aput-wide v5, p1, v1

    .line 557
    iget-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    goto :goto_7c

    .line 560
    :cond_77
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    :cond_7c
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 564
    :cond_7f
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 565
    iput-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 566
    iget-boolean p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_bb

    .line 567
    iput-boolean v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 568
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 569
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 570
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V

    .line 571
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    if-eqz p2, :cond_d9

    .line 573
    iget-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    iput-wide p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    goto :goto_d9

    .line 576
    :cond_bb
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 578
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    iget-object p2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 579
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 581
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    .line 583
    iget-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_ec

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 584
    :cond_ec
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f3
    .catchall {:try_start_2d .. :try_end_f3} :catchall_fb

    .line 586
    :cond_f3
    monitor-exit p0

    return-void

    .line 531
    :cond_f5
    :try_start_f5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_fb
    .catchall {:try_start_f5 .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 690
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, p0}, Lokhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-wide/16 v0, -0x1

    .line 453
    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 457
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 459
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 460
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    if-eqz v0, :cond_21

    .line 462
    iget-wide v3, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_74

    cmp-long p2, v3, p2

    if-eqz p2, :cond_23

    .line 464
    :cond_21
    monitor-exit p0

    return-object v2

    :cond_23
    if-eqz v0, :cond_2b

    .line 466
    :try_start_25
    iget-object p2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_74

    if-eqz p2, :cond_2b

    .line 467
    monitor-exit p0

    return-object v2

    .line 469
    :cond_2b
    :try_start_2b
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez p2, :cond_6b

    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz p2, :cond_34

    goto :goto_6b

    .line 480
    :cond_34
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 481
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {p2}, Lokio/BufferedSink;->flush()V

    .line 483
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_74

    if-eqz p2, :cond_56

    .line 484
    monitor-exit p0

    return-object v2

    :cond_56
    if-nez v0, :cond_62

    .line 488
    :try_start_58
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 489
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_62
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 492
    iput-object p1, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_74

    .line 493
    monitor-exit p0

    return-object p1

    .line 475
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_74

    .line 476
    monitor-exit p0

    return-object v2

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evictAll()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 698
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 700
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    .line 701
    invoke-virtual {p0, v4}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 703
    :cond_25
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 704
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 651
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 653
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 654
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 655
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    .line 656
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 430
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 432
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 433
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 435
    iget-boolean v2, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_1a

    goto :goto_4e

    .line 437
    :cond_1a
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_50

    if-nez v0, :cond_22

    .line 438
    monitor-exit p0

    return-object v1

    .line 440
    :cond_22
    :try_start_22
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 441
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 442
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 443
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_50

    .line 446
    :cond_4c
    monitor-exit p0

    return-object v0

    .line 435
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v1

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 1

    .line 498
    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 505
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_80

    if-eqz v0, :cond_7

    .line 212
    monitor-exit p0

    return-void

    .line 216
    :cond_7
    :try_start_7
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 218
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 219
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_2c

    .line 221
    :cond_23
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 226
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_80

    const/4 v1, 0x1

    if-eqz v0, :cond_79

    .line 228
    :try_start_37
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 229
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 230
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_41
    .catchall {:try_start_37 .. :try_end_3f} :catchall_80

    .line 231
    monitor-exit p0

    return-void

    :catch_41
    move-exception v0

    .line 233
    :try_start_42
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_42 .. :try_end_6e} :catchall_80

    const/4 v0, 0x0

    .line 240
    :try_start_6f
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_75

    .line 242
    :try_start_72
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    goto :goto_79

    :catchall_75
    move-exception v1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    throw v1

    .line 246
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 248
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_80

    .line 249
    monitor-exit p0

    return-void

    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 640
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public journalRebuildRequired()Z
    .registers 3

    .line 594
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 595
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    if-lt v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final newJournalWriter()Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    .line 313
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$2;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V

    .line 319
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public final processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 367
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 369
    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_32

    .line 370
    :goto_22
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_11

    .line 371
    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_32
    const/4 v2, 0x0

    .line 374
    iput-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 375
    :goto_35
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_4e

    .line 376
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v4, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 377
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v4, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 379
    :cond_4e
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_52
    return-void
.end method

.method public final readJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 276
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 277
    :try_start_e
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 282
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    const-string v7, "1"

    .line 283
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    iget v7, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 284
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget v4, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 285
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, ""

    .line 286
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_aa

    if-eqz v4, :cond_7b

    const/4 v0, 0x0

    .line 294
    :goto_53
    :try_start_53
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_aa

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 300
    :catch_5d
    :try_start_5d
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 303
    invoke-interface {v1}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_70

    .line 304
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_76

    .line 306
    :cond_70
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_aa

    :goto_76
    const/4 p0, 0x0

    .line 308
    invoke-static {p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    return-void

    .line 287
    :cond_7b
    :try_start_7b
    new-instance p0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected journal header: ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_aa
    .catchall {:try_start_7b .. :try_end_aa} :catchall_aa

    :catchall_aa
    move-exception p0

    .line 276
    :try_start_ab
    throw p0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception v0

    if-eqz v1, :cond_b2

    .line 308
    invoke-static {p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b2
    throw v0
.end method

.method public final readJournalLine(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string/jumbo v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_9a

    add-int/lit8 v4, v1, 0x1

    .line 329
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_29

    .line 332
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2d

    const-string v5, "REMOVE"

    .line 333
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 334
    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 338
    :cond_29
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 341
    :cond_2d
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/cache/DiskLruCache$Entry;

    if-nez v5, :cond_41

    .line 343
    new-instance v5, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    const/4 v4, 0x5

    if-eq v0, v3, :cond_63

    if-ne v1, v4, :cond_63

    const-string v6, "CLEAN"

    .line 347
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 p0, 0x1

    add-int/2addr v0, p0

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 349
    iput-boolean p0, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 p0, 0x0

    .line 350
    iput-object p0, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 351
    invoke-virtual {v5, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_84

    :cond_63
    if-ne v0, v3, :cond_77

    if-ne v1, v4, :cond_77

    const-string v4, "DIRTY"

    .line 352
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_77

    .line 353
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    iput-object p1, v5, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_84

    :cond_77
    if-ne v0, v3, :cond_85

    const/4 p0, 0x4

    if-ne v1, p0, :cond_85

    const-string p0, "READ"

    .line 354
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    :goto_84
    return-void

    .line 357
    :cond_85
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 325
    :cond_9a
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized rebuildJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 389
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    if-eqz v0, :cond_8

    .line 390
    invoke-interface {v0}, Lokio/Sink;->close()V

    .line 393
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_bf

    const/4 v1, 0x0

    :try_start_15
    const-string v2, "libcore.io.DiskLruCache"

    .line 394
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    const-string v2, "1"

    .line 395
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 396
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 397
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 398
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 400
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 401
    iget-object v5, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/16 v6, 0x20

    if-eqz v5, :cond_6e

    const-string v5, "DIRTY"

    .line 402
    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 403
    iget-object v4, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 404
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_4a

    :cond_6e
    const-string v5, "CLEAN"

    .line 406
    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 407
    iget-object v5, v4, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 408
    invoke-virtual {v4, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V

    .line 409
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_82
    .catchall {:try_start_15 .. :try_end_82} :catchall_b6

    goto :goto_4a

    .line 412
    :cond_83
    :try_start_83
    invoke-static {v1, v0}, Lokhttp3/internal/cache/DiskLruCache;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 414
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 415
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 417
    :cond_99
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 418
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 420
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 422
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_b4
    .catchall {:try_start_83 .. :try_end_b4} :catchall_bf

    .line 423
    monitor-exit p0

    return-void

    :catchall_b6
    move-exception v1

    .line 393
    :try_start_b7
    throw v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v2

    if-eqz v0, :cond_be

    .line 412
    :try_start_bb
    invoke-static {v1, v0}, Lokhttp3/internal/cache/DiskLruCache;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_be
    throw v2
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_bf

    :catchall_bf
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 605
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 607
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 608
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    const/4 v0, 0x0

    if-nez p1, :cond_17

    .line 610
    monitor-exit p0

    return v0

    .line 611
    :cond_17
    :try_start_17
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 612
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_27

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    .line 613
    :cond_27
    monitor-exit p0

    return p1

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    iget-object v0, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v0, :cond_7

    .line 618
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    :cond_7
    const/4 v0, 0x0

    .line 621
    :goto_8
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_25

    .line 622
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 623
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v3, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    const-wide/16 v1, 0x0

    .line 624
    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 627
    :cond_25
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 628
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v0

    iget-object v2, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 629
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 632
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_58
    return v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 3

    monitor-enter p0

    .line 513
    :try_start_1
    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 514
    iget-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz p1, :cond_e

    .line 515
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 517
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 524
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 525
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 730
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 731
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$3;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 678
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 679
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    goto :goto_0

    :cond_1c
    const/4 v0, 0x0

    .line 681
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    return-void
.end method

.method public final validateKey(Ljava/lang/String;)V
    .registers 4

    .line 707
    sget-object p0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 708
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 709
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
