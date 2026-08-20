.class Lorg/apache/commons/compress/archivers/examples/Archiver$2;
.super Ljava/lang/Object;
.source "Archiver.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

.field final synthetic val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)V
    .registers 3

    .line 140
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 143
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_2e

    .line 144
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    :try_start_1b
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-static {p2, p1}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_24

    .line 146
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_2e

    :catchall_24
    move-exception p0

    .line 144
    :try_start_25
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p0

    .line 148
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$2;->val$target:Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    return-void
.end method
