.class public abstract Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.super Ljava/io/InputStream;
.source "ArchiveInputStream.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private bytesRead:J

.field private final single:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->single:[B

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-void
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method protected count(I)V
    .registers 4

    int-to-long v0, p1

    .line 92
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    return-void
.end method

.method protected count(J)V
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_b

    .line 104
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    :cond_b
    return-void
.end method

.method public getBytesRead()J
    .registers 3

    .line 135
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-wide v0
.end method

.method public getCount()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    long-to-int p0, v0

    return p0
.end method

.method public abstract getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected pushedBackBytes(J)V
    .registers 5

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->single:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    .line 82
    :cond_c
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->single:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method
