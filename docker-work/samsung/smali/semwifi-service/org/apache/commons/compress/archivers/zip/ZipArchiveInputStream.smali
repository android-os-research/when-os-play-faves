.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ZipArchiveInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
    }
.end annotation


# static fields
.field private static final APK_SIGNING_BLOCK_MAGIC:[B

.field private static final CFH:[B

.field private static final CFH_LEN:I = 0x2e

.field private static final DD:[B

.field private static final LFH:[B

.field private static final LFH_LEN:I = 0x1e

.field private static final LONG_MAX:Ljava/math/BigInteger;

.field private static final TWO_EXP_32:J = 0x100000000L


# instance fields
.field private allowStoredEntriesWithDataDescriptor:Z

.field private final buf:Ljava/nio/ByteBuffer;

.field private closed:Z

.field private current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

.field final encoding:Ljava/lang/String;

.field private entriesRead:I

.field private hitCentralDirectory:Z

.field private final in:Ljava/io/InputStream;

.field private final inf:Ljava/util/zip/Inflater;

.field private lastStoredEntry:Ljava/io/ByteArrayInputStream;

.field private final lfhBuf:[B

.field private final shortBuf:[B

.field private final skipBuf:[B

.field private final twoDwordBuf:[B

.field private uncompressedCount:J

.field private final useUnicodeExtraFields:Z

.field private final wordBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrent(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;
    .registers 1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 916
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    .line 917
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    .line 918
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1098
    fill-array-data v0, :array_2e

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->APK_SIGNING_BLOCK_MAGIC:[B

    const-wide v0, 0x7fffffffffffffffL

    .line 1101
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LONG_MAX:Ljava/math/BigInteger;

    return-void

    nop

    :array_2e
    .array-data 1
        0x41t
        0x50t
        0x4bt
        0x20t
        0x53t
        0x69t
        0x67t
        0x20t
        0x42t
        0x6ct
        0x6ft
        0x63t
        0x6bt
        0x20t
        0x34t
        0x32t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const-string v0, "UTF8"

    .line 175
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .registers 10

    .line 215
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    .line 96
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    const/16 v0, 0x200

    .line 99
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    const/4 v2, 0x0

    .line 105
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 108
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 115
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    .line 118
    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    const-wide/16 v3, 0x0

    .line 121
    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->uncompressedCount:J

    const/16 v1, 0x1e

    new-array v1, v1, [B

    .line 162
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 163
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skipBuf:[B

    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 164
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->shortBuf:[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 165
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->wordBuf:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 166
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    .line 168
    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    .line 216
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->encoding:Ljava/lang/String;

    .line 217
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 218
    iput-boolean p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    .line 219
    new-instance p2, Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    invoke-direct {p2, p1, p3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    .line 220
    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    .line 223
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;I)V
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    return-void
.end method

.method private bufferContainsSignature(Ljava/io/ByteArrayOutputStream;III)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_5
    if-nez v2, :cond_a9

    add-int v5, p2, p3

    add-int/lit8 v6, v5, -0x4

    if-ge v3, v6, :cond_a9

    .line 934
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    aget-byte v6, v6, v3

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LFH:[B

    aget-byte v8, v7, v1

    if-ne v6, v8, :cond_a4

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    add-int/lit8 v8, v3, 0x1

    aget-byte v6, v6, v8

    const/4 v8, 0x1

    aget-byte v9, v7, v8

    if-ne v6, v9, :cond_a4

    .line 935
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    add-int/lit8 v9, v3, 0x2

    aget-byte v6, v6, v9

    const/4 v10, 0x2

    aget-byte v11, v7, v10

    const/4 v12, 0x3

    if-ne v6, v11, :cond_48

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    add-int/lit8 v11, v3, 0x3

    aget-byte v6, v6, v11

    aget-byte v7, v7, v12

    if-eq v6, v7, :cond_64

    :cond_48
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    .line 936
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    aget-byte v6, v6, v3

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->CFH:[B

    aget-byte v11, v7, v10

    if-ne v6, v11, :cond_6b

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    add-int/lit8 v11, v3, 0x3

    aget-byte v6, v6, v11

    aget-byte v7, v7, v12

    if-ne v6, v7, :cond_6b

    :cond_64
    sub-int v2, v5, v3

    sub-int v2, v2, p4

    :goto_68
    move v4, v2

    move v2, v8

    goto :goto_8a

    .line 941
    :cond_6b
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    aget-byte v6, v6, v9

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->DD:[B

    aget-byte v9, v7, v10

    if-ne v6, v9, :cond_8a

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    add-int/lit8 v9, v3, 0x3

    aget-byte v6, v6, v9

    aget-byte v7, v7, v12

    if-ne v6, v7, :cond_8a

    sub-int v2, v5, v3

    goto :goto_68

    :cond_8a
    :goto_8a
    if-eqz v2, :cond_a4

    .line 951
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    sub-int/2addr v5, v4

    invoke-direct {p0, v6, v5, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 952
    iget-object v5, v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move-object v6, p1

    invoke-virtual {p1, v5, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 953
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    goto :goto_a5

    :cond_a4
    move-object v6, p1

    :goto_a5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_a9
    return v2
.end method

.method private cacheBytesRead(Ljava/io/ByteArrayOutputStream;III)I
    .registers 6

    add-int/2addr p2, p3

    sub-int p3, p2, p4

    add-int/lit8 p3, p3, -0x3

    if-lez p3, :cond_22

    .line 972
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 973
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    add-int/lit8 p2, p4, 0x3

    invoke-static {p1, p3, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22
    return p2
.end method

.method private static checksig([B[B)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 657
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 658
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_c

    return v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private closeEntry()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 684
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_85

    .line 687
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-nez v0, :cond_9

    return-void

    .line 692
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->currentEntryHasOutstandingBytes()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 693
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->drainCurrentEntryData()V

    goto :goto_62

    :cond_13
    const-wide v0, 0x7fffffffffffffffL

    .line 696
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skip(J)J

    .line 698
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2e

    .line 699
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getBytesInflated()J

    move-result-wide v0

    goto :goto_34

    :cond_2e
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v0

    .line 703
    :goto_34
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    if-lez v0, :cond_59

    .line 707
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 708
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V

    .line 712
    :cond_59
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->currentEntryHasOutstandingBytes()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 713
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->drainCurrentEntryData()V

    .line 717
    :cond_62
    :goto_62
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_71

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgethasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 718
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDataDescriptor()V

    .line 721
    :cond_71
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 722
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x0

    .line 723
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 724
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    return-void

    .line 685
    :cond_85
    new-instance p0, Ljava/io/IOException;

    const-string v0, "The stream is closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private currentEntryHasOutstandingBytes()Z
    .registers 5

    .line 735
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1e

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgethasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private drainCurrentEntryData()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_11
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5f

    .line 746
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_3a

    .line 751
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    sub-long/2addr v0, v4

    goto :goto_11

    .line 748
    :cond_3a
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated ZIP entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    .line 749
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    return-void
.end method

.method private fill()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_33

    .line 785
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_32

    .line 787
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 788
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 789
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_32
    return v0

    .line 783
    :cond_33
    new-instance p0, Ljava/io/IOException;

    const-string v0, "The stream is closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findEocdRecord()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    move v3, v1

    :goto_4
    if-nez v2, :cond_c

    .line 1026
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    if-le v3, v1, :cond_49

    .line 1028
    :cond_c
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v0

    goto :goto_4

    .line 1031
    :cond_14
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    .line 1032
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    if-eq v3, v4, :cond_27

    if-ne v3, v1, :cond_22

    goto :goto_49

    .line 1036
    :cond_22
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    goto :goto_4

    .line 1039
    :cond_27
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    const/4 v4, 0x2

    .line 1040
    aget-byte v4, v2, v4

    if-eq v3, v4, :cond_38

    if-ne v3, v1, :cond_33

    goto :goto_49

    .line 1044
    :cond_33
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    goto :goto_4

    .line 1047
    :cond_38
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readOneByte()I

    move-result v3

    if-eq v3, v1, :cond_49

    const/4 v4, 0x3

    .line 1048
    aget-byte v2, v2, v4

    if-ne v3, v2, :cond_44

    goto :goto_49

    .line 1052
    :cond_44
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isFirstByteOfEocdSig(I)Z

    move-result v2

    goto :goto_4

    :cond_49
    :goto_49
    return-void
.end method

.method private getBytesInflated()J
    .registers 9

    .line 772
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    .line 773
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    const-wide v4, 0x100000000L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_23

    :goto_15
    add-long v2, v0, v4

    .line 774
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gtz v6, :cond_23

    move-wide v0, v2

    goto :goto_15

    :cond_23
    return-wide v0
.end method

.method private isApkSigningBlock([B)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getValue([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 1122
    array-length v1, p1

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    int-to-long v3, v1

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->APK_SIGNING_BLOCK_MAGIC:[B

    array-length v5, v1

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1124
    array-length v1, v1

    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 1127
    :try_start_1b
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-gez v5, :cond_3f

    .line 1129
    array-length v5, p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v2, :cond_2a

    return v4

    .line 1134
    :cond_2a
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1135
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v0, v1, :cond_62

    .line 1137
    invoke-direct {p0, v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([BI)V

    goto :goto_62

    .line 1140
    :cond_3f
    :goto_3f
    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_58

    const-wide v1, 0x7fffffffffffffffL

    .line 1141
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 1142
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3f

    .line 1144
    :cond_58
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 1145
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V
    :try_end_62
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_62} :catch_69

    .line 1151
    :cond_62
    :goto_62
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->APK_SIGNING_BLOCK_MAGIC:[B

    invoke-static {v3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :catch_69
    return v4
.end method

.method private isFirstByteOfEocdSig(I)Z
    .registers 3

    .line 1095
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    if-ne p1, p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static matches([BI)Z
    .registers 5

    .line 646
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_7

    return v2

    .line 650
    :cond_7
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p1

    if-nez p1, :cond_29

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    .line 651
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p1

    if-nez p1, :cond_29

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    .line 652
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p1

    if-nez p1, :cond_29

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 653
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->checksig([B[B)Z

    move-result p0

    if-eqz p0, :cond_2a

    :cond_29
    const/4 v2, 0x1

    :cond_2a
    return v2
.end method

.method private processZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipLong;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V
    .registers 6

    .line 390
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 392
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 393
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputusesZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)V

    .line 394
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgethasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-nez v1, :cond_6d

    if-eqz v0, :cond_53

    .line 395
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->ZIP64_MAGIC:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 396
    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 397
    :cond_30
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 398
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_6d

    .line 400
    :cond_53
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 401
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method private pushback([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    int-to-long p1, p3

    .line 983
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    return-void
.end method

.method private readDataDescriptor()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->wordBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 809
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->wordBuf:[B

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 810
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 812
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->wordBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 813
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->wordBuf:[B

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 815
    :cond_20
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 828
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 829
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    .line 830
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_6b

    .line 835
    :cond_4c
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 836
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    goto :goto_8f

    .line 831
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    invoke-direct {p0, v0, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->pushback([BII)V

    .line 832
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 833
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->twoDwordBuf:[B

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    :goto_8f
    return-void
.end method

.method private readDeflated([BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFromInflater([BII)I

    move-result p1

    if-gtz p1, :cond_2b

    .line 553
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_10

    return p3

    .line 555
    :cond_10
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p0

    if-nez p0, :cond_23

    if-eq p1, p3, :cond_1b

    goto :goto_2b

    .line 560
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated ZIP file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 556
    :cond_23
    new-instance p0, Ljava/util/zip/ZipException;

    const-string p1, "This archive needs a preset dictionary which is not supported by Commons Compress."

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    return p1
.end method

.method private readFirstLocalFileHeader([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 369
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 370
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 374
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->SINGLE_SEGMENT_SPLIT_MARKER:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 378
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    const/4 p0, 0x0

    const/16 v2, 0x1a

    .line 379
    invoke-static {p1, v0, p1, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    invoke-static {v1, p0, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    return-void

    .line 371
    :cond_28
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->SPLITTING:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;)V

    throw p0
.end method

.method private readFromInflater([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 573
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 574
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->fill()I

    move-result v1

    if-lez v1, :cond_21

    .line 576
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V

    goto :goto_25

    :cond_21
    const/4 p0, -0x1

    if-ne v1, p0, :cond_35

    return p0

    .line 584
    :cond_25
    :goto_25
    :try_start_25
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0
    :try_end_2b
    .catch Ljava/util/zip/DataFormatException; {:try_start_25 .. :try_end_2b} :catch_36

    if-nez v0, :cond_35

    .line 588
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_35
    return v0

    :catch_36
    move-exception p0

    .line 586
    new-instance p1, Ljava/util/zip/ZipException;

    invoke-virtual {p0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method private readFully([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 795
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([BI)V

    return-void
.end method

.method private readFully([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 800
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-static {v1, p1, p2, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    .line 801
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    if-lt p1, v0, :cond_e

    return-void

    .line 803
    :cond_e
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private readOneByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x1

    .line 1089
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    :cond_d
    return v0
.end method

.method private readStored([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgethasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 513
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_f

    .line 514
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStoredEntry()V

    .line 516
    :cond_f
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    return p0

    .line 519
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    .line 520
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    const/4 v3, -0x1

    if-ltz v2, :cond_2c

    return v3

    .line 524
    :cond_2c
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-lt v2, v4, :cond_6f

    .line 525
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 526
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v3, :cond_62

    .line 531
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 533
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    .line 534
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputbytesReadFromStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V

    goto :goto_6f

    .line 528
    :cond_62
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 529
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Truncated ZIP file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_6f
    :goto_6f
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 538
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long v2, v0, v2

    int-to-long v4, p3

    cmp-long v2, v2, v4

    if-gez v2, :cond_8e

    .line 540
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 542
    :cond_8e
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 543
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide p1

    int-to-long v0, p3

    add-long/2addr p1, v0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;J)V

    return p3
.end method

.method private readStoredEntry()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 891
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetusesZip64(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x14

    goto :goto_12

    :cond_10
    const/16 v1, 0xc

    :goto_12
    const/4 v2, 0x0

    move v3, v2

    :cond_14
    :goto_14
    if-nez v2, :cond_40

    .line 894
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    rsub-int v6, v3, 0x200

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_38

    add-int v5, v4, v3

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2d

    move v3, v5

    goto :goto_14

    .line 906
    :cond_2d
    invoke-direct {p0, v0, v3, v4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->bufferContainsSignature(Ljava/io/ByteArrayOutputStream;III)Z

    move-result v2

    if-nez v2, :cond_14

    .line 908
    invoke-direct {p0, v0, v3, v4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->cacheBytesRead(Ljava/io/ByteArrayOutputStream;III)I

    move-result v3

    goto :goto_14

    .line 898
    :cond_38
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Truncated ZIP file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 912
    :cond_40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 913
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lastStoredEntry:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method private realSkip(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2a

    :goto_6
    cmp-long v2, v0, p1

    if-gez v2, :cond_29

    sub-long v2, p1, v0

    .line 1068
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skipBuf:[B

    const/4 v6, 0x0

    array-length v7, v5

    int-to-long v7, v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_18

    goto :goto_1a

    :cond_18
    array-length v2, v5

    int-to-long v2, v2

    :goto_1a
    long-to-int v2, v2

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    return-void

    .line 1072
    :cond_23
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_6

    :cond_29
    return-void

    .line 1077
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private skipRemainderOfArchive()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2e

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 1012
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->findEocdRecord()V

    const-wide/16 v0, 0x10

    .line 1013
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    .line 1014
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->shortBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 1016
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->shortBuf:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->realSkip(J)V

    return-void
.end method

.method private supportsCompressedSizeFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 6

    .line 860
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 861
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_35

    .line 862
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_35

    .line 863
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    if-eqz p0, :cond_33

    .line 865
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    if-nez p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p0, 0x1

    :goto_36
    return p0
.end method

.method private supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .registers 3

    .line 848
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->allowStoredEntriesWithDataDescriptor:Z

    if-eqz p0, :cond_14

    .line 850
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    if-eqz p0, :cond_2b

    .line 851
    :cond_14
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2b

    .line 852
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p0

    sget-object p1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result p1

    if-ne p0, p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .registers 4

    .line 420
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 421
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 422
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 423
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 424
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsCompressedSizeFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    .line 597
    :try_start_7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    .line 599
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    goto :goto_19

    :catchall_12
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 600
    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 482
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_13

    .line 483
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetbytesRead(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)J

    move-result-wide v0

    return-wide v0

    .line 484
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_26

    .line 485
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getBytesInflated()J

    move-result-wide v0

    return-wide v0

    .line 486
    :cond_26
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_45

    .line 487
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getCompressedCount()J

    move-result-wide v0

    return-wide v0

    .line 488
    :cond_45
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_64

    .line 489
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->getCompressedCount()J

    move-result-wide v0

    return-wide v0

    .line 490
    :cond_64
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_83

    .line 491
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->getCompressedCount()J

    move-result-wide v0

    return-wide v0

    .line 492
    :cond_83
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_a2

    .line 493
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getCompressedCount()J

    move-result-wide v0

    return-wide v0

    :cond_a2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public getNextZipEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 227
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->uncompressedCount:J

    .line 230
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_22a

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    if-eqz v0, :cond_f

    goto/16 :goto_22a

    .line 233
    :cond_f
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1a

    .line 234
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closeEntry()V

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v3

    .line 238
    :goto_1b
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v4

    if-eqz v0, :cond_27

    .line 245
    :try_start_21
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFirstLocalFileHeader([B)V

    goto :goto_2c

    .line 247
    :cond_27
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V
    :try_end_2c
    .catch Ljava/io/EOFException; {:try_start_21 .. :try_end_2c} :catch_22a

    .line 253
    :goto_2c
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-direct {v0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 254
    sget-object v6, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 255
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipLong;->AED_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->isApkSigningBlock([B)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_6c

    .line 260
    :cond_54
    new-instance p0, Ljava/util/zip/ZipException;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unexpected record signature: 0X%X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_6c
    :goto_6c
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->hitCentralDirectory:Z

    .line 257
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skipRemainderOfArchive()V

    return-object v1

    .line 264
    :cond_72
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry-IA;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    .line 266
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    const/4 v6, 0x6

    .line 268
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v7

    const/16 v8, 0x8

    shr-int/2addr v0, v8

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 270
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-static {v0, v6}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 272
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_a0

    :cond_9e
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 273
    :goto_a0
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesDataDescriptor()Z

    move-result v10

    invoke-static {v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputhasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Z)V

    .line 274
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 278
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-static {v9, v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    invoke-virtual {v0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    const/16 v0, 0xa

    .line 281
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-static {v8, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v8

    .line 282
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/util/zip/ZipEntry;->setTime(J)V

    const/16 v0, 0xe

    .line 286
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgethasDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Z

    move-result v8

    if-nez v8, :cond_102

    .line 287
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-static {v9, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    const/16 v0, 0x12

    .line 290
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-direct {v8, v9, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    const/16 v0, 0x16

    .line 293
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-direct {v9, v10, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    goto :goto_104

    :cond_102
    move-object v8, v1

    move-object v9, v8

    :goto_104
    const/16 v0, 0x1a

    .line 299
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-static {v10, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    const/16 v10, 0x1c

    .line 303
    iget-object v11, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->lfhBuf:[B

    invoke-static {v11, v10}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v10

    .line 306
    new-array v0, v0, [B

    .line 307
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 308
    iget-object v11, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v11

    invoke-interface {v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;[B)V

    if-eqz v6, :cond_133

    .line 310
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v7

    sget-object v11, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->NAME_WITH_EFS_FLAG:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    invoke-virtual {v7, v11}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V

    .line 313
    :cond_133
    new-array v7, v10, [B

    .line 314
    invoke-direct {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readFully([B)V

    .line 315
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v10}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v10

    invoke-virtual {v10, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra([B)V

    if-nez v6, :cond_150

    .line 317
    iget-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->useUnicodeExtraFields:Z

    if-eqz v6, :cond_150

    .line 318
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v6

    invoke-static {v6, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 321
    :cond_150
    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->processZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipLong;Lorg/apache/commons/compress/archivers/zip/ZipLong;)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setLocalHeaderOffset(J)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setDataOffset(J)V

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setStreamContiguous(Z)V

    .line 327
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_20e

    .line 329
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v1

    if-eqz v1, :cond_21e

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->STORED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    if-eq v0, v1, :cond_21e

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    if-eq v0, v1, :cond_21e

    .line 330
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v5

    invoke-direct {v1, p0, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$BoundedInputStream;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;Ljava/io/InputStream;J)V

    .line 331
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_203

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1de

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1d3

    if-eq v0, v2, :cond_1c8

    goto :goto_21e

    .line 345
    :cond_1c8
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v2, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)V

    goto :goto_21e

    .line 342
    :cond_1d3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)V

    goto :goto_21e

    .line 336
    :cond_1de
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v4

    .line 337
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result v5

    invoke-direct {v2, v4, v5, v1}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)V

    goto :goto_21e

    .line 333
    :cond_203
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)V

    goto :goto_21e

    .line 354
    :cond_20e
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    if-ne v0, v1, :cond_21e

    .line 355
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    new-instance v1, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fputin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;Ljava/io/InputStream;)V

    .line 358
    :cond_21e
    :goto_21e
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->entriesRead:I

    .line 359
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    return-object p0

    :catch_22a
    :cond_22a
    :goto_22a
    return-object v1
.end method

.method public getUncompressedCount()J
    .registers 3

    .line 504
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->uncompressedCount:J

    return-wide v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->closed:Z

    if-nez v0, :cond_fa

    .line 435
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 440
    :cond_a
    array-length v1, p1

    if-gt p2, v1, :cond_f4

    if-ltz p3, :cond_f4

    if-ltz p2, :cond_f4

    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, p3, :cond_f4

    .line 444
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 445
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsDataDescriptorFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 449
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->supportsCompressedSizeFor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 455
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_46

    .line 456
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readStored([BII)I

    move-result p3

    goto/16 :goto_c6

    .line 457
    :cond_46
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_59

    .line 458
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->readDeflated([BII)I

    move-result p3

    goto :goto_c6

    .line 459
    :cond_59
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_bc

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_bc

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_bc

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_a2

    goto :goto_bc

    .line 465
    :cond_a2
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result p2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object p2

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw p1

    .line 463
    :cond_bc
    :goto_bc
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetin(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    :goto_c6
    if-ltz p3, :cond_d7

    .line 470
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetcrc(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Ljava/util/zip/CRC32;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 471
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->uncompressedCount:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->uncompressedCount:J

    :cond_d7
    return p3

    .line 450
    :cond_d8
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object p2, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->UNKNOWN_COMPRESSED_SIZE:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw p1

    .line 446
    :cond_e6
    new-instance p1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    sget-object p2, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;->DATA_DESCRIPTOR:Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;

    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->current:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;->-$$Nest$fgetentry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream$CurrentEntry;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw p1

    .line 441
    :cond_f4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 432
    :cond_fa
    new-instance p0, Ljava/io/IOException;

    const-string p1, "The stream is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_25

    :goto_6
    cmp-long v2, v0, p1

    if-gez v2, :cond_24

    sub-long v2, p1, v0

    .line 625
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->skipBuf:[B

    const/4 v5, 0x0

    array-length v6, v4

    int-to-long v6, v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_16

    goto :goto_18

    :cond_16
    array-length v2, v4

    int-to-long v2, v2

    :goto_18
    long-to-int v2, v2

    invoke-virtual {p0, v4, v5, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_21

    return-wide v0

    :cond_21
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_6

    :cond_24
    return-wide v0

    .line 633
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
