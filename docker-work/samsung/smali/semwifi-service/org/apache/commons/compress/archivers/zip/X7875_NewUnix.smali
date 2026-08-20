.class public Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;
.super Ljava/lang/Object;
.source "X7875_NewUnix.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final ONE_THOUSAND:Ljava/math/BigInteger;

.field private static final ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gid:Ljava/math/BigInteger;

.field private uid:Ljava/math/BigInteger;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x7875

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 58
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const-wide/16 v0, 0x3e8

    .line 59
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    return-void
.end method

.method private reset()V
    .registers 2

    .line 256
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ONE_THOUSAND:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    .line 257
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    return-void
.end method

.method static trimLeadingZeroesForceMinLength([B)[B
    .registers 5

    if-nez p0, :cond_3

    return-object p0

    .line 313
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_11

    aget-byte v3, p0, v1

    if-nez v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 360
    :cond_11
    array-length v0, p0

    sub-int/2addr v0, v2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [B

    .line 361
    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int v3, v0, v3

    sub-int/2addr v0, v3

    .line 362
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 274
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 279
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 280
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;

    .line 282
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    iget v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public getCentralDirectoryData()[B
    .registers 1

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 152
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getGID()J
    .registers 3

    .line 107
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 86
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 9

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 164
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 169
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 170
    array-length v3, v0

    goto :goto_16

    :cond_15
    move v3, v2

    .line 171
    :goto_16
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 172
    array-length v4, v1

    goto :goto_1f

    :cond_1e
    move v4, v2

    :goto_1f
    add-int/lit8 v5, v3, 0x3

    add-int/2addr v5, v4

    .line 179
    new-array v5, v5, [B

    if-eqz v0, :cond_29

    .line 183
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    :cond_29
    if-eqz v1, :cond_2e

    .line 186
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    .line 190
    :cond_2e
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result p0

    aput-byte p0, v5, v2

    const/4 p0, 0x2

    .line 191
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v6

    const/4 v7, 0x1

    aput-byte v6, v5, v7

    if-eqz v0, :cond_43

    .line 193
    invoke-static {v0, v2, v5, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_43
    add-int/2addr p0, v3

    add-int/lit8 v0, p0, 0x1

    .line 196
    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->unsignedIntToSignedByte(I)B

    move-result v3

    aput-byte v3, v5, p0

    if-eqz v1, :cond_51

    .line 198
    invoke-static {v1, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51
    return-object v5
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 3

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    .line 136
    :cond_f
    array-length v0, v0

    .line 137
    :goto_10
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->trimLeadingZeroesForceMinLength([B)[B

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_1e

    .line 138
    :cond_1d
    array-length v1, p0

    .line 141
    :goto_1e
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object p0
.end method

.method public getUID()J
    .registers 3

    .line 97
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->bigToLong(Ljava/math/BigInteger;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    .line 289
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    const v1, -0x12d687

    mul-int/2addr v0, v1

    .line 293
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 294
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->reset()V

    add-int/lit8 p3, p2, 0x1

    .line 227
    aget-byte p2, p1, p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    move-result p2

    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->version:I

    add-int/lit8 p2, p3, 0x1

    .line 228
    aget-byte p3, p1, p3

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    move-result p3

    .line 229
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 230
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    .line 232
    new-instance p3, Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    add-int/lit8 p3, p2, 0x1

    .line 234
    aget-byte p2, p1, p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->signedByteToUnsignedInt(B)I

    move-result p2

    .line 235
    new-array v0, p2, [B

    .line 236
    invoke-static {p1, p3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    new-instance p1, Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->reverse([B)[B

    move-result-object p2

    invoke-direct {p1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    return-void
.end method

.method public setGID(J)V
    .registers 3

    .line 124
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    return-void
.end method

.method public setUID(J)V
    .registers 3

    .line 115
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->longToBig(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x7875 Zip Extra Field: UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->uid:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " GID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/X7875_NewUnix;->gid:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
