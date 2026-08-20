.class public abstract Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.super Ljava/lang/Object;
.source "PKWareExtraHeader.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;,
        Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    }
.end annotation


# instance fields
.field private centralData:[B

.field private final headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private localData:[B


# direct methods
.method protected constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 2

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    if-eqz v0, :cond_9

    .line 157
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p0

    return-object p0

    .line 159
    :cond_9
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataData()[B

    move-result-object p0

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    if-eqz v0, :cond_d

    .line 144
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    array-length p0, p0

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0

    .line 146
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 91
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 1

    .line 122
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 2

    .line 112
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

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

    .line 189
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 190
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setCentralDirectoryData([B)V

    .line 192
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    if-nez p1, :cond_10

    .line 193
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    :cond_10
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 6

    .line 173
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 174
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->setLocalFileDataData([B)V

    return-void
.end method

.method public setCentralDirectoryData([B)V
    .registers 2

    .line 132
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->centralData:[B

    return-void
.end method

.method public setLocalFileDataData([B)V
    .registers 2

    .line 102
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->localData:[B

    return-void
.end method
