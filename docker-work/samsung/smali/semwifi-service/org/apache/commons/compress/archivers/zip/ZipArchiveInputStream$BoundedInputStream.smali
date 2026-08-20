.class Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private final in:Ljava/io/InputStream;

.field private final max:J

.field private pos:J

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V
    .registers 7

    .line 1222
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 1213
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 1223
    iput-wide p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    .line 1224
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 1275
    :cond_10
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 1232
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1233
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 1234
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    const/4 v2, 0x1

    # invokes: Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V

    .line 1235
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->-$$Nest$fgetcurrent(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-static {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1241
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1246
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_10

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    cmp-long v4, v6, v0

    if-ltz v4, :cond_10

    return v5

    :cond_10
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1d

    int-to-long v2, p3

    .line 1249
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    sub-long/2addr v0, v6

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1e

    :cond_1d
    int-to-long v0, p3

    .line 1250
    :goto_1e
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v0, v0

    invoke-virtual {p3, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_28

    return v5

    .line 1256
    :cond_28
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    .line 1257
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    # invokes: Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V
    invoke-static {p2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V

    .line 1258
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->-$$Nest$fgetcurrent(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V

    return p1
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1264
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 1265
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p1

    .line 1266
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;->pos:J

    return-wide p1
.end method
