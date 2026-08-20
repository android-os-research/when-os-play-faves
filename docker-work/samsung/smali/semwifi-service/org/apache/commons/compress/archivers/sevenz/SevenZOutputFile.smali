.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
.super Ljava/lang/Object;
.source "SevenZOutputFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;
    }
.end annotation


# instance fields
.field private additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

.field private final additionalSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            "[J>;"
        }
    .end annotation
.end field

.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private final compressedCrc32:Ljava/util/zip/CRC32;

.field private contentMethods:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final crc32:Ljava/util/zip/CRC32;

.field private currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

.field private fileBytesWritten:J

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private numNonEmptyStreams:I


# direct methods
.method static bridge synthetic -$$Nest$fgetchannel(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/nio/channels/SeekableByteChannel;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcompressedCrc32(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcrc32(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)Ljava/util/zip/CRC32;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfileBytesWritten(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)J
    .registers 3

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputfileBytesWritten(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;J)V
    .registers 3

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    .line 72
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 71
    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    .line 54
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    .line 55
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    const-wide/16 v1, 0x0

    .line 56
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    .line 57
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    .line 60
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->contentMethods:Ljava/lang/Iterable;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalSizes:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v0, 0x20

    .line 89
    invoke-interface {p1, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    return-void
.end method

.method private getContentMethods(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object p1

    if-nez p1, :cond_8

    .line 351
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->contentMethods:Ljava/lang/Iterable;

    :cond_8
    return-object p1
.end method

.method private getCurrentOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    if-nez v0, :cond_a

    .line 302
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->setupFileOutputStream()Lorg/apache/commons/compress/utils/CountingOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 304
    :cond_a
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    return-object p0
.end method

.method private static reverse(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 763
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 764
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 765
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method private setupFileOutputStream()Lorg/apache/commons/compress/utils/CountingOutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_68

    .line 312
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$OutputStreamWrapper-IA;)V

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 315
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getContentMethods(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    if-nez v4, :cond_40

    .line 317
    new-instance v4, Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-direct {v4, v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    .line 321
    :cond_40
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getOptions()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addEncoder(Ljava/io/OutputStream;Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v0

    const/4 v4, 0x0

    goto :goto_29

    .line 324
    :cond_4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    .line 325
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/utils/CountingOutputStream;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 327
    :cond_62
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/OutputStream;)V

    return-object v1

    .line 309
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No current 7z entry"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x7

    const/4 v0, 0x0

    move v2, p0

    move v1, v0

    move v3, v1

    :goto_5
    if-ge v1, p3, :cond_19

    .line 750
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_16

    .line 752
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    move v2, p0

    move v3, v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    if-eq v2, p0, :cond_1e

    .line 758
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    :cond_1e
    return-void
.end method

.method private writeFileATimes(Ljava/io/DataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 623
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    if-lez v2, :cond_a7

    const/16 v0, 0x13

    .line 628
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 630
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 631
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 632
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_69

    .line 633
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 634
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 635
    :goto_45
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 636
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 638
    :cond_5f
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_6d

    :cond_69
    const/4 v2, 0x1

    .line 640
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 642
    :goto_6d
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 643
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_76
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 644
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 646
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getAccessDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v4

    .line 645
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_76

    .line 649
    :cond_98
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 650
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 651
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 652
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_a7
    return-void
.end method

.method private writeFileAntiItems(Ljava/io/DataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 549
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 550
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v5

    if-nez v5, :cond_d

    .line 551
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem()Z

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 552
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    or-int/2addr v1, v4

    move v3, v5

    goto :goto_d

    :cond_2b
    if-eqz v1, :cond_4e

    const/16 v1, 0x10

    .line 557
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 558
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 559
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 560
    invoke-direct {p0, v2, v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 561
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 562
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 563
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 564
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_4e
    return-void
.end method

.method private writeFileCTimes(Ljava/io/DataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 587
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    if-lez v2, :cond_a7

    const/16 v0, 0x12

    .line 592
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 594
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 595
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 596
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_69

    .line 597
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 598
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 599
    :goto_45
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 600
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 602
    :cond_5f
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_6d

    :cond_69
    const/4 v2, 0x1

    .line 604
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 606
    :goto_6d
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 607
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_76
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 608
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 610
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v4

    .line 609
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_76

    .line 613
    :cond_98
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 614
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 615
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 616
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_a7
    return-void
.end method

.method private writeFileEmptyFiles(Ljava/io/DataOutput;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 526
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 527
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v5

    if-nez v5, :cond_d

    .line 528
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory()Z

    move-result v4

    add-int/lit8 v5, v3, 0x1

    xor-int/lit8 v6, v4, 0x1

    .line 529
    invoke-virtual {v0, v3, v6}, Ljava/util/BitSet;->set(IZ)V

    xor-int/lit8 v3, v4, 0x1

    or-int/2addr v1, v3

    move v3, v5

    goto :goto_d

    :cond_2f
    if-eqz v1, :cond_52

    const/16 v1, 0xf

    .line 534
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 535
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 536
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 537
    invoke-direct {p0, v2, v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 538
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 539
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 540
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 541
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_52
    return-void
.end method

.method private writeFileEmptyStreams(Ljava/io/DataOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 501
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v3

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    if-eqz v0, :cond_6c

    const/16 v0, 0xe

    .line 507
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 508
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 509
    :goto_2f
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4a

    .line 510
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 512
    :cond_4a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 513
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 514
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 515
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 516
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 517
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 518
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_6c
    return-void
.end method

.method private writeFileMTimes(Ljava/io/DataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 659
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    if-lez v2, :cond_a7

    const/16 v0, 0x14

    .line 664
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 666
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 667
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 668
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_69

    .line 669
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 670
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 671
    :goto_45
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 672
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 674
    :cond_5f
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_6d

    :cond_69
    const/4 v2, 0x1

    .line 676
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 678
    :goto_6d
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 679
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_76
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 680
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 682
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->javaTimeToNtfsTime(Ljava/util/Date;)J

    move-result-wide v4

    .line 681
    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_76

    .line 685
    :cond_98
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 686
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 687
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 688
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_a7
    return-void
.end method

.method private writeFileNames(Ljava/io/DataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x11

    .line 569
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 571
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 573
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 574
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 575
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-16LE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 576
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_19

    .line 578
    :cond_36
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 579
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 580
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 581
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method private writeFileWindowsAttributes(Ljava/io/DataOutput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 695
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    if-lez v2, :cond_a3

    const/16 v0, 0x15

    .line 700
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 702
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 703
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 704
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_69

    .line 705
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 706
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 707
    :goto_45
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 708
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 710
    :cond_5f
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeBits(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_6d

    :cond_69
    const/4 v2, 0x1

    .line 712
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 714
    :goto_6d
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 715
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_76
    :goto_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 716
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 717
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getWindowsAttributes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_76

    .line 720
    :cond_94
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 721
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 722
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 723
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_a3
    return-void
.end method

.method private writeFilesInfo(Ljava/io/DataOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 483
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 485
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 487
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileEmptyStreams(Ljava/io/DataOutput;)V

    .line 488
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileEmptyFiles(Ljava/io/DataOutput;)V

    .line 489
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileAntiItems(Ljava/io/DataOutput;)V

    .line 490
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileNames(Ljava/io/DataOutput;)V

    .line 491
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileCTimes(Ljava/io/DataOutput;)V

    .line 492
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileATimes(Ljava/io/DataOutput;)V

    .line 493
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileMTimes(Ljava/io/DataOutput;)V

    .line 494
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFileWindowsAttributes(Ljava/io/DataOutput;)V

    const/4 p0, 0x0

    .line 495
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private writeFolder(Ljava/io/DataOutput;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 437
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getContentMethods(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    add-int/lit8 v1, v1, 0x1

    .line 439
    invoke-direct {p0, v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeSingleCodec(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;Ljava/io/OutputStream;)V

    goto :goto_e

    :cond_20
    int-to-long v2, v1

    .line 442
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 443
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->write([B)V

    const-wide/16 v2, 0x0

    :goto_2d
    add-int/lit8 p2, v1, -0x1

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-gez p2, :cond_3f

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 445
    invoke-direct {p0, p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 446
    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    move-wide v2, v4

    goto :goto_2d

    :cond_3f
    return-void
.end method

.method private writeHeader(Ljava/io/DataOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 355
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/4 v0, 0x4

    .line 357
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 358
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeStreamsInfo(Ljava/io/DataOutput;)V

    .line 359
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFilesInfo(Ljava/io/DataOutput;)V

    const/4 p0, 0x0

    .line 360
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private writePackInfo(Ljava/io/DataOutput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 375
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const-wide/16 v0, 0x0

    .line 377
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    .line 378
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    const/16 v0, 0x9

    .line 380
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 381
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 382
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 383
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCompressedSize()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    goto :goto_20

    :cond_3a
    const/16 v0, 0xa

    .line 387
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/4 v0, 0x1

    .line 388
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 389
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_49
    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 390
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 391
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCompressedCrcValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_49

    :cond_68
    const/4 p0, 0x0

    .line 395
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private writeSingleCodec(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->getId()[B

    move-result-object p0

    .line 452
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v0

    .line 453
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->getOptions()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->getOptionsAsProperties(Ljava/lang/Object;)[B

    move-result-object p1

    .line 455
    array-length v0, p0

    .line 456
    array-length v1, p1

    if-lez v1, :cond_1e

    or-int/lit8 v0, v0, 0x20

    .line 459
    :cond_1e
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 460
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 462
    array-length p0, p1

    if-lez p0, :cond_2e

    .line 463
    array-length p0, p1

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    .line 464
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_2e
    return-void
.end method

.method private writeStreamsInfo(Ljava/io/DataOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    if-lez v0, :cond_a

    .line 365
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writePackInfo(Ljava/io/DataOutput;)V

    .line 366
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUnpackInfo(Ljava/io/DataOutput;)V

    .line 369
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeSubStreamsInfo(Ljava/io/DataOutput;)V

    const/4 p0, 0x0

    .line 371
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private writeSubStreamsInfo(Ljava/io/DataOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x8

    .line 469
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write(I)V

    const/4 p0, 0x0

    .line 479
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private writeUint64(Ljava/io/DataOutput;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/16 v0, 0x80

    move v1, v0

    move v0, p0

    :goto_5
    const/16 v2, 0x8

    if-ge p0, v2, :cond_21

    const-wide/16 v3, 0x1

    add-int/lit8 v5, p0, 0x1

    mul-int/lit8 v6, v5, 0x7

    shl-long/2addr v3, v6

    cmp-long v3, p2, v3

    if-gez v3, :cond_1c

    int-to-long v0, v0

    mul-int/lit8 v3, p0, 0x8

    ushr-long v3, p2, v3

    or-long/2addr v0, v3

    long-to-int v0, v0

    goto :goto_21

    :cond_1c
    or-int/2addr v0, v1

    ushr-int/lit8 v1, v1, 0x1

    move p0, v5

    goto :goto_5

    .line 739
    :cond_21
    :goto_21
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    :goto_24
    if-lez p0, :cond_31

    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    .line 741
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    ushr-long/2addr p2, v2

    add-int/lit8 p0, p0, -0x1

    goto :goto_24

    :cond_31
    return-void
.end method

.method private writeUnpackInfo(Ljava/io/DataOutput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 399
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/16 v0, 0xb

    .line 401
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 402
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    const/4 v0, 0x0

    .line 403
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 404
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 405
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 406
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeFolder(Ljava/io/DataOutput;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    goto :goto_19

    :cond_2f
    const/16 v1, 0xc

    .line 410
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 411
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 412
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 413
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalSizes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-eqz v3, :cond_62

    .line 415
    array-length v4, v3

    move v5, v0

    :goto_58
    if-ge v5, v4, :cond_62

    aget-wide v6, v3, v5

    .line 416
    invoke-direct {p0, p1, v6, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 419
    :cond_62
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeUint64(Ljava/io/DataOutput;J)V

    goto :goto_3a

    :cond_6a
    const/16 v1, 0xa

    .line 423
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    const/4 v1, 0x1

    .line 424
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 425
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_79
    :goto_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 426
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 427
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_79

    .line 431
    :cond_98
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    if-nez v0, :cond_7

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finish()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 138
    :cond_7
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    return-void

    :catchall_d
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 139
    throw v0
.end method

.method public closeArchiveEntry()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    if-eqz v0, :cond_c

    .line 180
    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->flush()V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->close()V

    .line 184
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 185
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    if-lez v1, :cond_6b

    .line 186
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 187
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->numNonEmptyStreams:I

    .line 188
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    invoke-virtual {v1}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 189
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCompressedSize(J)V

    .line 190
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 191
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCompressedCrcValue(J)V

    .line 192
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 193
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    if-eqz v1, :cond_77

    .line 194
    array-length v1, v1

    new-array v1, v1, [J

    .line 195
    :goto_55
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    array-length v4, v2

    if-ge v3, v4, :cond_65

    .line 196
    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/CountingOutputStream;->getBytesWritten()J

    move-result-wide v7

    aput-wide v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 198
    :cond_65
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalSizes:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 201
    :cond_6b
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 202
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 203
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCompressedSize(J)V

    .line 204
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    :cond_77
    :goto_77
    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->currentOutputStream:Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 207
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->additionalCountingStreams:[Lorg/apache/commons/compress/utils/CountingOutputStream;

    .line 208
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->compressedCrc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 210
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->fileBytesWritten:J

    return-void
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 155
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 156
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(Ljava/util/Date;)V

    return-object p0
.end method

.method public finish()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    if-nez v0, :cond_9b

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finished:Z

    .line 255
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    .line 257
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->writeHeader(Ljava/io/DataOutput;)V

    .line 261
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 262
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 263
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 265
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 266
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 268
    sget-object v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v5, v4

    const/4 v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 274
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 276
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v8, 0x0

    invoke-interface {v7, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 277
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    .line 279
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const-wide/16 v7, 0x20

    sub-long/2addr v0, v7

    .line 285
    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide v7, 0xffffffffL

    array-length v1, v2

    int-to-long v1, v1

    and-long/2addr v1, v7

    .line 286
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 287
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 288
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 289
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v1, v4

    add-int/lit8 v1, v1, 0x6

    const/16 v2, 0x14

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 290
    array-length v0, v4

    add-int/2addr v0, v6

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 292
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {p0, v5}, Ljava/nio/channels/SeekableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void

    .line 251
    :cond_9b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "This archive has already been finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    check-cast p1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 171
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->files:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentCompression(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V
    .registers 3

    .line 105
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->setContentMethods(Ljava/lang/Iterable;)V

    return-void
.end method

.method public setContentMethods(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->reverse(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->contentMethods:Ljava/lang/Iterable;

    return-void
.end method

.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getCurrentOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_9

    .line 240
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->getCurrentOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_9
    return-void
.end method
