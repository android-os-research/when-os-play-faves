.class public final Lcom/samsung/android/server/wifi/util/SemNativeUtil;
.super Ljava/lang/Object;
.source "SemNativeUtil.java"


# static fields
.field public static final ANY_MAC_BYTES:[B

.field private static final ANY_MAC_STR:Ljava/lang/String; = "any"

.field private static final MAC_LENGTH:I = 0x6

.field private static final MAC_OUI_LENGTH:I = 0x3

.field private static final MAC_STR_LENGTH:I = 0x11

.field private static final SSID_BYTES_MAX_LEN:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 39
    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->ANY_MAC_BYTES:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayFromArrayList(Ljava/util/ArrayList;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 317
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    add-int/lit8 v3, v1, 0x1

    .line 318
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    move v1, v3

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public static byteArrayToArrayList([B)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 306
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method public static bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "\""

    if-eqz p0, :cond_3d

    .line 253
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayFromArrayList(Ljava/util/ArrayList;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 255
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    .line 256
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    .line 258
    :try_start_19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_37
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_19 .. :try_end_37} :catch_38

    return-object p0

    .line 263
    :catch_38
    :cond_38
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->hexStringFromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null ssid bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeSsid(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 276
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_d

    return-object p0

    .line 278
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid bytes size out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_d

    .line 297
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->bytesToHexOrQuotedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 295
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid bytes size out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexOrQuotedStringToBytes(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_30

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_27

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_27

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_27

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 235
    :cond_27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 228
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexStringFromByteArray([B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_10

    .line 346
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/wifi/util/SemHexEncoding;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null hex bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_c

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/util/SemHexEncoding;->decode([CZ)[B

    move-result-object p0

    return-object p0

    .line 331
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null hex string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static macAddressFromByteArray([B)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_49

    .line 142
    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_31

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 146
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_28

    if-eqz v1, :cond_18

    const-string v2, ":"

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_18
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Lcom/samsung/android/wifi/util/SemHexEncoding;->encode([BII)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 150
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid macArray length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null mac bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static macAddressOuiToByteArray(Ljava/lang/String;)[B
    .registers 4

    if-eqz p0, :cond_36

    const-string v0, ":"

    const-string v1, ""

    .line 163
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1b

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/util/SemHexEncoding;->decode([CZ)[B

    move-result-object p0

    return-object p0

    .line 165
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mac oui string length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null mac string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static macAddressToByteArray(Ljava/lang/String;)[B
    .registers 4

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "any"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_44

    :cond_f
    const-string v0, ":"

    const-string v1, ""

    .line 124
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_29

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/util/SemHexEncoding;->decode([CZ)[B

    move-result-object p0

    return-object p0

    .line 126
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid mac string length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_44
    :goto_44
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->ANY_MAC_BYTES:[B

    return-object p0
.end method

.method public static macAddressToLong([B)Ljava/lang/Long;
    .registers 4

    if-eqz p0, :cond_36

    .line 181
    array-length v0, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1e

    .line 186
    :try_start_6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    array-length p0, p0

    .line 185
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/util/SemByteBufferReader;->readInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_15
    .catch Ljava/nio/BufferUnderflowException; {:try_start_6 .. :try_end_15} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_15} :catch_16

    return-object p0

    .line 188
    :catch_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid macArray"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid macArray length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null mac bytes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeEnclosingQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1c

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1c

    .line 202
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method public static stringFromByteArray([B)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_a

    .line 111
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 109
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null byte array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stringFromByteArrayList(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2a

    .line 79
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 85
    :cond_22
    new-instance p0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    .line 77
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null byte array list"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stringToByteArray(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_9

    .line 98
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    .line 96
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stringToByteArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_27

    .line 58
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 60
    :try_start_8
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 62
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1d
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_8 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot be utf-8 encoded"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 55
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wpsDevTypeStringFromByteArray([B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 355
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 356
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/wifi/util/SemHexEncoding;->encode([B)[C

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([C)V

    .line 357
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x7

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v5

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    const-string p0, "%d-%s-%d"

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
