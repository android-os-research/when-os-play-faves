.class public final Lokhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field public done:Z

.field public final entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

.field public final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field public final written:[Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 3

    .line 831
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 833
    iget-boolean p2, p2, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    iget p1, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_11
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 930
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_18

    .line 933
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_13

    .line 934
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_13
    const/4 v1, 0x1

    .line 936
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 937
    monitor-exit v0

    return-void

    .line 931
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_1e
    move-exception p0

    .line 937
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public abortUnlessCommitted()V
    .registers 4

    .line 941
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 942
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    if-ne v1, p0, :cond_13

    .line 944
    :try_start_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    .line 948
    :catch_13
    :cond_13
    :try_start_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 914
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_17

    .line 917
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_13

    .line 918
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 920
    :cond_13
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 921
    monitor-exit v0

    return-void

    .line 915
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_1d
    move-exception p0

    .line 921
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public detach()V
    .registers 4

    .line 843
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_20

    const/4 v0, 0x0

    .line 844
    :goto_7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v2, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v2, :cond_1b

    .line 846
    :try_start_d
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_18

    :catch_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 851
    :cond_1b
    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    :cond_20
    return-void
.end method

.method public newSink(I)Lokio/Sink;
    .registers 6

    .line 881
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 882
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_35

    .line 885
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v2, p0, :cond_13

    .line 886
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 888
    :cond_13
    iget-boolean v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_1c

    .line 889
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 891
    :cond_1c
    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3b

    .line 894
    :try_start_20
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v1, p1}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object p1
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_28} :catch_2f
    .catchall {:try_start_20 .. :try_end_28} :catchall_3b

    .line 898
    :try_start_28
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v1, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Lokhttp3/internal/cache/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v0

    return-object v1

    .line 896
    :catch_2f
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 883
    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_3b
    move-exception p0

    .line 905
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public newSource(I)Lokio/Source;
    .registers 6

    .line 860
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 861
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_25

    .line 864
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2b

    if-eq v2, p0, :cond_13

    goto :goto_23

    .line 868
    :cond_13
    :try_start_13
    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object p0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-interface {p0, p1}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object p0
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1f} :catch_21
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2b

    :try_start_1f
    monitor-exit v0

    return-object p0

    .line 870
    :catch_21
    monitor-exit v0

    return-object v3

    .line 865
    :cond_23
    :goto_23
    monitor-exit v0

    return-object v3

    .line 862
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_2b
    move-exception p0

    .line 872
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw p0
.end method
