.class public Lorg/apache/commons/compress/archivers/examples/Archiver;
.super Ljava/lang/Object;
.source "Archiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;,
        Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;,
        Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private create(Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 199
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;)V

    .line 200
    invoke-interface {p4}, Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;->finish()V

    return-void
.end method

.method private create(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 209
    :cond_7
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_41

    aget-object v2, p2, v1

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "/"

    goto :goto_27

    :cond_25
    const-string v4, ""

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-interface {p3, v2, v3}, Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;->create(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {p4, v2, v4}, Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;->accept(Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 212
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 213
    invoke-direct {p0, v3, v2, p3, p4}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;)V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_41
    return-void
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "zip"

    .line 194
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
.method public create(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 72
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p2

    .line 74
    :try_start_20
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    if-eqz p2, :cond_28

    .line 75
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    :cond_28
    return-void

    :catchall_29
    move-exception p0

    if-eqz p2, :cond_34

    .line 72
    :try_start_2c
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    throw p0

    .line 78
    :cond_35
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    new-array v0, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    .line 79
    :try_start_3f
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_48

    if-eqz p2, :cond_47

    .line 80
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_47
    return-void

    :catchall_48
    move-exception p0

    if-eqz p2, :cond_53

    .line 78
    :try_start_4b
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw p0
.end method

.method public create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V

    return-void
.end method

.method public create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 114
    invoke-static {p2}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V

    goto :goto_2f

    :cond_e
    const-string v0, "zip"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 116
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V

    goto :goto_2f

    :cond_1f
    const-string v0, "7z"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 118
    new-instance p1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V

    :goto_2f
    return-void

    .line 121
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

.method public create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Archiver$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$1;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Archiver$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$2;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Archiver$3;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$3;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;)V

    return-void
.end method

.method public create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Archiver$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$4;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Archiver$5;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$5;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Archiver$6;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver$6;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    invoke-direct {p0, p2, v0, v1, v2}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryCreator;Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;Lorg/apache/commons/compress/archivers/examples/Archiver$Finisher;)V

    return-void
.end method
