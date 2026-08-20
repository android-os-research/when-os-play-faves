.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;
.super Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedFileChannelInputStream"
.end annotation


# instance fields
.field private final archive:Ljava/nio/channels/FileChannel;

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .registers 6

    .line 1183
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 1184
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    .line 1185
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->-$$Nest$fgetarchive(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/FileChannel;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->archive:Ljava/nio/channels/FileChannel;

    return-void
.end method


# virtual methods
.method protected read(JLjava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1190
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->archive:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p0

    .line 1191
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p0
.end method
