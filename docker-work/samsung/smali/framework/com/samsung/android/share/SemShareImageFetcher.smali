.class public Lcom/samsung/android/share/SemShareImageFetcher;
.super Lcom/samsung/android/share/SemShareImageWorker;
.source "SemShareImageFetcher.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SemShareImageFetcher"


# instance fields
.field private final blacklist mEnhanceCacheDir:Ljava/io/File;

.field private blacklist mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;

.field private final blacklist mEnhanceDiskCacheLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareImageWorker;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCacheLock:Ljava/lang/Object;

    .line 36
    const-string v0, "cache"

    invoke-static {p1, v0}, Lcom/samsung/android/share/SemShareImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceCacheDir:Ljava/io/File;

    .line 37
    return-void
.end method

.method private blacklist initEnhanceDiskCache()V
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceCacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/samsung/android/share/SemShareImageCache;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_32

    const-wide/32 v3, 0x1e00000

    cmp-long v1, v1, v3

    if-lez v1, :cond_2b

    .line 52
    :try_start_1d
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceCacheDir:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v1, v2, v2, v3, v4}, Lcom/samsung/android/share/SemShareDiskLruCache;->open(Ljava/io/File;IIJ)Lcom/samsung/android/share/SemShareDiskLruCache;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_27
    .catchall {:try_start_1d .. :try_end_26} :catchall_32

    .line 58
    goto :goto_2b

    .line 56
    :catch_27
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_29
    iput-object v2, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    .line 60
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 61
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_32

    throw v1
.end method


# virtual methods
.method protected blacklist clearCacheInternal()V
    .registers 6

    .line 66
    invoke-super {p0}, Lcom/samsung/android/share/SemShareImageWorker;->clearCacheInternal()V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    if-eqz v1, :cond_54

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_56

    if-nez v1, :cond_54

    .line 70
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->delete()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_56

    .line 78
    goto :goto_4e

    .line 76
    :catch_16
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_17
    const-string v2, "SemShareImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 74
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_34
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "SemShareImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    nop

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4e
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareImageFetcher;->initEnhanceDiskCache()V

    .line 82
    :cond_54
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_56

    throw v1
.end method

.method protected blacklist closeCacheInternal()V
    .registers 6

    .line 104
    invoke-super {p0}, Lcom/samsung/android/share/SemShareImageWorker;->closeCacheInternal()V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_34

    if-eqz v1, :cond_32

    .line 108
    :try_start_a
    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 109
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;

    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->close()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_19
    .catchall {:try_start_a .. :try_end_18} :catchall_34

    .line 117
    :cond_18
    goto :goto_32

    .line 115
    :catch_19
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    :try_start_1a
    const-string v2, "SemShareImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeCacheInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v1    # "e":Ljava/io/IOException;
    :cond_32
    :goto_32
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    throw v1
.end method

.method protected blacklist flushCacheInternal()V
    .registers 6

    .line 87
    invoke-super {p0}, Lcom/samsung/android/share/SemShareImageWorker;->flushCacheInternal()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/share/SemShareImageFetcher;->mEnhanceDiskCache:Lcom/samsung/android/share/SemShareDiskLruCache;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_29

    if-eqz v1, :cond_27

    .line 91
    :try_start_a
    invoke-virtual {v1}, Lcom/samsung/android/share/SemShareDiskLruCache;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e
    .catchall {:try_start_a .. :try_end_d} :catchall_29

    .line 97
    goto :goto_27

    .line 95
    :catch_e
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    :try_start_f
    const-string v2, "SemShareImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :cond_27
    :goto_27
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw v1
.end method

.method protected blacklist initDiskCacheInternal()V
    .registers 1

    .line 41
    invoke-super {p0}, Lcom/samsung/android/share/SemShareImageWorker;->initDiskCacheInternal()V

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareImageFetcher;->initEnhanceDiskCache()V

    .line 43
    return-void
.end method
