.class public Lcom/android/server/knox/dar/sdp/security/BytesUtil;
.super Ljava/lang/Object;
.source "BytesUtil.java"


# static fields
.field public static final BYTE_SIZE:I = 0x1

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final INTEGER_SIZE:I = 0x4

.field public static final LONG_SIZE:I = 0x8


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 18
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .registers 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0xf

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteTobytes(B)[B
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_6

    const-string/jumbo p0, "null"

    goto :goto_51

    .line 115
    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, ""

    :goto_a
    if-ge v1, v0, :cond_50

    aget-byte v3, p0, v1

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v3, 0xf

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_50
    move-object p0, v2

    .line 121
    :goto_51
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToInt([B)I
    .registers 3

    const/4 v0, 0x4

    .line 57
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static bytesToInt([BII)I
    .registers 5

    const/4 v0, 0x4

    .line 65
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0, p0, p1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static bytesToInt([BLjava/nio/ByteOrder;)I
    .registers 3

    const/4 v0, 0x4

    .line 80
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method public static bytesToLong([B)J
    .registers 3

    const/16 v0, 0x8

    .line 95
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultByteOrder()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeByteOrder()Ljava/lang/String;
    .registers 1

    .line 26
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intTobytes(I)[B
    .registers 3

    const/4 v0, 0x4

    .line 50
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static intTobytes(ILjava/nio/ByteOrder;)[B
    .registers 3

    const/4 v0, 0x4

    .line 73
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static longToBytes(J)[B
    .registers 4

    const/16 v0, 0x8

    .line 88
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs serializeByteArrays([[B)[B
    .registers 5

    .line 36
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v3, p0, v2

    if-nez v3, :cond_e

    goto :goto_16

    .line 41
    :cond_e
    :try_start_e
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v3

    .line 43
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 46
    :cond_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static zeroOut([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 32
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method
