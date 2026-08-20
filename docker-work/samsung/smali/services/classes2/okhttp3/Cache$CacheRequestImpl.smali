.class public final Lokhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field public body:Lokio/Sink;

.field public cacheOut:Lokio/Sink;

.field public done:Z

.field public final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field public final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method public constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    .line 437
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    .line 440
    new-instance v1, Lokhttp3/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lokhttp3/Cache$CacheRequestImpl$1;-><init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 5

    .line 456
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    monitor-enter v0

    .line 457
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_9

    .line 458
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 460
    iput-boolean v1, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 461
    iget-object v2, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    iget v3, v2, Lokhttp3/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lokhttp3/Cache;->writeAbortCount:I

    .line 462
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    .line 463
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 465
    :try_start_19
    iget-object p0, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    :catchall_1f
    move-exception p0

    .line 462
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public body()Lokio/Sink;
    .registers 1

    .line 471
    iget-object p0, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    return-object p0
.end method
