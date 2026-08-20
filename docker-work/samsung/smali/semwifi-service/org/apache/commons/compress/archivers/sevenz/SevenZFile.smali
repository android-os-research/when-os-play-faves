.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private compressedBytesReadFromCurrentEntry:J

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private password:[B

.field private uncompressedBytesReadFromCurrentEntry:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcompressedBytesReadFromCurrentEntry(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetuncompressedBytesReadFromCurrentEntry(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputcompressedBytesReadFromCurrentEntry(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 95
    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    .line 1197
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

    return-void

    nop

    :array_12
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 123
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object p2

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 85
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 238
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 239
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 241
    :try_start_16
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    if-eqz p3, :cond_26

    .line 243
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_28

    .line 245
    :cond_26
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_29

    :goto_28
    return-void

    :catchall_29
    move-exception p1

    if-eqz p4, :cond_31

    .line 250
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 252
    :cond_31
    throw p1
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "unknown archive"

    .line 211
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->utf16Decode([C)[B

    move-result-object p2

    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    return-void
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, p2, p3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 999
    new-instance p2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    new-instance p3, Ljava/io/BufferedInputStream;

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v2, v2, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {p3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 1026
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 1027
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move-object v1, p2

    :goto_2a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_70

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1028
    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_68

    iget-wide v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_68

    .line 1031
    iget-object v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v6

    .line 1032
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 1033
    invoke-virtual {p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v2

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    move-object v4, p2

    .line 1032
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v1

    .line 1034
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 1035
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v0, v6, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    .line 1034
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2a

    .line 1029
    :cond_68
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Multi input/output stream coders are not yet supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1037
    :cond_70
    invoke-virtual {p5, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 1038
    iget-boolean p0, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz p0, :cond_84

    .line 1039
    new-instance p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 1040
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    return-object p0

    :cond_84
    return-object v1
.end method

.method private buildDecodingStream()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget v1, v1, v2

    if-gez v1, :cond_12

    .line 958
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 963
    :cond_12
    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v0, v2

    .line 964
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v3, v1, :cond_26

    add-int/lit8 v2, v2, -0x1

    .line 971
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    goto :goto_56

    .line 974
    :cond_26
    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 975
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 976
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_37

    .line 977
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 981
    :cond_37
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v2, v1

    .line 982
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v3, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v7, v3, v1

    const-wide/16 v5, 0x20

    .line 983
    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v0, v5

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v2, v2, v7

    add-long v5, v0, v2

    move-object v3, p0

    move-object v8, v9

    .line 985
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 988
    :goto_56
    new-instance v2, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 989
    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 990
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v3

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v2, v0

    .line 993
    :cond_76
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 906
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    array-length v0, v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 907
    :goto_d
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    move v2, v1

    move v3, v2

    :goto_13
    if-ge v2, v0, :cond_24

    .line 909
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v3, v4, v2

    .line 910
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    const-wide/16 v2, 0x0

    .line 914
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v4, :cond_2c

    array-length v4, v4

    goto :goto_2d

    :cond_2c
    move v4, v1

    .line 915
    :goto_2d
    new-array v5, v4, [J

    iput-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    move v5, v1

    :goto_32
    if-ge v5, v4, :cond_40

    .line 917
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v2, v6, v5

    .line 918
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v6, v6, v5

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 921
    :cond_40
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 922
    iget-object v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    move v0, v1

    move v2, v0

    move v3, v2

    .line 925
    :goto_4e
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v5, v4

    if-ge v0, v5, :cond_a3

    .line 926
    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v4

    if-nez v4, :cond_63

    if-nez v2, :cond_63

    .line 927
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    goto :goto_a0

    :cond_63
    if-nez v2, :cond_84

    .line 931
    :goto_65
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v4

    if-ge v3, v5, :cond_78

    .line 932
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v0, v5, v3

    .line 933
    aget-object v5, v4, v3

    iget v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v5, :cond_75

    goto :goto_78

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 937
    :cond_78
    :goto_78
    array-length v4, v4

    if-ge v3, v4, :cond_7c

    goto :goto_84

    .line 938
    :cond_7c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Too few folders in archive"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 941
    :cond_84
    :goto_84
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v3, v4, v0

    .line 942
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v4

    if-nez v4, :cond_93

    goto :goto_a0

    :cond_93
    add-int/lit8 v2, v2, 0x1

    .line 946
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v4, v3

    iget v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v2, v4, :cond_a0

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    :cond_a0
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 952
    :cond_a3
    iput-object p0, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    return-void
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 1062
    new-instance p0, Ljava/io/ByteArrayInputStream;

    new-array v0, v1, [B

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0

    .line 1064
    :cond_1b
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 1068
    :goto_23
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_50

    .line 1072
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    const-wide v4, 0x7fffffffffffffffL

    .line 1073
    :try_start_39
    invoke-static {v0, v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    if-eqz v0, :cond_41

    .line 1074
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1075
    :cond_41
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    goto :goto_23

    :catchall_44
    move-exception p0

    if-eqz v0, :cond_4f

    .line 1072
    :try_start_47
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw p0

    .line 1078
    :cond_50
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0

    .line 1065
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .registers 1

    .line 1147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static matches([BI)Z
    .registers 5

    .line 1161
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    move p1, v1

    .line 1165
    :goto_8
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v0

    if-ge p1, v2, :cond_17

    .line 1166
    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_14

    return v1

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 719
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 p1, 0x0

    :goto_c
    if-ge p1, p2, :cond_19

    const/4 v0, 0x1

    .line 721
    invoke-virtual {p0, p1, v0}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 724
    :cond_15
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    :cond_19
    return-object p0
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result p0

    :goto_4
    if-eqz p0, :cond_15

    .line 413
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int p0, v0

    .line 414
    new-array p0, p0, [B

    .line 415
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 416
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result p0

    goto :goto_4

    :cond_15
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    new-instance p0, Ljava/util/BitSet;

    invoke-direct {p0, p2}, Ljava/util/BitSet;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v1, p2, :cond_22

    if-nez v2, :cond_13

    const/16 v2, 0x80

    .line 736
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    :cond_13
    and-int v4, v3, v2

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_1a

    :cond_19
    move v4, v0

    .line 738
    :goto_1a
    invoke-virtual {p0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    return-object p0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 425
    iget-object p1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 427
    iget-wide v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v3, 0x20

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    add-long/2addr v1, v3

    .line 430
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v3, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 431
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object p2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v3, p2, v0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 433
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v3, v1

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 434
    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_50

    iget-wide v0, v6, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_50

    .line 437
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 438
    invoke-virtual {p1, v6}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v4

    move-object v7, p3

    .line 437
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_29

    .line 435
    :cond_50
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Multi input/output stream coders are not yet supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 440
    :cond_58
    iget-boolean p0, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz p0, :cond_69

    .line 441
    new-instance p0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    .line 442
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v4

    iget-wide v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    move-object v3, p0

    .line 444
    :cond_69
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide p0

    long-to-int p0, p0

    new-array p0, p0, [B

    .line 445
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 446
    :try_start_75
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_86

    .line 447
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 448
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :catchall_86
    move-exception p0

    .line 445
    :try_start_87
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8f
    throw p0
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 745
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 746
    new-array v4, v3, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    const/4 v5, 0x0

    move v6, v5

    :goto_f
    if-ge v6, v3, :cond_1b

    .line 748
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    .line 754
    :goto_1e
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v9

    const-wide/16 v10, 0x0

    if-nez v9, :cond_aa

    move v1, v5

    move v9, v1

    move v12, v9

    :goto_29
    if-ge v1, v3, :cond_a4

    .line 882
    aget-object v13, v4, v1

    const/4 v14, 0x1

    if-eqz v6, :cond_39

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_37

    goto :goto_39

    :cond_37
    move v15, v5

    goto :goto_3a

    :cond_39
    :goto_39
    move v15, v14

    :goto_3a
    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 883
    aget-object v13, v4, v1

    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v13

    if-eqz v13, :cond_75

    .line 884
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 885
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 886
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v14, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 887
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v14, v14, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 888
    aget-object v13, v4, v1

    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v14, v14, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a1

    .line 891
    :cond_75
    aget-object v13, v4, v1

    if-eqz v7, :cond_82

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_80

    goto :goto_82

    :cond_80
    move v15, v5

    goto :goto_83

    :cond_82
    :goto_82
    move v15, v14

    :goto_83
    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 892
    aget-object v13, v4, v1

    if-eqz v8, :cond_91

    invoke-virtual {v8, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_91

    goto :goto_92

    :cond_91
    move v14, v5

    :goto_92
    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 893
    aget-object v13, v4, v1

    invoke-virtual {v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 894
    aget-object v13, v4, v1

    invoke-virtual {v13, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    add-int/lit8 v12, v12, 0x1

    :goto_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 898
    :cond_a4
    iput-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 899
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    return-void

    .line 758
    :cond_aa
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    const-string v14, "Unimplemented"

    packed-switch v9, :pswitch_data_23a

    .line 872
    :pswitch_b3
    invoke-static {v1, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    cmp-long v2, v10, v12

    if-ltz v2, :cond_222

    goto/16 :goto_21d

    .line 864
    :pswitch_bd
    invoke-static {v1, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    cmp-long v9, v9, v12

    if-ltz v9, :cond_c7

    goto/16 :goto_21d

    .line 865
    :cond_c7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete kDummy property"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :pswitch_cf
    new-instance v0, Ljava/io/IOException;

    const-string v1, "kStartPos is unsupported, please report"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :pswitch_d7
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 845
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_101

    move v10, v5

    :goto_e2
    if-ge v10, v3, :cond_21d

    .line 850
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 851
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v11

    if-eqz v11, :cond_fe

    .line 852
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    :cond_fe
    add-int/lit8 v10, v10, 0x1

    goto :goto_e2

    .line 847
    :cond_101
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :pswitch_107
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 831
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_131

    move v10, v5

    :goto_112
    if-ge v10, v3, :cond_21d

    .line 836
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 837
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v11

    if-eqz v11, :cond_12e

    .line 838
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    :cond_12e
    add-int/lit8 v10, v10, 0x1

    goto :goto_112

    .line 833
    :cond_131
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :pswitch_137
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 817
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_161

    move v10, v5

    :goto_142
    if-ge v10, v3, :cond_21d

    .line 822
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 823
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v11

    if-eqz v11, :cond_15e

    .line 824
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    :cond_15e
    add-int/lit8 v10, v10, 0x1

    goto :goto_142

    .line 819
    :cond_161
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :pswitch_167
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v9

    .line 803
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    if-nez v10, :cond_191

    move v10, v5

    :goto_172
    if-ge v10, v3, :cond_21d

    .line 808
    aget-object v11, v4, v10

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 809
    aget-object v11, v4, v10

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v11

    if-eqz v11, :cond_18e

    .line 810
    aget-object v11, v4, v10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    :cond_18e
    add-int/lit8 v10, v10, 0x1

    goto :goto_172

    .line 805
    :cond_191
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :pswitch_197
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v9

    if-nez v9, :cond_1e8

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    and-long/2addr v14, v12

    cmp-long v9, v14, v10

    if-nez v9, :cond_1e0

    long-to-int v9, v12

    .line 786
    new-array v10, v9, [B

    .line 787
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v11, v5

    move v12, v11

    move v13, v12

    :goto_1ae
    if-ge v11, v9, :cond_1d3

    .line 791
    aget-byte v14, v10, v11

    if-nez v14, :cond_1cd

    add-int/lit8 v14, v11, 0x1

    aget-byte v14, v10, v14

    if-nez v14, :cond_1cd

    add-int/lit8 v14, v13, 0x1

    .line 792
    aget-object v13, v4, v13

    new-instance v15, Ljava/lang/String;

    sub-int v5, v11, v12

    const-string v2, "UTF-16LE"

    invoke-direct {v15, v10, v12, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v13, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    add-int/lit8 v12, v11, 0x2

    move v13, v14

    :cond_1cd
    add-int/lit8 v11, v11, 0x2

    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto :goto_1ae

    :cond_1d3
    if-ne v12, v9, :cond_1d8

    if-ne v13, v3, :cond_1d8

    goto :goto_21d

    .line 797
    :cond_1d8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error parsing file names"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_1e0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File names length invalid"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_1e8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f0
    if-eqz v6, :cond_1fc

    .line 775
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v8, v2

    goto :goto_21d

    .line 773
    :cond_1fc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_204
    if-eqz v6, :cond_210

    .line 768
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v7, v2

    goto :goto_21d

    .line 766
    :cond_210
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :pswitch_218
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    move-object v6, v2

    :cond_21d
    :goto_21d
    move-object/from16 v2, p2

    const/4 v5, 0x0

    goto/16 :goto_1e

    .line 873
    :cond_222
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete property of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_23a
    .packed-switch 0xe
        :pswitch_218
        :pswitch_204
        :pswitch_1f0
        :pswitch_197
        :pswitch_167
        :pswitch_137
        :pswitch_107
        :pswitch_d7
        :pswitch_b3
        :pswitch_b3
        :pswitch_cf
        :pswitch_bd
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 637
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 639
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 640
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move-wide v10, v8

    move v7, v6

    :goto_14
    const-wide/16 v12, 0x1

    if-ge v7, v2, :cond_87

    .line 644
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct {v14}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v14, v3, v7

    .line 645
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v14

    and-int/lit8 v15, v14, 0xf

    and-int/lit8 v16, v14, 0x10

    const/16 v17, 0x1

    if-nez v16, :cond_2e

    move/from16 v16, v17

    goto :goto_30

    :cond_2e
    move/from16 v16, v6

    :goto_30
    and-int/lit8 v18, v14, 0x20

    if-eqz v18, :cond_37

    move/from16 v18, v17

    goto :goto_39

    :cond_37
    move/from16 v18, v6

    :goto_39
    and-int/lit16 v14, v14, 0x80

    if-eqz v14, :cond_3e

    goto :goto_40

    :cond_3e
    move/from16 v17, v6

    .line 651
    :goto_40
    aget-object v14, v3, v7

    new-array v15, v15, [B

    iput-object v15, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 652
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v16, :cond_52

    .line 654
    aget-object v14, v3, v7

    iput-wide v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 655
    iput-wide v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_62

    .line 657
    :cond_52
    aget-object v12, v3, v7

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 658
    aget-object v12, v3, v7

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    iput-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 660
    :goto_62
    aget-object v12, v3, v7

    iget-wide v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    add-long/2addr v8, v13

    .line 661
    iget-wide v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    add-long/2addr v10, v12

    if-eqz v18, :cond_7a

    .line 663
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    .line 664
    aget-object v14, v3, v7

    long-to-int v12, v12

    new-array v12, v12, [B

    iput-object v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 665
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_7a
    if-nez v17, :cond_7f

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 669
    :cond_7f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_87
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 674
    iput-wide v8, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 675
    iput-wide v10, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v2, v10, v4

    if-eqz v2, :cond_f1

    sub-long/2addr v10, v12

    long-to-int v2, v10

    .line 681
    new-array v3, v2, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    move v4, v6

    :goto_96
    if-ge v4, v2, :cond_b0

    .line 683
    new-instance v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct {v5}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v5, v3, v4

    .line 684
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    iput-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 685
    aget-object v5, v3, v4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    iput-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 687
    :cond_b0
    iput-object v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    cmp-long v2, v8, v10

    if-ltz v2, :cond_e9

    sub-long v2, v8, v10

    long-to-int v4, v2

    .line 693
    new-array v5, v4, [J

    cmp-long v2, v2, v12

    if-nez v2, :cond_db

    move v0, v6

    :goto_c0
    long-to-int v2, v8

    if-ge v0, v2, :cond_cd

    .line 697
    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v3

    if-gez v3, :cond_ca

    goto :goto_cd

    :cond_ca
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    :cond_cd
    :goto_cd
    if-eq v0, v2, :cond_d3

    int-to-long v2, v0

    .line 704
    aput-wide v2, v5, v6

    goto :goto_e6

    .line 702
    :cond_d3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_db
    :goto_db
    if-ge v6, v4, :cond_e6

    .line 707
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_db

    .line 710
    :cond_e6
    :goto_e6
    iput-object v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    return-object v1

    .line 690
    :cond_e9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_f1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Total output streams can\'t be 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1188
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1189
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 385
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 386
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_e
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    .line 395
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 396
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_1b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 400
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 401
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_25
    if-nez v0, :cond_28

    return-void

    .line 405
    :cond_28
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Badly terminated header, found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_3f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Additional streams unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 320
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 321
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 324
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 325
    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 329
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 330
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    const/4 v4, 0x1

    if-nez v2, :cond_b3

    const-wide v2, 0xffffffffL

    .line 336
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v5, v0

    and-long/2addr v2, v5

    .line 337
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v0

    .line 339
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v5, v2

    int-to-long v6, v5

    cmp-long v2, v6, v2

    if-nez v2, :cond_9a

    .line 343
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v6, 0x20

    iget-wide v8, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v8, v6

    invoke-interface {v2, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 344
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 345
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 346
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 347
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 348
    iget-wide v5, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v5, v2

    if-nez v0, :cond_92

    .line 352
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 353
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_84

    .line 355
    invoke-direct {p0, v1, v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 357
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 358
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    :cond_84
    if-ne v2, v4, :cond_8a

    .line 361
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    return-object v0

    .line 363
    :cond_8a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Broken or unsupported archive: no Header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :cond_92
    new-instance p0, Ljava/io/IOException;

    const-string p1, "NextHeader CRC mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_9a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot handle nextHeaderSize "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_b3
    new-instance p0, Ljava/io/IOException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 333
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "Unsupported 7z version (%d,%d)"

    .line 332
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :cond_cf
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Bad 7z signature"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 479
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 480
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_2b

    long-to-int v2, v0

    .line 482
    new-array v2, v2, [J

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    move v2, v3

    .line 483
    :goto_19
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v4

    if-ge v2, v5, :cond_27

    .line 484
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 486
    :cond_27
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    :cond_2b
    const/16 v4, 0xa

    if-ne v2, v4, :cond_5a

    long-to-int v0, v0

    .line 490
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    iput-object p0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 491
    new-array p0, v0, [J

    iput-object p0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    :goto_3a
    if-ge v3, v0, :cond_56

    .line 493
    iget-object p0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_53

    .line 494
    iget-object p0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    const-wide v1, 0xffffffffL

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v1, v4

    aput-wide v1, p0, v3

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 498
    :cond_56
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    :cond_5a
    if-nez v2, :cond_5d

    return-void

    .line 502
    :cond_5d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Badly terminated PackInfo ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    .line 372
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v4, 0x14

    invoke-direct {v3, p0, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    move-object v2, v8

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 374
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    iput-wide p0, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 375
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    iput-wide p0, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    const-wide p0, 0xffffffffL

    .line 376
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    int-to-long v2, p2

    and-long/2addr p0, v2

    iput-wide p0, v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_43

    .line 378
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-object v0

    :catchall_43
    move-exception p0

    .line 372
    :try_start_44
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4c
    throw p0
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    .line 455
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 456
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_e
    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    .line 460
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 461
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1e

    :cond_19
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 464
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    :goto_1e
    const/16 v1, 0x8

    if-ne v0, v1, :cond_29

    .line 468
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 469
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    :cond_29
    if-nez v0, :cond_2c

    return-void

    .line 473
    :cond_2c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Badly terminated StreamsInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 554
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    const/4 v5, 0x1

    if-ge v4, v2, :cond_11

    aget-object v6, v1, v4

    .line 555
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 557
    :cond_11
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    .line 559
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v4, :cond_37

    .line 562
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    move v4, v3

    move v6, v4

    :goto_21
    if-ge v6, v2, :cond_32

    aget-object v7, v1, v6

    .line 563
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    long-to-int v10, v8

    .line 564
    iput v10, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    int-to-long v10, v4

    add-long/2addr v10, v8

    long-to-int v4, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 567
    :cond_32
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    move v1, v4

    .line 570
    :cond_37
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 571
    new-array v6, v1, [J

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 572
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v6, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 573
    new-array v1, v1, [J

    iput-object v1, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 576
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v1

    move v7, v3

    move v8, v7

    :goto_50
    const/16 v9, 0x9

    if-ge v7, v6, :cond_84

    aget-object v10, v1, v7

    .line 577
    iget v11, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v11, :cond_5b

    goto :goto_81

    :cond_5b
    const-wide/16 v11, 0x0

    if-ne v2, v9, :cond_75

    move v9, v3

    .line 582
    :goto_60
    iget v13, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v13, v5

    if-ge v9, v13, :cond_75

    .line 583
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    .line 584
    iget-object v15, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v16, v8, 0x1

    aput-wide v13, v15, v8

    add-long/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    goto :goto_60

    .line 588
    :cond_75
    iget-object v9, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v10}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v14

    sub-long/2addr v14, v11

    aput-wide v14, v9, v8

    move v8, v13

    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_50

    :cond_84
    if-ne v2, v9, :cond_8a

    .line 591
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 595
    :cond_8a
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v1

    move v7, v3

    move v8, v7

    :goto_8f
    if-ge v7, v6, :cond_9f

    aget-object v9, v1, v7

    .line 596
    iget v10, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v10, v5, :cond_9b

    iget-boolean v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v9, :cond_9c

    :cond_9b
    add-int/2addr v8, v10

    :cond_9c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8f

    :cond_9f
    const/16 v1, 0xa

    if-ne v2, v1, :cond_108

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 602
    invoke-direct {v1, v6, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    .line 603
    new-array v2, v8, [J

    move v7, v3

    :goto_ae
    if-ge v7, v8, :cond_c6

    .line 605
    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_c3

    const-wide v9, 0xffffffffL

    .line 606
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    int-to-long v11, v11

    and-long/2addr v9, v11

    aput-wide v9, v2, v7

    :cond_c3
    add-int/lit8 v7, v7, 0x1

    goto :goto_ae

    .line 611
    :cond_c6
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v8, v7

    move v9, v3

    move v10, v9

    move v11, v10

    :goto_cc
    if-ge v9, v8, :cond_104

    aget-object v12, v7, v9

    .line 612
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v13, v5, :cond_e6

    iget-boolean v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v13, :cond_e6

    .line 613
    iget-object v13, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v13, v10, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 614
    iget-object v13, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    iget-wide v14, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_101

    :cond_e6
    move v13, v3

    .line 617
    :goto_e7
    iget v14, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v13, v14, :cond_101

    .line 618
    iget-object v14, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v1, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    invoke-virtual {v14, v10, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 619
    iget-object v14, v4, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v15, v2, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_e7

    :cond_101
    :goto_101
    add-int/lit8 v9, v9, 0x1

    goto :goto_cc

    .line 626
    :cond_104
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    :cond_108
    if-nez v2, :cond_10d

    .line 633
    iput-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    return-void

    .line 630
    :cond_10d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Badly terminated SubStreamsInfo"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x0

    move-wide v6, v2

    :goto_b
    const/16 v8, 0x8

    if-ge v5, v8, :cond_2b

    int-to-long v9, v4

    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    if-nez v9, :cond_1d

    add-int/lit8 v4, v4, -0x1

    int-to-long v2, v4

    and-long/2addr v0, v2

    mul-int/2addr v5, v8

    shl-long/2addr v0, v5

    or-long/2addr v0, v6

    return-wide v0

    .line 1139
    :cond_1d
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v8, v8

    mul-int/lit8 v10, v5, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_2b
    return-wide v6
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_ab

    .line 511
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 512
    new-array v1, v0, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 513
    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 514
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result p2

    if-nez p2, :cond_a3

    const/4 p2, 0x0

    move v2, p2

    :goto_19
    if-ge v2, v0, :cond_24

    .line 519
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 522
    :cond_24
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_8c

    move v2, p2

    :goto_2d
    if-ge v2, v0, :cond_4e

    .line 526
    aget-object v3, v1, v2

    .line 527
    iget-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v4, v4

    new-array v4, v4, [J

    iput-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    move v4, p2

    :goto_39
    int-to-long v5, v4

    .line 528
    iget-wide v7, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_4b

    .line 529
    iget-object v5, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 533
    :cond_4e
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_81

    .line 535
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object p0

    move v2, p2

    :goto_5b
    if-ge v2, v0, :cond_7d

    .line 537
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 538
    aget-object v3, v1, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    const-wide v4, 0xffffffffL

    .line 539
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    iput-wide v4, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_7a

    .line 541
    :cond_76
    aget-object v3, v1, v2

    iput-boolean p2, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 545
    :cond_7d
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    :cond_81
    if-nez v2, :cond_84

    return-void

    .line 549
    :cond_84
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Badly terminated UnpackInfo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 524
    :cond_8c
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected kCodersUnpackSize, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_a3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "External unsupported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_ab
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected kFolder, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1177
    :cond_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1178
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_17

    move-wide p1, v1

    :cond_17
    long-to-int v1, p1

    add-int/2addr v0, v1

    .line 1182
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1
.end method

.method private static utf16Decode([C)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1203
    :cond_4
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->PASSWORD_ENCODER:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 1204
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1205
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 1207
    :cond_19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1208
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 273
    :try_start_6
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_15

    .line 275
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 276
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v0, :cond_12

    .line 277
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 279
    :cond_12
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_22

    :catchall_15
    move-exception v0

    .line 275
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 276
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1f

    .line 277
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 279
    :cond_1f
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 280
    throw v0

    :cond_22
    :goto_22
    return-void
.end method

.method public getEntries()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 295
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 296
    aget-object v0, v1, v0

    .line 297
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream()V

    const-wide/16 v1, 0x0

    .line 298
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .registers 2

    .line 1118
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_11

    .line 1055
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    :cond_11
    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1090
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_10

    .line 1106
    iget-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    :cond_10
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 1194
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
