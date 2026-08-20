.class public Lcom/android/server/integrity/model/ByteTrackedOutputStream;
.super Ljava/io/OutputStream;
.source "ByteTrackedOutputStream.java"


# instance fields
.field public final mOutputStream:Ljava/io/OutputStream;

.field public mWrittenBytesCount:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 35
    iput-object p1, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getWrittenBytesCount()I
    .registers 1

    .line 61
    iget p0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    return p0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 41
    iget-object p0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mWrittenBytesCount:I

    .line 56
    iget-object p0, p0, Lcom/android/server/integrity/model/ByteTrackedOutputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
