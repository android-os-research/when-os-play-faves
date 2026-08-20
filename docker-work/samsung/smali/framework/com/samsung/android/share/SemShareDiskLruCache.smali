.class public final Lcom/samsung/android/share/SemShareDiskLruCache;
.super Ljava/lang/Object;
.source "SemShareDiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SemShareDiskLruCache$Entry;,
        Lcom/samsung/android/share/SemShareDiskLruCache$Editor;,
        Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field private static final blacklist ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final blacklist CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final blacklist DIRTY:Ljava/lang/String; = "DIRTY"

.field public static final blacklist IO_BUFFER_SIZE:I = 0x2000

.field private static final blacklist JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final blacklist JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field private static final blacklist MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final blacklist READ:Ljava/lang/String; = "READ"

.field private static final blacklist REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final blacklist UTF_8:Ljava/nio/charset/Charset;

.field private static final blacklist VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final blacklist appVersion:I

.field private final blacklist cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist directory:Ljava/io/File;

.field private final blacklist executorService:Ljava/util/concurrent/ExecutorService;

.field private final blacklist journalFile:Ljava/io/File;

.field private final blacklist journalFileTmp:Ljava/io/File;

.field private blacklist journalWriter:Ljava/io/Writer;

.field private final blacklist lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/share/SemShareDiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist maxSize:J

.field private blacklist nextSequenceNumber:J

.field private blacklist redundantOpCount:I

.field private blacklist size:J

