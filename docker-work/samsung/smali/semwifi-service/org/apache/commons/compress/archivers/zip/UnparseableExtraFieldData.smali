.class public final Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
.super Ljava/lang/Object;
.source "UnparseableExtraFieldData.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private centralDirectoryData:[B

.field private localFileData:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const v1, 0xacc1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 2

    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    if-nez v0, :cond_9

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->getLocalFileDataData()[B

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    if-nez v0, :cond_9

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object p0

    goto :goto_12

    .line 66
    :cond_9
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    array-length p0, p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    move-object p0, v0

    :goto_12
    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 44
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 1

    .line 76
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 54
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    array-length p0, p0

    :goto_9
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 6

    .line 113
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->centralDirectoryData:[B

    const/4 v1, 0x0

    .line 114
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    if-nez v0, :cond_f

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->parseFromLocalFileData([BII)V

    :cond_f
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 5

    .line 99
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;->localFileData:[B

    const/4 p0, 0x0

    .line 100
    invoke-static {p1, p2, v0, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
