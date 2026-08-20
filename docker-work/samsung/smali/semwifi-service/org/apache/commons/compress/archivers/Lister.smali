.class public final Lorg/apache/commons/compress/archivers/Lister;
.super Ljava/lang/Object;
.source "Lister.java"


# static fields
.field private static final factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/Lister;->factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createArchiveInputStream([Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 70
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 71
    sget-object v0, Lorg/apache/commons/compress/archivers/Lister;->factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0

    .line 73
    :cond_d
    sget-object p0, Lorg/apache/commons/compress/archivers/Lister;->factory:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method private static detectFormat(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 78
    :try_start_10
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 79
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_18
    move-exception p0

    .line 77
    :try_start_19
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw p0
.end method

.method private static list7z(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;)V

    .line 84
    :try_start_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    :goto_1f
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_33

    goto :goto_1f

    .line 89
    :cond_2f
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    return-void

    :catchall_33
    move-exception p0

    .line 83
    :try_start_34
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw p0
.end method

.method private static listStream(Ljava/io/File;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    :try_start_10
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/Lister;->createArchiveInputStream([Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_51

    .line 60
    :try_start_14
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    :goto_2e
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 63
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_14 .. :try_end_3d} :catchall_45

    goto :goto_2e

    .line 65
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_51

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_45
    move-exception p1

    if-eqz p0, :cond_50

    .line 58
    :try_start_48
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_50

    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw p1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p0

    :try_start_52
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    array-length v0, p0

    if-nez v0, :cond_7

    .line 41
    invoke-static {}, Lorg/apache/commons/compress/archivers/Lister;->usage()V

    return-void

    .line 44
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analysing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/io/File;

    aget-object v1, p0, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_43

    .line 47
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist or is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    :cond_43
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4a

    aget-object v1, p0, v2

    goto :goto_4e

    :cond_4a
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/Lister;->detectFormat(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :goto_4e
    const-string v2, "7z"

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 51
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/Lister;->list7z(Ljava/io/File;)V

    goto :goto_5d

    .line 53
    :cond_5a
    invoke-static {v0, p0}, Lorg/apache/commons/compress/archivers/Lister;->listStream(Ljava/io/File;[Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method private static usage()V
    .registers 2

    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Parameters: archive-name [archive-type]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
