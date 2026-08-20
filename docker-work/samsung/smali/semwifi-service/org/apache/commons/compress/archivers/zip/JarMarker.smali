.class public final Lorg/apache/commons/compress/archivers/zip/JarMarker;
.super Ljava/lang/Object;
.source "JarMarker.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field private static final DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

.field private static final ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final NO_BYTES:[B

.field private static final NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const v1, 0xcafe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 30
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    new-array v0, v1, [B

    .line 31
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    .line 32
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/JarMarker;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/compress/archivers/zip/JarMarker;
    .registers 1

    .line 44
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->DEFAULT:Lorg/apache/commons/compress/archivers/zip/JarMarker;

    return-object v0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 1

    .line 93
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    return-object p0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 73
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 53
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public getLocalFileDataData()[B
    .registers 1

    .line 83
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NO_BYTES:[B

    return-object p0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 63
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->NULL:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/JarMarker;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 108
    :cond_3
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "JarMarker doesn\'t expect any data"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
