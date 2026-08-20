.class public abstract Lorg/apache/commons/compress/archivers/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final DOS_TIME_MIN:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2100

    .line 35
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->DOS_TIME_MIN:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToLong(I)J
    .registers 5

    if-gez p0, :cond_a

    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v2, v0

    return-wide v2

    :cond_a
    int-to-long v0, p0

    return-wide v0
.end method

.method static bigToLong(Ljava/math/BigInteger;)J
    .registers 4

    .line 135
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_d

    .line 136
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The BigInteger cannot fit inside a 64 bit java long: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 2

    .line 311
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;
        }
    .end annotation

    .line 345
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 350
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 353
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v0

    .line 357
    :cond_1e
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v1

    :cond_24
    return-void

    .line 346
    :cond_25
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v0
.end method

.method static copy([B[BI)V
    .registers 5

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    .line 302
    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    return-void
.end method

.method static copy([B)[B
    .registers 4

    if-eqz p0, :cond_a

    .line 293
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 294
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dosToJavaTime(J)J
    .registers 9

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0x19

    shr-long v1, p0, v1

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit16 v1, v1, 0x7bc

    const/4 v2, 0x1

    .line 216
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x15

    shr-long v3, p0, v1

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v1, v3

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    .line 217
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0x10

    shr-long v3, p0, v1

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x5

    .line 218
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xb

    shr-long v4, p0, v1

    long-to-int v4, v4

    and-int/lit8 v4, v4, 0x1f

    .line 219
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    shr-long v3, p0, v3

    long-to-int v1, v3

    and-int/lit8 v1, v1, 0x3f

    const/16 v3, 0xc

    .line 220
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    shl-long/2addr p0, v2

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x3e

    const/16 p1, 0xd

    .line 221
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 222
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static fromDosTime(Lorg/apache/commons/compress/archivers/zip/ZipLong;)Ljava/util/Date;
    .registers 3

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 204
    new-instance p0, Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method private static getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 267
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 268
    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 269
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_22

    .line 273
    :try_start_17
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_22

    return-object p0

    :catch_22
    :cond_22
    return-object v0
.end method

.method static longToBig(J)Ljava/math/BigInteger;
    .registers 5

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_19

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_14

    if-ltz v0, :cond_14

    long-to-int p0, p0

    .line 158
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide p0

    .line 160
    :cond_14
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 154
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative longs < -2^31 not permitted: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverse([B)[B
    .registers 6

    .line 118
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 119
    :goto_4
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_16

    .line 120
    aget-byte v2, p0, v1

    sub-int v3, v0, v1

    .line 121
    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 122
    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_16
    return-object p0
.end method

.method static setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V
    .registers 4

    .line 235
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 236
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    .line 237
    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 240
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 241
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V

    :cond_16
    if-eqz p2, :cond_31

    .line 244
    array-length p1, p2

    if-lez p1, :cond_31

    .line 245
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 246
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 248
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 250
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 251
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCommentSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;)V

    :cond_31
    return-void
.end method

.method public static signedByteToUnsignedInt(B)I
    .registers 1

    if-ltz p0, :cond_3

    return p0

    :cond_3
    add-int/lit16 p0, p0, 0x100

    return p0
.end method

.method private static supportsEncryptionOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 1

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesEncryption()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static supportsMethodOf(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 3

    .line 331
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_41

    .line 332
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_41

    .line 333
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_41

    .line 334
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_41

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_41

    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p0, 0x1

    :goto_42
    return p0
.end method

.method public static toDosTime(Ljava/util/Date;)Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .registers 4

    .line 43
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method public static toDosTime(J[BI)V
    .registers 5

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    return-void
.end method

.method static toDosTime(Ljava/util/Calendar;J[BI)V
    .registers 8

    .line 74
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v0, 0x7bc

    if-ge p2, v0, :cond_14

    .line 78
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->DOS_TIME_MIN:[B

    const/4 p1, 0x0

    array-length p2, p0

    invoke-static {p0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_14
    const/4 v1, 0x2

    .line 81
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr p2, v0

    shl-int/lit8 p2, p2, 0x19

    shl-int/lit8 v0, v1, 0x15

    or-int/2addr p2, v0

    const/4 v0, 0x5

    .line 84
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    const/16 v1, 0xb

    .line 85
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v1, v2, 0xb

    or-int/2addr p2, v1

    const/16 v1, 0xc

    .line 86
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x5

    or-int/2addr p2, v0

    const/16 v0, 0xd

    .line 87
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    shr-int/2addr p0, p1

    or-int/2addr p0, p2

    int-to-long p0, p0

    .line 88
    invoke-static {p0, p1, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    return-void
.end method

.method public static toDosTime(J)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J[BI)V

    return-object v0
.end method

.method public static unsignedIntToSignedByte(I)B
    .registers 4

    const/16 v0, 0xff

    if-gt p0, v0, :cond_10

    if-ltz p0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_c

    int-to-byte p0, p0

    return p0

    :cond_c
    add-int/lit16 p0, p0, -0x100

    int-to-byte p0, p0

    return p0

    .line 188
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only convert non-negative integers between [0,255] to byte: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
