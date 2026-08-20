.class public Lcom/android/server/integrity/parser/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"


# instance fields
.field public final mLimit:I

.field public mReadBytes:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-ltz p2, :cond_b

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 34
    iput p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    return-void

    .line 31
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "limit "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be negative"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    iget p0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    iget v1, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mLimit:I

    if-ne v0, v1, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 47
    iput v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    .line 48
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result p0

    return p0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/LimitInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/LimitInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 65
    :cond_c
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 66
    iget p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    return p1
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    .line 75
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/LimitInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_e

    return-wide v0

    :cond_e
    int-to-long v0, v2

    .line 79
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    .line 80
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    .line 81
    iget v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/integrity/parser/LimitInputStream;->mReadBytes:I

    return-wide p1
.end method
