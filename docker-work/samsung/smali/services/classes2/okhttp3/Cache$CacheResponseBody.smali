.class public Lokhttp3/Cache$CacheResponseBody;
.super Lokhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResponseBody"
.end annotation


# instance fields
.field public final bodySource:Lokio/BufferedSource;

.field public final contentLength:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 741
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 742
    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->snapshot:Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 743
    iput-object p2, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 744
    iput-object p3, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    .line 746
    invoke-virtual {p1, p2}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lokio/Source;

    move-result-object p2

    .line 747
    new-instance p3, Lokhttp3/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Lokhttp3/Cache$CacheResponseBody$1;-><init>(Lokhttp3/Cache$CacheResponseBody;Lokio/Source;Lokhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    .line 761
    :try_start_2
    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 1

    .line 756
    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public source()Lokio/BufferedSource;
    .registers 1

    .line 768
    iget-object p0, p0, Lokhttp3/Cache$CacheResponseBody;->bodySource:Lokio/BufferedSource;

    return-object p0
.end method
