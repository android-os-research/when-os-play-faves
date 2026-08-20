.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.source "JarArchiveInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static matches([BI)Z
    .registers 2

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->getNextJarEntry()Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public getNextJarEntry()Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    .line 57
    :cond_8
    new-instance v0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    move-object p0, v0

    :goto_e
    return-object p0
.end method
