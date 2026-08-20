.class Lorg/apache/commons/compress/archivers/examples/Archiver$5;
.super Ljava/lang/Object;
.source "Archiver.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiveEntryConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

.field final synthetic val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V
    .registers 3

    .line 170
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->this$0:Lorg/apache/commons/compress/archivers/examples/Archiver;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 173
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_3a

    const/16 p2, 0x1f58

    new-array p2, p2, [B

    .line 177
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1f
    const/4 p1, -0x1

    .line 178
    :try_start_20
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq p1, v2, :cond_2c

    .line 179
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {p1, p2, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_30

    goto :goto_1f

    .line 182
    :cond_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3a

    :catchall_30
    move-exception p0

    .line 177
    :try_start_31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_39
    throw p0

    .line 184
    :cond_3a
    :goto_3a
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/examples/Archiver$5;->val$target:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->closeArchiveEntry()V

    return-void
.end method
