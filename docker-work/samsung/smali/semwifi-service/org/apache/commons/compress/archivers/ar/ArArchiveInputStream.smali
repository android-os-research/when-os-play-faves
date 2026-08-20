.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "ArArchiveInputStream.java"


# static fields
.field private static final BSD_LONGNAME_PATTERN:Ljava/lang/String; = "^#1/\\d+"

.field static final BSD_LONGNAME_PREFIX:Ljava/lang/String; = "#1/"

.field private static final BSD_LONGNAME_PREFIX_LEN:I = 0x3

.field private static final FILE_MODE_LEN:I = 0x8

.field private static final FILE_MODE_OFFSET:I = 0x28

.field private static final GNU_LONGNAME_PATTERN:Ljava/lang/String; = "^/\\d+"

.field private static final GNU_STRING_TABLE_NAME:Ljava/lang/String; = "//"

.field private static final GROUP_ID_LEN:I = 0x6

.field private static final GROUP_ID_OFFSET:I = 0x22

.field private static final LAST_MODIFIED_LEN:I = 0xc

.field private static final LAST_MODIFIED_OFFSET:I = 0x10

.field private static final LENGTH_LEN:I = 0xa

.field private static final LENGTH_OFFSET:I = 0x30

.field private static final NAME_LEN:I = 0x10

.field private static final NAME_OFFSET:I = 0x0

.field private static final USER_ID_LEN:I = 0x6

.field private static final USER_ID_OFFSET:I = 0x1c


# instance fields
.field private closed:Z

.field private currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

.field private entryOffset:J

.field private final input:Ljava/io/InputStream;

