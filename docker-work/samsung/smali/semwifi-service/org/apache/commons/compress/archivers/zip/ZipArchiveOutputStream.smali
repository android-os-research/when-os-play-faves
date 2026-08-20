.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x200

.field private static final CFH_COMMENT_LENGTH_OFFSET:I = 0x20

.field private static final CFH_COMPRESSED_SIZE_OFFSET:I = 0x14

.field private static final CFH_CRC_OFFSET:I = 0x10

.field private static final CFH_DISK_NUMBER_OFFSET:I = 0x22

.field private static final CFH_EXTERNAL_ATTRIBUTES_OFFSET:I = 0x26

.field private static final CFH_EXTRA_LENGTH_OFFSET:I = 0x1e

.field private static final CFH_FILENAME_LENGTH_OFFSET:I = 0x1c

.field private static final CFH_FILENAME_OFFSET:I = 0x2e

.field private static final CFH_GPB_OFFSET:I = 0x8

.field private static final CFH_INTERNAL_ATTRIBUTES_OFFSET:I = 0x24

.field private static final CFH_LFH_OFFSET:I = 0x2a

.field private static final CFH_METHOD_OFFSET:I = 0xa

.field private static final CFH_ORIGINAL_SIZE_OFFSET:I = 0x18

.field static final CFH_SIG:[B

.field private static final CFH_SIG_OFFSET:I = 0x0

.field private static final CFH_TIME_OFFSET:I = 0xc

.field private static final CFH_VERSION_MADE_BY_OFFSET:I = 0x4

.field private static final CFH_VERSION_NEEDED_OFFSET:I = 0x6

.field static final DD_SIG:[B

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field public static final DEFLATED:I = 0x8

.field public static final EFS_FLAG:I = 0x800
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final EMPTY:[B

.field static final EOCD_SIG:[B

.field private static final LFH_COMPRESSED_SIZE_OFFSET:I = 0x12

.field private static final LFH_CRC_OFFSET:I = 0xe

.field private static final LFH_EXTRA_LENGTH_OFFSET:I = 0x1c

.field private static final LFH_FILENAME_LENGTH_OFFSET:I = 0x1a

.field private static final LFH_FILENAME_OFFSET:I = 0x1e

.field private static final LFH_GPB_OFFSET:I = 0x6

.field private static final LFH_METHOD_OFFSET:I = 0x8

.field private static final LFH_ORIGINAL_SIZE_OFFSET:I = 0x16

.field static final LFH_SIG:[B

.field private static final LFH_SIG_OFFSET:I = 0x0

.field private static final LFH_TIME_OFFSET:I = 0xa

.field private static final LFH_VERSION_NEEDED_OFFSET:I = 0x4

.field private static final LZERO:[B

.field private static final ONE:[B

.field public static final STORED:I

.field private static final ZERO:[B

.field static final ZIP64_EOCD_LOC_SIG:[B

.field static final ZIP64_EOCD_SIG:[B


# instance fields
.field private final calendarInstance:Ljava/util/Calendar;

.field private cdLength:J

.field private cdOffset:J

.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private comment:Ljava/lang/String;

.field private final copyBuffer:[B

.field private createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

.field private fallbackToUTF8:Z

.field protected finished:Z

.field private hasCompressionLevelChanged:Z

.field private hasUsedZip64:Z

.field private level:I

.field private final metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private method:I

.field private final out:Ljava/io/OutputStream;

.field private final streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

.field private useUTF8Flag:Z

.field private zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

.field private zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 146
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EMPTY:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 195
    fill-array-data v0, :array_52

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 200
    fill-array-data v0, :array_58

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    const-wide/16 v0, 0x1

    .line 202
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ONE:[B

    .line 992
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    .line 996
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    .line 1000
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    const-wide/32 v0, 0x6054b50

    .line 1004
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const-wide/32 v0, 0x6064b50

    .line 1008
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    const-wide/32 v0, 0x7064b50

    .line 1012
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    return-void

    nop

    :array_52
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_58
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    const-string v1, ""

    .line 156
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    .line 161
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 167
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    .line 172
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 177
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 190
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    const-string v1, "UTF8"

    .line 217
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 226
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 250
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 255
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 262
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 264
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const v2, 0x8000

    new-array v2, v2, [B

    .line 266
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 287
    new-instance v2, Ljava/util/zip/Deflater;

    iget v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v2, v3, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    const/4 v1, 0x0

    .line 292
    :try_start_57
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    sget-object v4, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    sget-object v5, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    sget-object v6, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    sget-object v7, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 293
    invoke-static {v4, v5, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    .line 292
    invoke-static {v3, v4, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6d} :catch_72

    .line 297
    :try_start_6d
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/nio/channels/SeekableByteChannel;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_71} :catch_73

    goto :goto_84

    :catch_72
    move-object v0, v1

    .line 299
    :catch_73
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 301
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 302
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 304
    :goto_84
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 305
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 306
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5

    .line 273
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    const-string v1, ""

    .line 156
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    .line 161
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 167
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    .line 172
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 177
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 190
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    const-string v1, "UTF8"

    .line 217
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 226
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 250
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 255
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 262
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 264
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const v0, 0x8000

    new-array v0, v0, [B

    .line 266
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 274
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 276
    new-instance v0, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 277
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    const-string v1, ""

    .line 156
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    const/4 v1, -0x1

    .line 161
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 167
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    const/16 v1, 0x8

    .line 172
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 177
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 185
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 190
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    const-string v1, "UTF8"

    .line 217
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 226
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 250
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 255
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 262
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 264
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    const v0, 0x8000

    new-array v0, v0, [B

    .line 266
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    .line 322
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 323
    new-instance v0, Ljava/util/zip/Deflater;

    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 324
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->create(Ljava/nio/channels/SeekableByteChannel;Ljava/util/zip/Deflater;)Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    const/4 p1, 0x0

    .line 325
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v0, v1, :cond_8

    if-nez p2, :cond_25

    .line 1147
    :cond_8
    new-instance p2, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1148
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 1149
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    .line 1150
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 1151
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    sub-int/2addr v4, p3

    invoke-direct {p2, v0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1147
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 1154
    :cond_25
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_60

    const-string p3, ""

    .line 1155
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_60

    .line 1157
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result p3

    .line 1159
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v0, v1, :cond_3f

    if-nez p3, :cond_60

    .line 1161
    :cond_3f
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1162
    new-instance p3, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    .line 1163
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 1164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 1165
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 1166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-direct {p3, p2, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    .line 1162
    invoke-virtual {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    :cond_60
    return-void
.end method

.method private checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->isZip64Required(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 652
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p1, v1, :cond_11

    goto :goto_21

    .line 653
    :cond_11
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    return v0
.end method

.method private closeCopiedEntry(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->preClose()V

    .line 531
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fputbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    .line 533
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    .line 534
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeEntry(ZZ)V

    return-void
.end method

.method private closeEntry(ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_9

    .line 538
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_9

    .line 539
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->rewriteSizesAndCrc(Z)V

    :cond_9
    if-nez p2, :cond_14

    .line 543
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    :cond_14
    const/4 p1, 0x0

    .line 545
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    return-void
.end method

.method private copyFromZipInputStream(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v0, :cond_26

    .line 943
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 944
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fputhasWritten(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)V

    .line 946
    :goto_11
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_25

    .line 948
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    .line 949
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(I)V

    goto :goto_11

    :cond_25
    return-void

    .line 941
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;

    .line 1208
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1209
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_34

    .line 1210
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_34

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->-$$Nest$fgetoffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_34

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v1, v2, :cond_32

    goto :goto_34

    :cond_32
    const/4 v1, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v1, 0x1

    :goto_35
    if-eqz v1, :cond_46

    .line 1214
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq v2, v3, :cond_3e

    goto :goto_46

    .line 1218
    :cond_3e
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string p1, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1223
    :cond_46
    :goto_46
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->-$$Nest$fgetoffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V

    .line 1225
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;Z)[B
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 1238
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v1

    .line 1241
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v2, ""

    .line 1246
    :cond_d
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1247
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1248
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2e

    .line 1249
    array-length v6, v1

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    .line 1250
    new-array v6, v6, [B

    .line 1252
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    const/16 v10, 0x8

    shl-int/2addr v7, v10

    iget-boolean v11, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    const/16 v12, 0x14

    if-nez v11, :cond_44

    move v11, v12

    goto :goto_46

    :cond_44
    const/16 v11, 0x2d

    :goto_46
    or-int/2addr v7, v11

    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1259
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    .line 1260
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v9

    .line 1261
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->-$$Nest$fgetusesDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)Z

    move-result v11

    move/from16 v13, p4

    invoke-direct {p0, v7, v13, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtract(IZZ)I

    move-result v11

    const/4 v13, 0x6

    invoke-static {v11, v6, v13}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    if-nez v9, :cond_6e

    .line 1263
    iget-boolean v9, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v9, :cond_6e

    const/4 v9, 0x1

    goto :goto_6f

    :cond_6e
    move v9, v8

    :goto_6f
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->-$$Nest$fgetusesDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)Z

    move-result v11

    invoke-direct {p0, v9, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v9

    invoke-virtual {v9, v6, v10}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode([BI)V

    const/16 v9, 0xa

    .line 1266
    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1270
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    const/16 v11, 0xc

    invoke-static {v7, v9, v10, v6, v11}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 1275
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    const/16 v7, 0x10

    invoke-static {v9, v10, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 1276
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v9

    const-wide v13, 0xffffffffL

    cmp-long v7, v9, v13

    const/16 v9, 0x18

    if-gez v7, :cond_c0

    .line 1277
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    cmp-long v7, v10, v13

    if-gez v7, :cond_c0

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v10, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v7, v10, :cond_b1

    goto :goto_c0

    .line 1282
    :cond_b1
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 1283
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_c8

    .line 1279
    :cond_c0
    :goto_c0
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v7, v6, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    .line 1280
    invoke-virtual {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    :goto_c8
    const/16 v7, 0x1c

    .line 1286
    invoke-static {v3, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1289
    array-length v7, v1

    const/16 v9, 0x1e

    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    const/16 v7, 0x20

    .line 1291
    invoke-static {v4, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1294
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    const/16 v9, 0x22

    const/4 v10, 0x2

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1297
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    const/16 v9, 0x24

    invoke-static {v7, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1300
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v9

    const/16 v7, 0x26

    invoke-static {v9, v10, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 1303
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->-$$Nest$fgetoffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v9

    cmp-long v7, v9, v13

    const/16 v9, 0x2a

    if-gez v7, :cond_10f

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v7, :cond_103

    goto :goto_10f

    .line 1306
    :cond_103
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;->-$$Nest$fgetoffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;)J

    move-result-wide v10

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v10, v11, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_112

    .line 1304
    :cond_10f
    :goto_10f
    invoke-static {v13, v14, v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 1310
    :goto_112
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    const/16 v9, 0x2e

    invoke-static {v0, v7, v6, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1313
    array-length v0, v1

    invoke-static {v1, v8, v6, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1315
    array-length v0, v1

    add-int/2addr v5, v0

    .line 1318
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-static {v0, v1, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v6
.end method

.method private createLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;ZZJ)[B
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1050
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 1051
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;

    if-eqz v4, :cond_13

    .line 1053
    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1056
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAlignment()I

    move-result v3

    if-gtz v3, :cond_1f

    if-eqz v4, :cond_1f

    .line 1058
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->getAlignment()S

    move-result v3

    :cond_1f
    const/16 v5, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gt v3, v6, :cond_2d

    if-eqz v4, :cond_61

    .line 1061
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange()Z

    move-result v8

    if-nez v8, :cond_61

    .line 1063
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    sub-int/2addr v8, v9

    .line 1064
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v8, v9

    move-wide/from16 v9, p5

    neg-long v9, v9

    int-to-long v11, v8

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x4

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    add-int/lit8 v8, v3, -0x1

    int-to-long v11, v8

    and-long v8, v9, v11

    long-to-int v8, v8

    .line 1069
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;

    if-eqz v4, :cond_5a

    .line 1070
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;->allowMethodChange()Z

    move-result v4

    if-eqz v4, :cond_5a

    move v4, v6

    goto :goto_5b

    :cond_5a
    move v4, v7

    :goto_5b
    invoke-direct {v9, v3, v4, v8}, Lorg/apache/commons/compress/archivers/zip/ResourceAlignmentExtraField;-><init>(IZI)V

    .line 1069
    invoke-virtual {v1, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 1073
    :cond_61
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v3

    .line 1074
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    sub-int/2addr v4, v8

    add-int/lit8 v8, v4, 0x1e

    .line 1075
    array-length v9, v3

    add-int/2addr v9, v8

    .line 1076
    new-array v9, v9, [B

    .line 1078
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    const/4 v11, 0x4

    invoke-static {v10, v7, v9, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1081
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v10

    .line 1082
    invoke-direct {v0, v10, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->usesDataDescriptor(IZ)Z

    move-result v12

    .line 1084
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v13

    invoke-direct {v0, v10, v13, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtract(IZZ)I

    move-result v13

    invoke-static {v13, v9, v11}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    if-nez p3, :cond_94

    .line 1086
    iget-boolean v13, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v13, :cond_94

    goto :goto_95

    :cond_94
    move v6, v7

    :goto_95
    invoke-direct {v0, v6, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v6

    const/4 v12, 0x6

    .line 1087
    invoke-virtual {v6, v9, v12}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode([BI)V

    const/16 v6, 0x8

    .line 1090
    invoke-static {v10, v9, v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1092
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->calendarInstance:Ljava/util/Calendar;

    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v13

    const/16 v15, 0xa

    invoke-static {v12, v13, v14, v9, v15}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    const/16 v12, 0xe

    if-eqz v2, :cond_b9

    .line 1096
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    invoke-static {v13, v14, v9, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_cd

    :cond_b9
    if-eq v10, v6, :cond_c8

    .line 1097
    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v13, :cond_c0

    goto :goto_c8

    .line 1100
    :cond_c0
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v13

    invoke-static {v13, v14, v9, v12}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_cd

    .line 1098
    :cond_c8
    :goto_c8
    sget-object v13, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-static {v13, v7, v9, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    :goto_cd
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v12

    const/16 v13, 0x16

    const/16 v14, 0x12

    if-eqz v12, :cond_e6

    .line 1109
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v9, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    .line 1110
    invoke-virtual {v0, v9, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong([BI)V

    goto :goto_115

    :cond_e6
    if-eqz v2, :cond_f7

    .line 1112
    invoke-virtual/range {p1 .. p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v10

    invoke-static {v10, v11, v9, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 1113
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1, v9, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_115

    :cond_f7
    if-eq v10, v6, :cond_10d

    .line 1114
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_fe

    goto :goto_10d

    .line 1118
    :cond_fe
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v10

    invoke-static {v10, v11, v9, v14}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    .line 1119
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1, v9, v13}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->putLong(J[BI)V

    goto :goto_115

    .line 1115
    :cond_10d
    :goto_10d
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-static {v0, v7, v9, v14, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1116
    invoke-static {v0, v7, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_115
    const/16 v0, 0x1a

    .line 1122
    invoke-static {v4, v9, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1125
    array-length v0, v3

    const/16 v1, 0x1c

    invoke-static {v0, v9, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->putShort(I[BI)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-static {v0, v1, v9, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    array-length v0, v3

    invoke-static {v3, v7, v9, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v9
.end method

.method private flushDeflater()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 597
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->flushDeflater()V

    :cond_13
    return-void
.end method

.method private getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;
    .registers 6

    .line 1579
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->AsNeeded:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-nez v0, :cond_20

    .line 1581
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    .line 1582
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1d

    goto :goto_20

    .line 1585
    :cond_1d
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-object p0

    .line 1583
    :cond_20
    :goto_20
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-object p0
.end method

.method private getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .registers 3

    .line 1589
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 1590
    iget-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz p1, :cond_13

    .line 1591
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_15

    :cond_13
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    :goto_15
    return-object p0
.end method

.method private getGeneralPurposeBits(ZZ)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .registers 5

    .line 1481
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 1482
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    const/4 v1, 0x1

    if-nez p0, :cond_f

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    move p0, v1

    :goto_10
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    if-eqz p2, :cond_18

    .line 1484
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    :cond_18
    return-object v0
.end method

.method private getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1595
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEntryEncoding(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    .registers 5

    .line 1535
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1536
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fputcausedUseOfZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;Z)V

    .line 1538
    :cond_b
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 1539
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 1541
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    if-nez p0, :cond_1c

    .line 1550
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;-><init>()V

    .line 1554
    :cond_1c
    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    return-object p0
.end method

.method private handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_31

    .line 615
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 616
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 617
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    goto/16 :goto_e8

    .line 619
    :cond_31
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-nez v0, :cond_cd

    .line 620
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, p3

    const-string v1, " instead of "

    const-string v2, ": "

    if-nez v0, :cond_8e

    .line 628
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide p3

    cmp-long p3, p3, p1

    if-nez p3, :cond_57

    goto/16 :goto_e8

    .line 629
    :cond_57
    new-instance p3, Ljava/util/zip/ZipException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bad size for entry "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p5

    .line 630
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    .line 631
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 621
    :cond_8e
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bad CRC checksum for entry "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p5

    .line 622
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    .line 623
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 636
    :cond_cd
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 637
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 638
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 641
    :goto_e8
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->checkIfNeedsZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result p0

    return p0
.end method

.method private handleZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;JZ)V
    .registers 11

    if-eqz p4, :cond_57

    .line 1329
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object p4

    .line 1330
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 1331
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_22

    goto :goto_2a

    :cond_22
    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1338
    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_42

    .line 1333
    :cond_2a
    :goto_2a
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1334
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p4, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    :goto_42
    cmp-long v0, p2, v2

    if-gez v0, :cond_4c

    .line 1340
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne p0, v0, :cond_54

    .line 1341
    :cond_4c
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {p4, p0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setRelativeHeaderOffset(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 1343
    :cond_54
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    :cond_57
    return-void
.end method

.method private hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 2

    .line 1566
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private isTooLageForZip32(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 6

    .line 663
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long p0, v0, v2

    if-gez p0, :cond_18

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-ltz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method private isZip64Required(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .registers 4

    .line 659
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, v0, :cond_d

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->isTooLageForZip32(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private preClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_1d

    .line 553
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v0, :cond_15

    .line 557
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgethasWritten(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 558
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EMPTY:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->write([BII)V

    :cond_14
    return-void

    .line 554
    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string v0, "No current entry to close"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 550
    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_c9

    .line 747
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v0, :cond_b

    .line 748
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeArchiveEntry()V

    .line 751
    :cond_b
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry-IA;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    .line 752
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 756
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v0

    .line 757
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V

    .line 759
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 761
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    move-result-object v0

    if-eqz p2, :cond_6b

    .line 767
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    .line 768
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    goto :goto_9a

    .line 769
    :cond_6b
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    .line 770
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_97

    .line 772
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    goto :goto_99

    .line 776
    :cond_97
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->ZERO:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    :goto_99
    move-object v2, v1

    .line 778
    :goto_9a
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 779
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    .line 780
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 783
    :cond_a9
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c5

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v0, :cond_c5

    .line 784
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    const/4 v0, 0x0

    .line 785
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 787
    :cond_c5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Z)V

    return-void

    .line 744
    :cond_c9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private rewriteSizesAndCrc(Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    .line 675
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetlocalDataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 676
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 677
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_42

    if-nez p1, :cond_31

    goto :goto_42

    .line 681
    :cond_31
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 682
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto :goto_64

    .line 678
    :cond_42
    :goto_42
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 679
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 685
    :goto_64
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 686
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 687
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v3, v2

    .line 689
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetlocalDataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    int-to-long v8, v3

    add-long/2addr v4, v8

    add-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 693
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 694
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    if-nez p1, :cond_fd

    .line 699
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetlocalDataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 700
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtract(IZZ)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 704
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 706
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 710
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetcausedUseOfZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 711
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 715
    :cond_fd
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method

.method private setDefaults(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 6

    .line 795
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 796
    iget p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    invoke-virtual {p1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 799
    :cond_c
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1d

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    :cond_1d
    return-void
.end method

.method private shouldAddZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z
    .registers 7

    .line 849
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Always:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, v0, :cond_2e

    .line 850
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_2e

    .line 851
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2e

    .line 852
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2c

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz p0, :cond_2c

    sget-object p0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p2, p0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 p0, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    :goto_2f
    return p0
.end method

.method private usesDataDescriptor(IZ)Z
    .registers 3

    if-nez p2, :cond_c

    const/16 p2, 0x8

    if-ne p1, p2, :cond_c

    .line 1500
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private validateSizeInformation(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-nez v0, :cond_52

    .line 814
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 819
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_42

    .line 823
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    goto :goto_52

    .line 820
    :cond_42
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 815
    :cond_4a
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 826
    :cond_52
    :goto_52
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_73

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_77

    :cond_73
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq p1, v0, :cond_78

    :cond_77
    return-void

    .line 829
    :cond_78
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    .line 830
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;->getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private versionNeededToExtract(IZZ)I
    .registers 4

    if-eqz p2, :cond_5

    const/16 p0, 0x2d

    return p0

    :cond_5
    if-eqz p3, :cond_a

    const/16 p0, 0x14

    return p0

    .line 1496
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->versionNeededToExtractMethod(I)I

    move-result p0

    return p0
.end method

.method private versionNeededToExtractMethod(I)I
    .registers 2

    const/16 p0, 0x8

    if-ne p1, p0, :cond_7

    const/16 p0, 0x14

    goto :goto_9

    :cond_7
    const/16 p0, 0xa

    :goto_9
    return p0
.end method

.method private writeCentralDirectoryInChunks()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x11170

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 486
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    move v3, v2

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 487
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_10

    .line 489
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 490
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_f

    .line 494
    :cond_34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    return-void
.end method

.method private writeCounted([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([B)V

    return-void
.end method

.method private writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v5

    .line 1033
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getName(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1035
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v0, v1, :cond_17

    .line 1036
    invoke-direct {p0, p1, v5, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;ZLjava/nio/ByteBuffer;)V

    .line 1039
    :cond_17
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-wide v7, v0

    .line 1040
    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/nio/ByteBuffer;ZZJ)[B

    move-result-object v2

    .line 1041
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    new-instance v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->usesDataDescriptor(IZ)Z

    move-result p2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, p2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData;-><init>(JZLorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$EntryMetaData-IA;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    const-wide/16 v3, 0xe

    add-long/2addr v0, v3

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fputlocalDataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V

    .line 1043
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1044
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fputdataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V

    return-void
.end method


# virtual methods
.method public addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 578
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 582
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 584
    :cond_10
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2c

    .line 585
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2c

    .line 586
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, 0x0

    .line 587
    :goto_2d
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;Z)V

    .line 588
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->copyFromZipInputStream(Ljava/io/InputStream;)V

    .line 589
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeCopiedEntry(Z)V

    return-void
.end method

.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .registers 4

    .line 904
    instance-of p0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    .line 905
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 906
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq p0, v1, :cond_26

    .line 907
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq p0, v1, :cond_26

    .line 908
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_7

    .line 966
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finish()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    .line 969
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->destroy()V

    return-void

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->destroy()V

    .line 970
    throw v0
.end method

.method public closeArchiveEntry()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->preClose()V

    .line 508
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->flushDeflater()V

    .line 510
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetdataStart(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long v5, v0, v2

    .line 511
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getCrc32()J

    move-result-wide v7

    .line 512
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getBytesRead()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fputbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;J)V

    .line 513
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->getEffectiveZip64Mode(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    move-result-object v9

    move-object v4, p0

    .line 514
    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->handleSizesAndCrc(JJLorg/apache/commons/compress/archivers/zip/Zip64Mode;)Z

    move-result v0

    const/4 v1, 0x0

    .line 515
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeEntry(ZZ)V

    .line 516
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->reset()V

    return-void
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1521
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez p0, :cond_a

    .line 1524
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    .line 1522
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream has already been finished"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final deflate()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1019
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->deflate()V

    return-void
.end method

.method destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_7

    .line 1608
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 1611
    :cond_7
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p0, :cond_e

    .line 1612
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_e
    return-void

    :catchall_f
    move-exception v0

    .line 1611
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p0, :cond_17

    .line 1612
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 1614
    :cond_17
    throw v0
.end method

.method public finish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_3f

    .line 466
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-nez v0, :cond_37

    .line 470
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 471
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralDirectoryInChunks()V

    .line 473
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeZip64CentralDirectory()V

    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralDirectoryEnd()V

    .line 476
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->metaData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 477
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->close()V

    const/4 v0, 0x1

    .line 479
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    return-void

    .line 467
    :cond_37
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive contains unclosed entries."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_3f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 981
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz p0, :cond_7

    .line 982
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_7
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 1

    .line 364
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public isSeekable()Z
    .registers 1

    .line 338
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 727
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;Z)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 861
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3

    .line 351
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 352
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 353
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    if-eqz v0, :cond_15

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    .line 354
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    :cond_15
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .registers 2

    .line 402
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    return-void
.end method

.method public setLevel(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_12

    const/16 v0, 0x9

    if-gt p1, v0, :cond_12

    .line 878
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    if-ne v0, p1, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 881
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 882
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    return-void

    .line 875
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid compression level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMethod(I)V
    .registers 2

    .line 892
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .registers 2

    if-eqz p1, :cond_c

    .line 377
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    return-void
.end method

.method public setUseZip64(Lorg/apache/commons/compress/archivers/zip/Zip64Mode;)V
    .registers 2

    .line 451
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    if-eqz v0, :cond_1f

    .line 925
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 926
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->write([BIII)J

    move-result-wide p1

    .line 927
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(J)V

    return-void

    .line 923
    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected writeCentralDirectoryEnd()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1355
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1358
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1359
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1362
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_27

    .line 1363
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq v2, v3, :cond_1f

    goto :goto_27

    .line 1365
    :cond_1f
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v0, "archive contains more than 65535 entries."

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1368
    :cond_27
    :goto_27
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    if-lez v2, :cond_41

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v3, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-eq v2, v3, :cond_39

    goto :goto_41

    .line 1369
    :cond_39
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;

    const-string v0, "archive\'s size exceeds the limit of 4GByte."

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1373
    :cond_41
    :goto_41
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    .line 1375
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1376
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1379
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1380
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1383
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1384
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1385
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1386
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeCounted([BII)V

    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1201
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[B

    move-result-object p1

    .line 1202
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    return-void
.end method

.method protected writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1178
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->usesDataDescriptor(IZ)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 1181
    :cond_c
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1182
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1183
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1184
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1185
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    goto :goto_4f

    .line 1187
    :cond_39
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    .line 1188
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCounted([B)V

    :goto_4f
    return-void
.end method

.method protected writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1028
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Z)V

    return-void
.end method

.method protected final writeOut([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1463
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    return-void
.end method

.method protected final writeOut([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1476
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->writeOut([BII)V

    return-void
.end method

.method protected writeZip64CentralDirectory()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1396
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zip64Mode:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64Mode;->Never:Lorg/apache/commons/compress/archivers/zip/Zip64Mode;

    if-ne v0, v1, :cond_7

    return-void

    .line 1400
    :cond_7
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v0, :cond_2a

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 1402
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_2a

    :cond_27
    const/4 v0, 0x1

    .line 1404
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    .line 1407
    :cond_2a
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasUsedZip64:Z

    if-nez v0, :cond_2f

    return-void

    .line 1411
    :cond_2f
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->streamCompressor:Lorg/apache/commons/compress/archivers/zip/StreamCompressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/StreamCompressor;->getTotalBytesWritten()J

    move-result-wide v0

    .line 1413
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    const-wide/16 v2, 0x2c

    .line 1417
    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v2

    .line 1416
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    const/16 v2, 0x2d

    .line 1428
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1429
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1432
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1433
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1436
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    .line 1437
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1438
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1441
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1442
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1447
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1450
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1452
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 1454
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ONE:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    return-void
.end method