.field private final blacklist valueCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdirectory(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetjournalWriter(Lcom/samsung/android/share/SemShareDiskLruCache;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalueCount(Lcom/samsung/android/share/SemShareDiskLruCache;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputredundantOpCount(Lcom/samsung/android/share/SemShareDiskLruCache;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompleteEdit(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareDiskLruCache;->completeEdit(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$medit(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/share/SemShareDiskLruCache;->edit(Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mjournalRebuildRequired(Lcom/samsung/android/share/SemShareDiskLruCache;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrebuildJournal(Lcom/samsung/android/share/SemShareDiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtrimToSize(Lcom/samsung/android/share/SemShareDiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->trimToSize()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUTF_8()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Lcom/samsung/android/share/SemShareDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sminputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 112
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/share/SemShareDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/io/File;IIJ)V
    .registers 21
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 290
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 163
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 172
    iput-wide v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->nextSequenceNumber:J

    .line 271
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 273
    new-instance v2, Lcom/samsung/android/share/SemShareDiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/share/SemShareDiskLruCache$1;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;)V

    iput-object v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 291
    iput-object v1, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    .line 292
    move/from16 v2, p2

    iput v2, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->appVersion:I

    .line 293
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    .line 294
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 295
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    .line 296
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    .line 297
    return-void
.end method

.method private blacklist checkNotClosed()V
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_5

    .line 672
    return-void

    .line 670
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 241
    if-eqz p0, :cond_a

    .line 243
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 247
    goto :goto_a

    .line 246
    :catch_6
    move-exception v0

    goto :goto_a

    .line 244
    :catch_8
    move-exception v0

    .line 245
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 249
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_a
    :goto_a
    return-void
.end method

.method private declared-synchronized blacklist completeEdit(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;Z)V
    .registers 13
    .param p1, "editor"    # Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 568
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->-$$Nest$fgetentry(Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    move-result-object v0

    .line 569
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_101

    .line 574
    if-eqz p2, :cond_41

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 575
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_41

    .line 576
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 577
    :cond_25
    invoke-virtual {p1}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->abort()V

    .line 578
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit didn\'t create file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 583
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_41
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_42
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_76

    .line 584
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 585
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_70

    .line 586
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 587
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 588
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 589
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    .line 590
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 591
    .local v6, "newLength":J
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 592
    iget-wide v8, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 593
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_73

    .line 595
    :cond_70
    invoke-static {v2}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 583
    .end local v2    # "dirty":Ljava/io/File;
    :cond_73
    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 599
    .end local v1    # "i":I
    :cond_76
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    .line 600
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 601
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    if-eqz v1, :cond_c1

    .line 602
    invoke-static {v0, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Z)V

    .line 603
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 604
    if-eqz p2, :cond_ea

    .line 605
    iget-wide v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;J)V

    goto :goto_ea

    .line 608
    :cond_c1
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 612
    :cond_ea
    :goto_ea
    iget-wide v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    iget-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_f8

    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 613
    :cond_f8
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_ff
    .catchall {:try_start_1 .. :try_end_ff} :catchall_107

    .line 615
    :cond_ff
    monitor-exit p0

    return-void

    .line 570
    :cond_101
    :try_start_101
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_107
    .catchall {:try_start_101 .. :try_end_107} :catchall_107

    .line 567
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local p1    # "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_107
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static blacklist copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 177
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    .line 178
    .local v0, "originalLength":I
    if-gt p1, p2, :cond_29

    .line 181
    if-ltz p1, :cond_23

    if-gt p1, v0, :cond_23

    .line 184
    sub-int v1, p2, p1

    .line 185
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 186
    .local v2, "copyLength":I
    nop

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 188
    .local v3, "result":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    return-object v3

    .line 182
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_23
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 179
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static blacklist deleteContents(Ljava/io/File;)V
    .registers 6
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 257
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_38

    .line 260
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 261
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 262
    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 264
    :cond_15
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 260
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 265
    .restart local v3    # "file":Ljava/io/File;
    :cond_1e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    .end local v3    # "file":Ljava/io/File;
    :cond_37
    return-void

    .line 258
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist deleteIfExists(Ljava/io/File;)V
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    .line 466
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 468
    :cond_13
    :goto_13
    return-void
.end method

.method private declared-synchronized blacklist edit(Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 521
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 523
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_65

    cmp-long v1, v3, p2

    if-eqz v1, :cond_22

    .line 525
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_20
    monitor-exit p0

    return-object v2

    .line 527
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_22
    if-nez v0, :cond_30

    .line 528
    :try_start_24
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry-IA;)V

    move-object v0, v1

    .line 529
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 530
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_30
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_65

    if-eqz v1, :cond_38

    .line 531
    monitor-exit p0

    return-object v2

    .line 534
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_38
    :goto_38
    :try_start_38
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor-IA;)V

    .line 535
    .local v1, "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 538
    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_65

    .line 540
    monitor-exit p0

    return-object v1

    .line 519
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local v1    # "editor":Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static blacklist inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/samsung/android/share/SemShareDiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist journalRebuildRequired()Z
    .registers 4

    .line 622
    const/16 v0, 0x7d0

    .line 623
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 624
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 623
    :goto_13
    return v1
.end method

.method public static blacklist open(Ljava/io/File;IIJ)Lcom/samsung/android/share/SemShareDiskLruCache;
    .registers 13
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_51

    .line 314
    if-lez p2, :cond_48

    .line 319
    new-instance v0, Lcom/samsung/android/share/SemShareDiskLruCache;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/share/SemShareDiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 320
    .local v0, "cache":Lcom/samsung/android/share/SemShareDiskLruCache;
    iget-object v1, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 322
    :try_start_1a
    invoke-direct {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->readJournal()V

    .line 323
    invoke-direct {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->processJournal()V

    .line 324
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_31} :catch_32

    .line 326
    return-object v0

    .line 327
    :catch_32
    move-exception v1

    .line 330
    .local v1, "journalIsCorrupt":Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->delete()V

    .line 335
    .end local v1    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_36
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 336
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache;

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/share/SemShareDiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v0, v1

    .line 337
    invoke-direct {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->rebuildJournal()V

    .line 338
    return-object v0

    .line 315
    .end local v0    # "cache":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist processJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 409
    .local v1, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_35

    .line 410
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_22
    iget v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_34

    .line 411
    iget-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 410
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .end local v2    # "t":I
    :cond_34
    goto :goto_52

    .line 414
    :cond_35
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 415
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_3a
    iget v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4f

    .line 416
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 417
    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 419
    .end local v2    # "t":I
    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 421
    .end local v1    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :goto_52
    goto :goto_f

    .line 422
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    :cond_53
    return-void
.end method

.method public static blacklist readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 221
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 222
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    .line 224
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2d

    .line 225
    nop

    .line 230
    .end local v1    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 231
    .local v1, "length":I
    if-lez v1, :cond_28

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_28

    .line 232
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 234
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    .local v1, "c":I
    :cond_2d
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .end local v1    # "c":I
    goto :goto_7

    .line 223
    .restart local v1    # "c":I
    :cond_32
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static blacklist readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 198
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 200
    .local v1, "buffer":[C
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_16

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_9

    .line 203
    :cond_16
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1e

    .line 205
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 203
    return-object v2

    .line 205
    .end local v0    # "writer":Ljava/io/StringWriter;
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_1e
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 206
    throw v0
.end method

.method private blacklist readJournal()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    const-string v0, ", "

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 344
    .local v1, "in":Ljava/io/InputStream;
    :try_start_10
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "magic":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "version":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    const-string v7, "1"

    .line 350
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    iget v7, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->appVersion:I

    .line 351
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    iget v7, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    .line 352
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    const-string v7, ""

    .line 353
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_9b

    if-eqz v7, :cond_63

    .line 360
    :goto_54
    :try_start_54
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/EOFException; {:try_start_54 .. :try_end_5b} :catch_5c
    .catchall {:try_start_54 .. :try_end_5b} :catchall_9b

    .line 363
    goto :goto_54

    .line 361
    :catch_5c
    move-exception v0

    .line 362
    .local v0, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 366
    .end local v0    # "endOfJournal":Ljava/io/EOFException;
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 367
    nop

    .line 368
    return-void

    .line 354
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_63
    :try_start_63
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    throw v7
    :try_end_9b
    .catchall {:try_start_63 .. :try_end_9b} :catchall_9b

    .line 366
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :catchall_9b
    move-exception v0

    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 367
    throw v0
.end method

.method private blacklist readJournalLine(Ljava/lang/String;)V
    .registers 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const-string/jumbo v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_96

    .line 376
    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 377
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    array-length v6, v0

    if-ne v6, v3, :cond_24

    .line 378
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void

    .line 382
    :cond_24
    iget-object v6, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 383
    .local v6, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_3a

    .line 384
    new-instance v8, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    invoke-direct {v8, p0, v4, v7}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry-IA;)V

    move-object v6, v8

    .line 385
    iget-object v8, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_3a
    aget-object v8, v0, v5

    const-string v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    array-length v8, v0

    iget v9, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    add-int/2addr v9, v3

    if-ne v8, v9, :cond_5b

    .line 389
    invoke-static {v6, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Z)V

    .line 390
    invoke-static {v6, v7}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    .line 391
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$msetLengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_7e

    .line 392
    :cond_5b
    aget-object v1, v0, v5

    const-string v8, "DIRTY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    array-length v1, v0

    if-ne v1, v3, :cond_71

    .line 393
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    invoke-direct {v1, p0, v6, v7}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor-IA;)V

    invoke-static {v6, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fputcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;Lcom/samsung/android/share/SemShareDiskLruCache$Editor;)V

    goto :goto_7e

    .line 394
    :cond_71
    aget-object v1, v0, v5

    const-string v5, "READ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    array-length v1, v0

    if-ne v1, v3, :cond_7f

    .line 399
    :goto_7e
    return-void

    .line 397
    :cond_7f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :cond_96
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized blacklist rebuildJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 429
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_8

    .line 430
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 433
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 434
    .local v0, "writer":Ljava/io/Writer;
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 436
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 438
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 439
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 442
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 445
    .local v3, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_88

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DIRTY "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_ae

    .line 448
    :cond_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEAN "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetkey(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 450
    .end local v3    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :goto_ae
    goto :goto_55

    .line 452
    :cond_af
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 453
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 454
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_c8
    .catchall {:try_start_1 .. :try_end_c8} :catchall_ca

    .line 455
    monitor-exit p0

    return-void

    .line 428
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_ca
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist trimToSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    iget-wide v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 703
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 704
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->remove(Ljava/lang/String;)Z

    .line 705
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/share/SemShareDiskLruCache$Entry;>;"
    goto :goto_0

    .line 706
    :cond_22
    return-void
.end method

.method private blacklist validateKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 719
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 723
    return-void

    .line 720
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 687
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    .line 688
    monitor-exit p0

    return-void

    .line 690
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 691
    .local v1, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 692
    invoke-static {v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/share/SemShareDiskLruCache$Editor;->abort()V

    .line 694
    .end local v1    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_2f
    goto :goto_16

    .line 695
    :cond_30
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->trimToSize()V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    .line 698
    monitor-exit p0

    return-void

    .line 686
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->close()V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache;->deleteContents(Ljava/io/File;)V

    .line 716
    return-void
.end method

.method public blacklist edit(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->edit(Ljava/lang/String;J)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 679
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->trimToSize()V

    .line 680
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 681
    monitor-exit p0

    return-void

    .line 677
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist get(Ljava/lang/String;)Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 476
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 477
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_6f

    .line 479
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 480
    monitor-exit p0

    return-object v1

    .line 483
    :cond_14
    :try_start_14
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetreadable(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_6f

    if-nez v2, :cond_1c

    .line 484
    monitor-exit p0

    return-object v1

    .line 492
    :cond_1c
    :try_start_1c
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    new-array v2, v2, [Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_6f

    .line 494
    .local v2, "ins":[Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    :try_start_21
    iget v4, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_33

    .line 495
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v2, v3
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_30} :catch_6c
    .catchall {:try_start_21 .. :try_end_30} :catchall_6f

    .line 494
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 500
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :cond_33
    nop

    .line 502
    :try_start_34
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    .line 503
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "READ "

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 504
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 505
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 508
    :cond_5c
    new-instance v1, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetsequenceNumber(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)J

    move-result-wide v6

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot;-><init>(Lcom/samsung/android/share/SemShareDiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/samsung/android/share/SemShareDiskLruCache$Snapshot-IA;)V
    :try_end_6a
    .catchall {:try_start_34 .. :try_end_6a} :catchall_6f

    monitor-exit p0

    return-object v1

    .line 497
    :catch_6c
    move-exception v3

    .line 499
    .local v3, "e":Ljava/io/FileNotFoundException;
    monitor-exit p0

    return-object v1

    .line 475
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local v2    # "ins":[Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getDirectory()Ljava/io/File;
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public blacklist isClosed()Z
    .registers 2

    .line 665
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist maxSize()J
    .registers 3

    .line 555
    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/String;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 634
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->checkNotClosed()V

    .line 635
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareDiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;

    .line 637
    .local v0, "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    if-eqz v0, :cond_85

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetcurrentEditor(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)Lcom/samsung/android/share/SemShareDiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_18

    goto :goto_85

    .line 641
    :cond_18
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    iget v2, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_56

    .line 642
    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 643
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 646
    iget-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J

    .line 647
    invoke-static {v0}, Lcom/samsung/android/share/SemShareDiskLruCache$Entry;->-$$Nest$fgetlengths(Lcom/samsung/android/share/SemShareDiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 641
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 644
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3d
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 650
    .end local v1    # "i":I
    .end local v2    # "file":Ljava/io/File;
    :cond_56
    iget v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->redundantOpCount:I

    .line 651
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 652
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareDiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 655
    iget-object v1, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_88

    .line 658
    :cond_83
    monitor-exit p0

    return v2

    .line 638
    :cond_85
    :goto_85
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 633
    .end local v0    # "entry":Lcom/samsung/android/share/SemShareDiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist size()J
    .registers 3

    monitor-enter p0

    .line 564
    :try_start_1
    iget-wide v0, p0, Lcom/samsung/android/share/SemShareDiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 564
    .end local p0    # "this":Lcom/samsung/android/share/SemShareDiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
