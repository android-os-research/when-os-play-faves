.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_LOCATOR_OFFSET:I = 0x10

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final ONE_ZERO_BYTE:[B

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30


# instance fields
.field private final archive:Ljava/nio/channels/SeekableByteChannel;

.field private final archiveName:Ljava/lang/String;

.field private final cfhBbuf:Ljava/nio/ByteBuffer;

.field private final cfhBuf:[B

.field private volatile closed:Z

.field private final dwordBbuf:Ljava/nio/ByteBuffer;

.field private final dwordBuf:[B

.field private final encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final offsetComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final shortBuf:[B

.field private final useUnicodeExtraFields:Z

.field private final wordBbuf:Ljava/nio/ByteBuffer;

.field private final wordBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static bridge synthetic -$$Nest$fgetarchive(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/nio/channels/SeekableByteChannel;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 96
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->ONE_ZERO_BYTE:[B

    .line 602
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    .line 603
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF8"

    .line 162
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 201
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 219
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    move-object v3, p0

    move-object v6, p2

    move v7, p3

    .line 218
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "UTF8"

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    const-string v1, "UTF8"

    const/4 v2, 0x1

    .line 236
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    const/4 v1, 0x1

    .line 256
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 280
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 146
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 147
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    const/16 v3, 0x2a

    new-array v3, v3, [B

    .line 148
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 149
    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    .line 150
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    .line 151
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBbuf:Ljava/nio/ByteBuffer;

    .line 1213
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->offsetComparator:Ljava/util/Comparator;

    .line 287
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    .line 288
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    .line 289
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 290
    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 291
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 295
    :try_start_53
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object p1

    .line 296
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    return-void

    :catchall_5e
    move-exception p1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-eqz p5, :cond_68

    .line 301
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 303
    :cond_68
    throw p1
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .registers 1

    .line 335
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private createBoundedInputStream(JJ)Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
    .registers 12

    .line 1097
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    instance-of v0, v0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_10

    .line 1098
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    goto :goto_19

    .line 1099
    :cond_10
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V

    :goto_19
    return-object v0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 621
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 623
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 624
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 625
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    .line 627
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2f

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_2f

    .line 628
    :cond_27
    new-instance p0, Ljava/io/IOException;

    const-string v0, "central directory is empty, can\'t expand corrupt archive."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 632
    :cond_2f
    :goto_2f
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4b

    .line 633
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 634
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 635
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 636
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    goto :goto_2f

    :cond_4b
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord()V

    .line 885
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 886
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    if-eqz v0, :cond_33

    .line 888
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-interface {v1, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 889
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 890
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 891
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_33
    if-nez v1, :cond_40

    if-eqz v0, :cond_3c

    const/16 v0, 0x10

    .line 897
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 899
    :cond_3c
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory32()V

    goto :goto_43

    .line 901
    :cond_40
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory64()V

    :goto_43
    return-void
.end method

.method private positionAtCentralDirectory32()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 943
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 944
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 945
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 946
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method

.method private positionAtCentralDirectory64()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 916
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 918
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 919
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 920
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 921
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 922
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 923
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/16 v0, 0x2c

    .line 927
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 929
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 930
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 931
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void

    .line 924
    :cond_4e
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private positionAtEndOfCentralDirectoryRecord()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const-wide/16 v1, 0x16

    const-wide/32 v3, 0x10015

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->tryToLocateSignature(JJ[B)Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    .line 958
    :cond_f
    new-instance p0, Ljava/util/zip/ZipException;

    const-string v0, "archive is not a ZIP archive"

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 654
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 656
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>()V

    .line 658
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    .line 660
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setVersionMadeBy(I)V

    const/16 v2, 0x8

    shr-int/2addr v1, v2

    and-int/lit8 v1, v1, 0xf

    .line 661
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 663
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setVersionRequired(I)V

    .line 666
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v1

    .line 667
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 669
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_3f

    :cond_3d
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    :goto_3f
    if-eqz v4, :cond_46

    .line 671
    sget-object v6, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->NAME_WITH_EFS_FLAG:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V

    .line 673
    :cond_46
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 674
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setRawFlag(I)V

    const/4 v1, 0x6

    .line 679
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 682
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v1

    .line 683
    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    const/16 v1, 0xc

    .line 686
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    const/16 v1, 0x10

    .line 689
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    const/16 v1, 0x14

    .line 692
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    const/16 v1, 0x18

    .line 695
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    const/16 v2, 0x1a

    .line 698
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    const/16 v3, 0x1c

    .line 701
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v6, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    const/16 v6, 0x1e

    .line 704
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v7, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v6

    const/16 v7, 0x20

    .line 707
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v8, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    const/16 v7, 0x22

    .line 710
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v8, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    const/16 v7, 0x26

    .line 713
    new-array v1, v1, [B

    .line 714
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 715
    invoke-interface {v5, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;[B)V

    .line 718
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v8, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setLocalHeaderOffset(J)V

    .line 720
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    new-array v2, v2, [B

    .line 723
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 724
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCentralDirectoryExtra([B)V

    .line 726
    invoke-direct {p0, v0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;I)V

    .line 728
    new-array v2, v3, [B

    .line 729
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 730
    invoke-interface {v5, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    if-nez v4, :cond_114

    .line 732
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    if-eqz p0, :cond_114

    .line 733
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment-IA;)V

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_114
    return-void
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1047
    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 1048
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v2

    .line 1049
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v5, 0x1a

    add-long/2addr v2, v5

    invoke-interface {v4, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1050
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1051
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1052
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1053
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1054
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v4

    .line 1055
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1056
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 1057
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1058
    new-array v6, v5, [B

    .line 1059
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1060
    invoke-virtual {v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    const-wide/16 v6, 0x2

    add-long/2addr v2, v6

    add-long/2addr v2, v6

    int-to-long v6, v4

    add-long/2addr v2, v6

    int-to-long v4, v5

    add-long/2addr v2, v4

    .line 1061
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setDataOffset(J)V

    const/4 v2, 0x1

    .line 1063
    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setStreamContiguous(Z)V

    .line 1065
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1066
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 1067
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->-$$Nest$fgetname(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v3

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->-$$Nest$fgetcomment(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v2

    invoke-static {v1, v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 1071
    :cond_82
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1072
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_9a

    .line 1074
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1075
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    :cond_9a
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9f
    return-void
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 754
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    if-eqz p0, :cond_81

    .line 756
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v4

    .line 757
    :goto_1c
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_26

    move v5, v1

    goto :goto_27

    :cond_26
    move v5, v4

    .line 759
    :goto_27
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-nez v2, :cond_31

    move v2, v1

    goto :goto_32

    :cond_31
    move v2, v4

    :goto_32
    const v3, 0xffff

    if-ne p2, v3, :cond_38

    goto :goto_39

    :cond_38
    move v1, v4

    .line 760
    :goto_39
    invoke-virtual {p0, v0, v5, v2, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    if-eqz v0, :cond_4a

    .line 766
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_58

    :cond_4a
    if-eqz v5, :cond_58

    .line 768
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-direct {p2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    :cond_58
    :goto_58
    if-eqz v5, :cond_66

    .line 772
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_74

    :cond_66
    if-eqz v0, :cond_74

    .line 774
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    :cond_74
    :goto_74
    if-eqz v2, :cond_81

    .line 778
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setLocalHeaderOffset(J)V

    :cond_81
    return-void
.end method

.method private skipBytes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 1013
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_18

    .line 1016
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void

    .line 1014
    :cond_18
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private startsWithLocalFileHeader()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1087
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1088
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1089
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private tryToLocateSignature(JJ[B)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 972
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 973
    invoke-interface {p1}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide p1

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    cmp-long p3, v0, p3

    const/4 p4, 0x1

    const/4 v2, 0x0

    if-ltz p3, :cond_63

    :goto_1a
    cmp-long p3, v0, p1

    if-ltz p3, :cond_63

    .line 976
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p3, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 978
    :try_start_23
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 979
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {p3, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 980
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_23 .. :try_end_34} :catch_63

    .line 984
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    .line 985
    aget-byte v3, p5, v2

    if-ne p3, v3, :cond_5f

    .line 986
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    .line 987
    aget-byte v3, p5, p4

    if-ne p3, v3, :cond_5f

    .line 988
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    const/4 v3, 0x2

    .line 989
    aget-byte v3, p5, v3

    if-ne p3, v3, :cond_5f

    .line 990
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result p3

    const/4 v3, 0x3

    .line 991
    aget-byte v3, p5, v3

    if-ne p3, v3, :cond_5f

    goto :goto_64

    :cond_5f
    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    goto :goto_1a

    :catch_63
    :cond_63
    move p4, v2

    :goto_64
    if-eqz p4, :cond_6b

    .line 1001
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    :cond_6b
    return p4
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 2

    .line 426
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 326
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    return-void
.end method

.method public copyRawEntries(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object v0

    .line 460
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 461
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 462
    invoke-interface {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;->test(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V

    goto :goto_4

    :cond_1e
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 570
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-nez v0, :cond_1f

    .line 571
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up unclosed ZipFile for archive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_23

    .line 576
    :cond_1f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_23
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 577
    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 1

    .line 312
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_b

    goto :goto_f

    .line 395
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 409
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 410
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 411
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->offsetComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 413
    :cond_1f
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 362
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->offsetComparator:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 363
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .registers 2

    .line 379
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_11

    .line 380
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 482
    :cond_6
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 483
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v0

    .line 488
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 489
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->createBoundedInputStream(JJ)Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 490
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8e

    .line 534
    new-instance p0, Ljava/util/zip/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found unsupported compression method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 519
    :pswitch_48
    new-instance p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    .line 517
    :pswitch_4e
    new-instance p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    .line 499
    :pswitch_54
    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 505
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    new-instance v1, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipFile;->ONE_ZERO_BYTE:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, p0, v1, p1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    return-object v0

    .line 496
    :pswitch_6c
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v0

    .line 497
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result p1

    invoke-direct {p0, v0, p1, v2}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V

    return-object p0

    .line 494
    :pswitch_82
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    .line 492
    :pswitch_88
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_88
        :pswitch_82
        :pswitch_6c
        :pswitch_54
        :pswitch_4e
        :pswitch_48
    .end packed-switch
.end method

.method public getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .registers 6

    .line 440
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 443
    :cond_6
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v0

    .line 444
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->createBoundedInputStream(JJ)Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;

    move-result-object p0

    return-object p0
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 554
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 555
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object p1

    .line 556
    :try_start_c
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p1}, Lorg/apache/commons/compress/utils/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1c

    if-eqz p1, :cond_1b

    .line 557
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1b
    return-object p0

    :catchall_1c
    move-exception p0

    if-eqz p1, :cond_27

    .line 555
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method