.field private final metaData:[B

.field private namebuffer:[B

.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    const/16 v0, 0x3a

    new-array v0, v0, [B

    .line 72
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    .line 82
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    return-void
.end method

.method private asInt([BII)I
    .registers 10

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 213
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p0

    return p0
.end method

.method private asInt([BIII)I
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 221
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p0

    return p0
.end method

.method private asInt([BIIIZ)I
    .registers 6

    .line 225
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_12

    if-eqz p5, :cond_12

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_12
    invoke-static {p0, p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private asInt([BIIZ)I
    .registers 11

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 217
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIIZ)I

    move-result p0

    return p0
.end method

.method private asLong([BII)J
    .registers 4

    .line 209
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getBSDLongName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->BSD_LONGNAME_PREFIX_LEN:I

    .line 339
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 340
    new-array v0, p1, [B

    .line 341
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    int-to-long v2, v1

    .line 342
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    if-ne v1, p1, :cond_1d

    .line 346
    invoke-static {v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_1d
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private getExtendedName(I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    if-eqz v0, :cond_3d

    move v0, p1

    .line 197
    :goto_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    array-length v2, v1

    if-ge v0, v2, :cond_26

    .line 198
    aget-byte v2, v1, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_16

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    :goto_16
    add-int/lit8 p0, v0, -0x1

    .line 199
    aget-byte p0, v1, p0

    const/16 v2, 0x2f

    if-ne p0, v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    :cond_20
    sub-int/2addr v0, p1

    .line 202
    invoke-static {v1, p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 205
    :cond_26
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 195
    :cond_3d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot process GNU long filename as no // record was found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isBSDLongName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "^#1/\\d+"

    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isGNULongName(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    const-string p0, "^/\\d+"

    .line 405
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static isGNUStringTable(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "//"

    .line 369
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lt p1, v2, :cond_3d

    .line 290
    aget-byte p1, p0, v1

    const/16 v2, 0x21

    if-ne p1, v2, :cond_3d

    aget-byte p1, p0, v0

    const/16 v2, 0x3c

    if-ne p1, v2, :cond_3d

    const/4 p1, 0x2

    aget-byte p1, p0, p1

    const/16 v2, 0x61

    if-ne p1, v2, :cond_3d

    const/4 p1, 0x3

    aget-byte p1, p0, p1

    const/16 v2, 0x72

    if-ne p1, v2, :cond_3d

    const/4 p1, 0x4

    aget-byte p1, p0, p1

    const/16 v2, 0x63

    if-ne p1, v2, :cond_3d

    const/4 p1, 0x5

    aget-byte p1, p0, p1

    const/16 v2, 0x68

    if-ne p1, v2, :cond_3d

    const/4 p1, 0x6

    aget-byte p1, p0, p1

    const/16 v2, 0x3e

    if-ne p1, v2, :cond_3d

    const/4 p1, 0x7

    aget-byte p0, p0, p1

    const/16 p1, 0xa

    if-ne p0, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    return v0
.end method

.method private readGNUStringTable([BII)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BII)I

    move-result p1

    .line 386
    new-array p2, p1, [B

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->namebuffer:[B

    .line 387
    iget-object p3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    const/4 v0, 0x0

    invoke-static {p3, p2, v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p2

    int-to-long v0, p2

    .line 388
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    if-ne p2, p1, :cond_1e

    .line 393
    new-instance p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    int-to-long p1, p1

    const-string p3, "//"

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;J)V

    return-object p0

    .line 390
    :cond_1e
    new-instance p0, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read complete // record: expected="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " read="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private trackReadBytes(J)V
    .registers 5

    .line 373
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    .line 375
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    :cond_e
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

    .line 250
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->closed:Z

    .line 252
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    return-void
.end method

.method public getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 94
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 95
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 96
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    iget-wide v5, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    sub-long/2addr v3, v5

    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    .line 97
    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 98
    iput-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 101
    :cond_1c
    iget-wide v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    if-nez v1, :cond_7e

    const-string v1, "!<arch>\n"

    .line 102
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 103
    array-length v4, v1

    new-array v4, v4, [B

    .line 104
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-static {v7, v4}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v7

    int-to-long v8, v7

    .line 105
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 106
    array-length v8, v1

    if-ne v7, v8, :cond_63

    move v7, v3

    .line 109
    :goto_3c
    array-length v8, v1

    if-ge v7, v8, :cond_7e

    .line 110
    aget-byte v8, v1, v7

    aget-byte v9, v4, v7

    if-ne v8, v9, :cond_48

    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 111
    :cond_48
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_63
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read header. Occured at byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_7e
    iget-wide v7, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    const-wide/16 v9, 0x2

    rem-long/2addr v7, v9

    cmp-long v1, v7, v5

    if-eqz v1, :cond_95

    .line 117
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_90

    return-object v2

    :cond_90
    const-wide/16 v4, 0x1

    .line 121
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 124
    :cond_95
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-nez v1, :cond_9e

    return-object v2

    .line 129
    :cond_9e
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    int-to-long v4, v1

    .line 130
    invoke-direct {v0, v4, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 131
    iget-object v2, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    array-length v2, v2

    if-lt v1, v2, :cond_19f

    const-string v1, "`\n"

    .line 137
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 138
    array-length v2, v1

    new-array v2, v2, [B

    .line 139
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-static {v4, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v4

    int-to-long v5, v4

    .line 140
    invoke-direct {v0, v5, v6}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    .line 141
    array-length v5, v1

    if-ne v4, v5, :cond_184

    move v4, v3

    .line 144
    :goto_c6
    array-length v5, v1

    if-ge v4, v5, :cond_ed

    .line 145
    aget-byte v5, v1, v4

    aget-byte v6, v2, v4

    if-ne v5, v6, :cond_d2

    add-int/lit8 v4, v4, 0x1

    goto :goto_c6

    .line 146
    :cond_d2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid entry trailer. not read the content? Occured at byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_ed
    iget-wide v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    iput-wide v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    .line 156
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    const/16 v2, 0x10

    invoke-static {v1, v3, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNUStringTable(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x30

    if-eqz v4, :cond_114

    .line 158
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->readGNUStringTable([BII)Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object v0

    return-object v0

    .line 162
    :cond_114
    iget-object v4, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    invoke-direct {v0, v4, v6, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([BII)J

    move-result-wide v4

    const-string v6, "/"

    .line 163
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_12f

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_12c
    :goto_12c
    move-object v13, v1

    move-wide v14, v4

    goto :goto_158

    .line 165
    :cond_12f
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isGNULongName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    .line 166
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getExtendedName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_12c

    .line 168
    :cond_142
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->isBSDLongName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 169
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getBSDLongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v8, v3

    sub-long/2addr v4, v8

    .line 175
    iget-wide v10, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    goto :goto_12c

    .line 178
    :goto_158
    new-instance v1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    const/16 v4, 0x1c

    const/4 v5, 0x6

    .line 179
    invoke-direct {v0, v3, v4, v5, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIZ)I

    move-result v16

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    const/16 v4, 0x22

    .line 180
    invoke-direct {v0, v3, v4, v5, v7}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIIZ)I

    move-result v17

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    const/16 v4, 0x28

    const/16 v5, 0x8

    .line 181
    invoke-direct {v0, v3, v4, v5, v5}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asInt([BIII)I

    move-result v18

    iget-object v3, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->metaData:[B

    const/16 v4, 0xc

    .line 182
    invoke-direct {v0, v3, v2, v4}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->asLong([BII)J

    move-result-wide v19

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    return-object v1

    .line 142
    :cond_184
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to read entry trailer. Occured at byte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_19f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "truncated ar archive"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->getNextArEntry()Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    move-result-object p0

    return-object p0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->currentEntry:Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    if-eqz v0, :cond_28

    .line 267
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->entryOffset:J

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->getLength()J

    move-result-wide v3

    add-long/2addr v1, v3

    if-ltz p3, :cond_26

    .line 268
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->offset:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_14

    goto :goto_26

    :cond_14
    int-to-long v5, p3

    sub-long/2addr v1, v3

    .line 271
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 272
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    int-to-long p2, p1

    .line 273
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->trackReadBytes(J)V

    return p1

    :cond_26
    :goto_26
    const/4 p0, -0x1

    return p0

    .line 265
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No current ar entry"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
