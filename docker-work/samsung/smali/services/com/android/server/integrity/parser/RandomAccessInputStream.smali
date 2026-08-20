.class public Lcom/android/server/integrity/parser/RandomAccessInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessInputStream.java"


# instance fields
.field public mPosition:I

.field public final mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;


# direct methods
.method public constructor <init>(Lcom/android/server/integrity/parser/RandomAccessObject;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

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

    .line 47
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0}, Lcom/android/server/integrity/parser/RandomAccessObject;->length()I

    move-result v0

    iget p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessObject;->close()V

    return-void
.end method

.method public getPosition()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return p0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_8
    iget v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 61
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessObject;->read()I

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

    .line 66
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_4

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 78
    :cond_c
    iget-object v1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/integrity/parser/RandomAccessObject;->read([BII)I

    move-result p1

    .line 79
    iget p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return p1
.end method

.method public seek(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {v0, p1}, Lcom/android/server/integrity/parser/RandomAccessObject;->seek(I)V

    .line 42
    iput p1, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    return-void
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

    .line 88
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/integrity/parser/RandomAccessInputStream;->available()I

    move-result v2

    if-gtz v2, :cond_e

    return-wide v0

    :cond_e
    int-to-long v0, v2

    .line 92
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    .line 93
    iget p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mPosition:I

    .line 94
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessInputStream;->mRandomAccessObject:Lcom/android/server/integrity/parser/RandomAccessObject;

    invoke-virtual {p0, p2}, Lcom/android/server/integrity/parser/RandomAccessObject;->seek(I)V

    int-to-long p0, p1

    return-wide p0
.end method
