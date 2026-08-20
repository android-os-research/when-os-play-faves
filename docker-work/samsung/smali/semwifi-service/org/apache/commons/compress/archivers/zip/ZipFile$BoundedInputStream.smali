.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private final end:J

.field private loc:J

.field private singleByteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .registers 8

    .line 1112
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    add-long v0, p2, p4

    .line 1113
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->end:J

    cmp-long p1, v0, p2

    if-ltz p1, :cond_10

    .line 1118
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    return-void

    .line 1116
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid length of stream at offset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", length="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1123
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->end:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_38

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 v0, -0x1

    .line 1124
    monitor-exit p0

    return v0

    .line 1126
    :cond_c
    :try_start_c
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 1127
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1b

    .line 1130
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1132
    :goto_1b
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->read(JLjava/nio/ByteBuffer;)I

    move-result v0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_38

    if-gez v0, :cond_27

    .line 1134
    monitor-exit p0

    return v0

    .line 1136
    :cond_27
    :try_start_27
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 1137
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->singleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_38

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected read(JLjava/nio/ByteBuffer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1165
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->-$$Nest$fgetarchive(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    monitor-enter v0

    .line 1166
    :try_start_7
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->-$$Nest$fgetarchive(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1167
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->-$$Nest$fgetarchive(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 1168
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1f

    .line 1169
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return p0

    :catchall_1f
    move-exception p0

    .line 1168
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public declared-synchronized read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-gtz p3, :cond_6

    const/4 p1, 0x0

    .line 1143
    monitor-exit p0

    return p1

    :cond_6
    int-to-long v0, p3

    .line 1146
    :try_start_7
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->end:J

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_30

    sub-long v6, v2, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_1a

    cmp-long p3, v4, v2

    if-ltz p3, :cond_18

    const/4 p1, -0x1

    .line 1148
    monitor-exit p0

    return p1

    :cond_18
    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 1154
    :cond_1a
    :try_start_1a
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1155
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->read(JLjava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_2e

    .line 1157
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_30

    .line 1158
    monitor-exit p0

    return p1

    .line 1160
    :cond_2e
    monitor-exit p0

    return p1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method
