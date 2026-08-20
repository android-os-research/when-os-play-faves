.class public Lcom/xgboost/ModelReader;
.super Ljava/lang/Object;
.source "ModelReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private buffer:[B

.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xgboost/ModelReader;->stream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private fillBuffer(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    if-eqz v0, :cond_7

    array-length v0, v0

    if-ge v0, p1, :cond_b

    .line 26
    :cond_7
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p1, :cond_1d

    .line 31
    iget-object v1, p0, Lcom/xgboost/ModelReader;->stream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/xgboost/ModelReader;->buffer:[B

    sub-int v3, p1, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1b

    return v0

    :cond_1b
    add-int/2addr v0, v1

    goto :goto_c

    :cond_1d
    return v0
.end method

.method private readInt(Ljava/nio/ByteOrder;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 68
    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v1

    if-lt v1, v0, :cond_16

    .line 73
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    .line 70
    :cond_16
    new-instance p0, Ljava/io/EOFException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot read int value (shortage): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asFloat([B)F
    .registers 2

    .line 113
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0
.end method

.method public asUnsignedInt([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ltz p0, :cond_11

    return p0

    .line 119
    :cond_11
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot treat as unsigned int (overflow): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/xgboost/ModelReader;->stream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public readByteArray(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p1, :cond_f

    .line 53
    new-array v0, p1, [B

    .line 54
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 48
    :cond_f
    new-instance p0, Ljava/io/EOFException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Cannot read byte array (shortage): expected = %d, actual = %d"

    .line 49
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readByteAsInt()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/xgboost/ModelReader;->stream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public readDoubleArrayBE(I)[D
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x8

    .line 153
    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_23

    .line 160
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 162
    new-array v0, p1, [D

    :goto_17
    if-ge v2, p1, :cond_22

    .line 164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-object v0

    .line 155
    :cond_23
    new-instance p0, Ljava/io/EOFException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "Cannot read double array (shortage): expected = %d, actual = %d"

    .line 156
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFloat()F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 126
    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v1

    if-lt v1, v0, :cond_18

    .line 131
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0

    .line 128
    :cond_18
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read float value (shortage): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFloatArray(I)[F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x4

    .line 135
    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_23

    .line 142
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 144
    new-array v0, p1, [F

    :goto_17
    if-ge v2, p1, :cond_22

    .line 146
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-object v0

    .line 137
    :cond_23
    new-instance p0, Ljava/io/EOFException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "Cannot read float array (shortage): expected = %d, actual = %d"

    .line 138
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->readInt(Ljava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method public readIntArray(I)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x4

    .line 77
    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_23

    .line 84
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 86
    new-array v0, p1, [I

    :goto_17
    if-ge v2, p1, :cond_22

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-object v0

    .line 79
    :cond_23
    new-instance p0, Ljava/io/EOFException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "Cannot read int array (shortage): expected = %d, actual = %d"

    .line 80
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readIntBE()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->readInt(Ljava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method public readLong()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 104
    invoke-direct {p0, v0}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v1

    if-lt v1, v0, :cond_19

    .line 109
    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_19
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read long value (shortage): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcom/xgboost/ModelReader;->readLong()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_11

    long-to-int v0, v0

    .line 183
    invoke-virtual {p0, v0}, Lcom/xgboost/ModelReader;->readString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_11
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too long string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readString(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p1, :cond_15

    .line 192
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/xgboost/ModelReader;->buffer:[B

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    .line 189
    :cond_15
    new-instance p0, Ljava/io/IOException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Cannot read string(%d) (shortage): %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/xgboost/ModelReader;->readByteAsInt()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    .line 197
    invoke-virtual {p0}, Lcom/xgboost/ModelReader;->readByteAsInt()I

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/xgboost/ModelReader;->readUTF(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readUTF(I)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1}, Lcom/xgboost/ModelReader;->fillBuffer(I)I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p1, :cond_d2

    .line 209
    new-array v0, p1, [C

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, p1, :cond_21

    .line 216
    iget-object v4, p0, Lcom/xgboost/ModelReader;->buffer:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x7f

    if-le v4, v5, :cond_18

    goto :goto_21

    :cond_18
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    .line 219
    aput-char v4, v0, v3

    move v3, v5

    goto :goto_b

    :cond_21
    :goto_21
    if-ge v2, p1, :cond_cc

    .line 223
    iget-object v4, p0, Lcom/xgboost/ModelReader;->buffer:[B

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v5, 0x4

    const-string v7, "malformed input: partial character at end"

    const/16 v8, 0x80

    const-string v9, "malformed input around byte "

    packed-switch v6, :pswitch_data_ee

    .line 260
    :pswitch_34
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_49
    add-int/lit8 v2, v2, 0x3

    if-gt v2, p1, :cond_86

    add-int/lit8 v6, v2, -0x2

    .line 249
    aget-byte v6, v4, v6

    add-int/lit8 v7, v2, -0x1

    .line 250
    aget-byte v4, v4, v7

    and-int/lit16 v10, v6, 0xc0

    if-ne v10, v8, :cond_71

    and-int/lit16 v10, v4, 0xc0

    if-ne v10, v8, :cond_71

    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/lit8 v4, v4, 0x3f

    shl-int/2addr v4, v1

    or-int/2addr v4, v5

    int-to-char v4, v4

    .line 254
    aput-char v4, v0, v3

    move v3, v7

    goto :goto_21

    .line 252
    :cond_71
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_86
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0, v7}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8c
    add-int/lit8 v2, v2, 0x2

    if-gt v2, p1, :cond_bc

    add-int/lit8 v6, v2, -0x1

    .line 236
    aget-byte v4, v4, v6

    and-int/lit16 v6, v4, 0xc0

    if-ne v6, v8, :cond_a7

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v5

    int-to-char v4, v4

    .line 240
    aput-char v4, v0, v3

    move v3, v6

    goto/16 :goto_21

    .line 238
    :cond_a7
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_bc
    new-instance p0, Ljava/io/UTFDataFormatException;

    invoke-direct {p0, v7}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v5

    .line 228
    aput-char v5, v0, v3

    move v3, v4

    goto/16 :goto_21

    .line 265
    :cond_cc
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 204
    :cond_d2
    new-instance p0, Ljava/io/EOFException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "Cannot read UTF string bytes: expected = %d, actual = %d"

    .line 205
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_8c
        :pswitch_8c
        :pswitch_49
    .end packed-switch
.end method

.method public readUnsignedInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/xgboost/ModelReader;->readInt()I

    move-result p0

    if-ltz p0, :cond_7

    return p0

    .line 97
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read unsigned int (overflow): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/xgboost/ModelReader;->stream:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_b

    return-void

    .line 173
    :cond_b
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot skip bytes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
