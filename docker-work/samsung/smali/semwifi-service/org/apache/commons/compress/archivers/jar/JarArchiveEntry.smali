.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "JarArchiveEntry.java"


# instance fields
.field private final certificates:[Ljava/security/cert/Certificate;

.field private final manifestAttributes:Ljava/util/jar/Attributes;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/util/jar/JarEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    .line 37
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    if-eqz p0, :cond_c

    .line 78
    array-length v0, p0

    new-array v1, v0, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    .line 79
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getManifestAttributes()Ljava/util/jar/Attributes;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    return-object p0
.end method
