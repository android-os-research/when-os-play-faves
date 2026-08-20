.class public Lokhttp3/RequestBody$3;
.super Lokhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$contentType:Lokhttp3/MediaType;

.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Ljava/io/File;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 166
    iget-object p0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 162
    iget-object p0, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object p0

    .line 171
    :try_start_6
    invoke-interface {p1, p0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    if-eqz p0, :cond_e

    .line 172
    invoke-interface {p0}, Lokio/Source;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception p1

    .line 170
    :try_start_10
    throw p1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    if-eqz p0, :cond_1c

    .line 172
    :try_start_14
    invoke-interface {p0}, Lokio/Source;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw v0
.end method
