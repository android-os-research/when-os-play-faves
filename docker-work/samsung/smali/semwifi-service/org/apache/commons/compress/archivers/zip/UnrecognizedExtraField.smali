.class public Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
.super Ljava/lang/Object;
.source "UnrecognizedExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_9

    .line 120
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p0

    return-object p0

    .line 122
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->getLocalFileDataData()[B

    move-result-object p0

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_d

    .line 108
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    array-length p0, p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0

    .line 110
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 50
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 1

    .line 83
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 74
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    if-eqz p0, :cond_8

    array-length p0, p0

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 6

    .line 147
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 148
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    .line 150
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    if-nez p1, :cond_10

    .line 151
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    :cond_10
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 6

    .line 133
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 134
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    return-void
.end method

.method public setCentralDirectoryData([B)V
    .registers 2

    .line 97
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    return-void
.end method

.method public setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public setLocalFileDataData([B)V
    .registers 2

    .line 65
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    return-void
.end method
