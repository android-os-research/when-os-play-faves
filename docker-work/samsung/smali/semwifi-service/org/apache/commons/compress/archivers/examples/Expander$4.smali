.class Lorg/apache/commons/compress/archivers/examples/Expander$4;
.super Ljava/lang/Object;
.source "Expander.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/examples/Expander$EntryWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

.field final synthetic val$archive:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/examples/Expander;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .registers 3

    .line 196
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/examples/Expander$4;->this$0:Lorg/apache/commons/compress/archivers/examples/Expander;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/examples/Expander$4;->val$archive:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeEntryDataTo(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/examples/Expander$4;->val$archive:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object p0

    .line 200
    :try_start_8
    invoke-static {p0, p2}, Lorg/apache/commons/compress/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    if-eqz p0, :cond_10

    .line 201
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_10
    return-void

    :catchall_11
    move-exception p1

    if-eqz p0, :cond_1c

    .line 199
    :try_start_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw p1
.end method
