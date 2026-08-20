.class public Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
.super Ljava/lang/Object;
.source "Zip64ExtendedInformationExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final EMPTY:[B

.field static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final LFH_MUST_HAVE_BOTH_SIZES_MSG:Ljava/lang/String; = "Zip64 extended information must contain both size values in the local file header."


# instance fields
.field private compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private rawCentralDirectoryData:[B

.field private relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 50
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 101
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 102
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    .line 103
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method private addSizes([B)I
    .registers 5

    .line 330
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 331
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 334
    :goto_11
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz p0, :cond_1e

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x8

    :cond_1e
    return v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 6

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v0

    new-array v0, v0, [B

    .line 140
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    move-result v1

    .line 141
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    .line 142
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x8

    .line 145
    :cond_1e
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz p0, :cond_2a

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object p0

    const/4 v2, 0x4

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2a
    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 6

    .line 118
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 119
    :goto_c
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v4, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    add-int/2addr v1, v4

    .line 120
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v4, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    add-int/2addr v1, v2

    .line 121
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    if-eqz p0, :cond_20

    const/4 v3, 0x4

    :cond_20
    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .registers 1

    .line 285
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object p0
.end method

.method public getDiskStartNumber()Lorg/apache/commons/compress/archivers/zip/ZipLong;
    .registers 1

    .line 317
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 108
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 3

    .line 126
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-nez v0, :cond_c

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v1, :cond_9

    goto :goto_c

    .line 134
    :cond_9
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-object p0

    :cond_c
    :goto_c
    if-eqz v0, :cond_1a

    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1a

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 131
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    return-object v0

    .line 128
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 113
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    if-eqz p0, :cond_9

    const/16 p0, 0x10

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .registers 1

    .line 301
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object p0
.end method

.method public getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;
    .registers 1

    .line 269
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-object p0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 187
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    const/4 v1, 0x0

    .line 188
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_10

    .line 197
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3c

    :cond_10
    const/16 v0, 0x18

    if-ne p3, v0, :cond_2e

    .line 199
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    .line 201
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    .line 203
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    goto :goto_3c

    .line 204
    :cond_2e
    rem-int/lit8 v0, p3, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3c

    .line 205
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    add-int/2addr p2, p3

    sub-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    :cond_3c
    :goto_3c
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x10

    if-lt p3, v0, :cond_32

    .line 165
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    const/16 v1, 0x8

    add-int/2addr p2, v1

    .line 167
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v2, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/2addr p2, v1

    sub-int/2addr p3, v0

    if-lt p3, v1, :cond_27

    .line 171
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 p3, p3, -0x8

    :cond_27
    const/4 v0, 0x4

    if-lt p3, v0, :cond_31

    .line 176
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    :cond_31
    return-void

    .line 163
    :cond_32
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reparseCentralDirectoryData(ZZZZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    if-eqz v0, :cond_75

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    move v3, v1

    :goto_c
    if-eqz p2, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    add-int/2addr v3, v4

    if-eqz p3, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    add-int/2addr v3, v4

    if-eqz p4, :cond_1c

    const/4 v4, 0x4

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    add-int/2addr v3, v4

    .line 234
    array-length v0, v0

    if-lt v0, v3, :cond_53

    if-eqz p1, :cond_2d

    .line 244
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move v1, v2

    :cond_2d
    if-eqz p2, :cond_3a

    .line 248
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 v1, v1, 0x8

    :cond_3a
    if-eqz p3, :cond_47

    .line 253
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 v1, v1, 0x8

    :cond_47
    if-eqz p4, :cond_75

    .line 258
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    goto :goto_75

    .line 235
    :cond_53
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_75
    :goto_75
    return-void
.end method

.method public setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setDiskStartNumber(Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    return-void
.end method

.method public setRelativeHeaderOffset(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method

.method public setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    return-void
.end method
