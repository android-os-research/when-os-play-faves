.class public Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;
.super Lcom/android/server/integrity/parser/RandomAccessObject;
.source "RandomAccessObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/integrity/parser/RandomAccessObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RandomAccessByteArrayObject"
.end annotation


# instance fields
.field public final mBytes:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 97
    invoke-direct {p0}, Lcom/android/server/integrity/parser/RandomAccessObject;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public length()I
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    return p0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 112
    :cond_a
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 121
    :cond_e
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v0
.end method

.method public seek(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/server/integrity/parser/RandomAccessObject$RandomAccessByteArrayObject;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
