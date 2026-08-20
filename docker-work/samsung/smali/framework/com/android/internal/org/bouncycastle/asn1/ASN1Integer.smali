.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Integer.java"


# static fields
.field static final blacklist SIGN_EXT_SIGNED:I = -0x1

.field static final blacklist SIGN_EXT_UNSIGNED:I = 0xff


# instance fields
.field private final blacklist bytes:[B

.field private final blacklist start:I


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .line 85
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 86
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 96
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 99
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([BZ)V

    .line 126
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "clone"    # Z

    .line 129
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 130
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->isMalformed([B)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 135
    if-eqz p2, :cond_10

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, p1

    :goto_11
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    .line 136
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->signBytesToSkip([B)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    .line 137
    return-void

    .line 132
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "malformed integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 5
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 69
    .local v0, "o":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_19

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_b

    goto :goto_19

    .line 75
    :cond_b
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    return-object v1

    .line 71
    :cond_19
    :goto_19
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 33
    if-eqz p0, :cond_54

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_7

    goto :goto_54

    .line 38
    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_33

    .line 42
    :try_start_b
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 44
    :catch_15
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_54
    :goto_54
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method static blacklist intValue([BII)I
    .registers 8
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "signExt"    # I

    .line 235
    array-length v0, p0

    .line 236
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 238
    .local v1, "pos":I
    aget-byte v2, p0, v1

    and-int/2addr v2, p2

    .line 239
    .local v2, "val":I
    :goto_a
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_17

    .line 241
    shl-int/lit8 v3, v2, 0x8

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    goto :goto_a

    .line 243
    :cond_17
    return v2
.end method

.method static blacklist isMalformed([B)Z
    .registers 5
    .param p0, "bytes"    # [B

    .line 267
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1c

    .line 274
    aget-byte v0, p0, v1

    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x7

    if-ne v0, v3, :cond_1a

    .line 276
    const-string v0, "com.android.internal.org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v1, v2

    goto :goto_1b

    .line 272
    :pswitch_18
    return v1

    .line 270
    :pswitch_19
    return v2

    .line 276
    :cond_1a
    nop

    .line 274
    :goto_1b
    return v1

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method static blacklist longValue([BII)J
    .registers 11
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "signExt"    # I

    .line 248
    array-length v0, p0

    .line 249
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 251
    .local v1, "pos":I
    aget-byte v2, p0, v1

    and-int/2addr v2, p2

    int-to-long v2, v2

    .line 252
    .local v2, "val":J
    :goto_b
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1b

    .line 254
    const/16 v4, 0x8

    shl-long v4, v2, v4

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v2, v4, v6

    goto :goto_b

    .line 256
    :cond_1b
    return-wide v2
.end method

.method static blacklist signBytesToSkip([B)I
    .registers 5
    .param p0, "bytes"    # [B

    .line 282
    const/4 v0, 0x0

    .local v0, "pos":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 283
    .local v1, "last":I
    :goto_4
    if-ge v0, v1, :cond_13

    aget-byte v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_13

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 288
    :cond_13
    return v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 5
    .param p1, "o"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 218
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_6

    .line 220
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 225
    .local v0, "other":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    const/4 v1, 0x2

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    .line 209
    return-void
.end method

.method blacklist encodedLength()I
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getPositiveValue()Ljava/math/BigInteger;
    .registers 4

    .line 147
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public blacklist getValue()Ljava/math/BigInteger;
    .registers 3

    .line 152
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public blacklist hasValue(Ljava/math/BigInteger;)Z
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 157
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    const/4 v2, -0x1

    .line 159
    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 157
    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public blacklist intPositiveValueExact()I
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, v2

    .line 166
    .local v1, "count":I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_18

    if-ne v1, v3, :cond_11

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_18

    .line 171
    :cond_11
    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    return v0

    .line 168
    :cond_18
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "ASN.1 Integer out of positive int range"

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist intValueExact()I
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, v2

    .line 177
    .local v1, "count":I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_f

    .line 182
    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValue([BII)I

    move-result v0

    return v0

    .line 179
    :cond_f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "ASN.1 Integer out of int range"

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist isConstructed()Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist longValueExact()J
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->start:I

    sub-int/2addr v1, v2

    .line 188
    .local v1, "count":I
    const/16 v3, 0x8

    if-gt v1, v3, :cond_10

    .line 193
    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->longValue([BII)J

    move-result-wide v2

    return-wide v2

    .line 190
    :cond_10
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v2, "ASN.1 Integer out of long range"

    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
