.class public Lcom/android/server/integrity/parser/BinaryFileOperations;
.super Ljava/lang/Object;
.source "BinaryFileOperations.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanValue(Lcom/android/server/integrity/model/BitInputStream;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p0

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static getIntValue(Lcom/android/server/integrity/model/BitInputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p0

    return p0
.end method

.method public static getStringValue(Lcom/android/server/integrity/model/BitInputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/16 v1, 0x8

    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result v1

    .line 43
    invoke-static {p0, v1, v0}, Lcom/android/server/integrity/parser/BinaryFileOperations;->getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringValue(Lcom/android/server/integrity/model/BitInputStream;IZ)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    if-nez p2, :cond_1c

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_17

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p1

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_9

    .line 60
    :cond_17
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1c
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    :goto_20
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_30

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/server/integrity/model/BitInputStream;->getNext(I)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move p1, v1

    goto :goto_20

    .line 66
    :cond_30
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Landroid/content/integrity/IntegrityUtils;->getHexDigest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
