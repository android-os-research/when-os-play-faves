.class public Lorg/apache/commons/compress/archivers/examples/Expander;
.super Ljava/lang/Object;
.source "Expander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;,
        Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    .line 240
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    :cond_1b
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->getNextReadableEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    :goto_1f
    if-eqz v0, :cond_cb

    .line 245
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 250
    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v2

    const-string v3, "failed to create directory "

    if-eqz v2, :cond_5e

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_97

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_97

    .line 252
    :cond_49
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_5e
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_84

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_6f

    goto :goto_84

    .line 257
    :cond_6f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_84
    :goto_84
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    .line 260
    :try_start_8f
    invoke-interface {p2, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;->writeEntryDataTo(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_9c

    if-eqz v1, :cond_97

    .line 261
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 263
    :cond_97
    :goto_97
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->getNextReadableEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    goto :goto_1f

    :catchall_9c
    move-exception p0

    if-eqz v1, :cond_a7

    .line 259
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a7

    :catchall_a3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    throw p0

    .line 247
    :cond_a8
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expanding "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " would create file outside of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
    return-void
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "zip"

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "7z"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method public expand(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    :try_start_10
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_20

    .line 70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    return-void

    :catchall_20
    move-exception p0

    .line 68
    :try_start_21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p0
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V

    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 86
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p2

    .line 87
    :try_start_16
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1f

    if-eqz p2, :cond_1e

    .line 88
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_1e
    return-void

    :catchall_1f
    move-exception p0

    if-eqz p2, :cond_2a

    .line 86
    :try_start_22
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    throw p0

    .line 91
    :cond_2b
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    :try_start_3a
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_41
    move-exception p0

    .line 91
    :try_start_42
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw p0
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V

    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 138
    invoke-static {p2}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_2f

    :cond_e
    const-string v0, "zip"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 140
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V

    goto :goto_2f

    :cond_1f
    const-string v0, "7z"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 142
    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V

    :goto_2f
    return-void

    .line 145
    :cond_30
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "don\'t know how to handle format "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$1;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$2;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V

    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 216
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$5;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$6;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V

    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 187
    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$3;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$4;-><init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-direct {p0, v1, v0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;Ljava/io/File;)V

    return-void
.end method
