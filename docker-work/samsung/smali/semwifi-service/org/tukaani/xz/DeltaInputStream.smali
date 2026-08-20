.class public Lorg/tukaani/xz/DeltaInputStream;
.super Ljava/io/InputStream;
.source "DeltaInputStream.java"


# static fields
.field public static final DISTANCE_MAX:I = 0x100

.field public static final DISTANCE_MIN:I = 0x1


# instance fields
.field private final delta:Lorg/tukaani/xz/delta/DeltaDecoder;

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final tempBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 39
    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 58
    new-instance p1, Lorg/tukaani/xz/delta/DeltaDecoder;

    invoke-direct {p1, p2}, Lorg/tukaani/xz/delta/DeltaDecoder;-><init>(I)V

    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->delta:Lorg/tukaani/xz/delta/DeltaDecoder;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 125
    iget-object p0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    if-nez p0, :cond_d

    .line 128
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0

    .line 126
    :cond_d
    throw p0

    .line 123
    :cond_e
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 140
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 142
    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    goto :goto_f

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    .line 143
    throw v0

    :cond_f
    :goto_f
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/tukaani/xz/DeltaInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1f

    .line 98
    iget-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1e

    .line 103
    :try_start_c
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_1a

    const/4 v0, -0x1

    if-ne p3, v0, :cond_14

    return v0

    .line 112
    :cond_14
    iget-object p0, p0, Lorg/tukaani/xz/DeltaInputStream;->delta:Lorg/tukaani/xz/delta/DeltaDecoder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/tukaani/xz/delta/DeltaDecoder;->decode([BII)V

    return p3

    :catch_1a
    move-exception p1

    .line 105
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    .line 106
    throw p1

    .line 99
    :cond_1e
    throw v1

    .line 96
    :cond_1f
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
