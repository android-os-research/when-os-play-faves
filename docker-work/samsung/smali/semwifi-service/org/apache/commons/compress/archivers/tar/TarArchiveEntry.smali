.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
.super Ljava/lang/Object;
.source "TarArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;


# static fields
.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field private static final EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field public static final MAX_NAMELEN:I = 0x1f

.field public static final MILLIS_PER_SECOND:I = 0x3e8


# instance fields
.field private checkSumOK:Z

.field private devMajor:I

.field private devMinor:I

.field private final extraPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/io/File;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isExtended:Z

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private magic:Ljava/lang/String;

.field private modTime:J

.field private mode:I

.field private name:Ljava/lang/String;

.field private paxGNUSparse:Z

.field private final preserveAbsolutePath:Z

.field private realSize:J

.field private size:J

.field private starSparse:Z

.field private userId:J

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 147
    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 337
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 150
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 159
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 162
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 165
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 177
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    const-string v1, "ustar\u0000"

    .line 180
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const-string v1, "00"

    .line 182
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 194
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 212
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    .line 354
    invoke-static {p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 355
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    .line 357
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_63

    const/16 v2, 0x41ed

    .line 358
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    const/16 v2, 0x35

    .line 359
    iput-byte v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 361
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4f

    add-int/lit8 v2, v2, -0x1

    .line 362
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_4c

    goto :goto_4f

    .line 365
    :cond_4c
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_74

    .line 363
    :cond_4f
    :goto_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_74

    :cond_63
    const v2, 0x81a4

    .line 368
    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    const/16 v2, 0x30

    .line 369
    iput-byte v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 370
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 371
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 374
    :goto_74
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p1

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 375
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 376
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .registers 4

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BZ)V
    .registers 4

    .line 315
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    .line 316
    iput-byte p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_11

    const-string p1, "ustar "

    .line 318
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const-string p1, " \u0000"

    .line 319
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    :cond_11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 272
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    .line 274
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    .line 275
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    .line 277
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    if-eqz p2, :cond_14

    const/16 p1, 0x41ed

    goto :goto_17

    :cond_14
    const p1, 0x81a4

    .line 278
    :goto_17
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    if-eqz p2, :cond_1e

    const/16 p1, 0x35

    goto :goto_20

    :cond_1e
    const/16 p1, 0x30

    .line 279
    :goto_20
    iput-byte p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 280
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    const-string p1, ""

    .line 281
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 6

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 150
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 159
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 162
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 165
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 177
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    const-string v1, "ustar\u0000"

    .line 180
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const-string v1, "00"

    .line 182
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 194
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 212
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    const-string v2, "user.name"

    .line 231
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_39

    .line 234
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 237
    :cond_39
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    .line 239
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    .line 388
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([B)V

    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    .line 404
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V

    return-void
.end method

.method private evaluateType([B)I
    .registers 4

    const-string p0, "ustar "

    const/16 v0, 0x101

    const/4 v1, 0x6

    .line 1405
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x2

    return p0

    :cond_d
    const-string p0, "ustar\u0000"

    .line 1408
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p0

    if-eqz p0, :cond_23

    const/16 p0, 0x1fc

    const-string v0, "tar\u0000"

    const/4 v1, 0x4

    .line 1409
    invoke-static {v0, p1, p0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x3

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_56

    const-string v1, "os.name"

    .line 1360
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    const-string v2, "windows"

    .line 1367
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_42

    .line 1368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_56

    const/4 v1, 0x0

    .line 1369
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1370
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_56

    const/16 v3, 0x61

    if-lt v1, v3, :cond_35

    const/16 v3, 0x7a

    if-le v1, v3, :cond_3d

    :cond_35
    const/16 v3, 0x41

    if-lt v1, v3, :cond_56

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_56

    .line 1375
    :cond_3d
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_56

    :cond_42
    const-string v2, "netware"

    .line 1378
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1379
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_56

    add-int/2addr v1, v0

    .line 1381
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1387
    :cond_56
    :goto_56
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_5e
    if-nez p1, :cond_6d

    const-string v1, "/"

    .line 1392
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1393
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5e

    :cond_6d
    return-object p0
.end method

.method private parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eqz p3, :cond_a

    .line 1274
    invoke-static {p1, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 1275
    :cond_a
    invoke-static {p1, v1, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1277
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    const/16 v2, 0x6c

    .line 1279
    invoke-static {p1, v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    const/16 v2, 0x74

    .line 1281
    invoke-static {p1, v2, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    const/16 v2, 0x7c

    const/16 v3, 0xc

    .line 1283
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    const/16 v2, 0x88

    .line 1285
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    .line 1287
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->verifyCheckSum([B)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    const/16 v2, 0x9c

    const/16 v4, 0x9d

    .line 1289
    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    if-eqz p3, :cond_54

    .line 1290
    invoke-static {p1, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 1291
    :cond_54
    invoke-static {p1, v4, v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    const/16 v0, 0x101

    const/4 v2, 0x6

    .line 1293
    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const/16 v0, 0x107

    const/4 v2, 0x2

    .line 1295
    invoke-static {p1, v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    const/16 v0, 0x109

    const/16 v4, 0x20

    if-eqz p3, :cond_77

    .line 1297
    invoke-static {p1, v0, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_7b

    .line 1298
    :cond_77
    invoke-static {p1, v0, v4, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_7b
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    const/16 v0, 0x129

    if-eqz p3, :cond_86

    .line 1300
    invoke-static {p1, v0, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_8a

    .line 1301
    :cond_86
    invoke-static {p1, v0, v4, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_8a
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    const/16 v0, 0x149

    .line 1303
    iget-byte v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v5, 0x33

    if-eq v4, v5, :cond_98

    const/16 v5, 0x34

    if-ne v4, v5, :cond_a8

    .line 1304
    :cond_98
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    const/16 v0, 0x151

    .line 1306
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    :cond_a8
    const/16 v0, 0x159

    .line 1312
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->evaluateType([B)I

    move-result v1

    if-eq v1, v2, :cond_12a

    const/4 v2, 0x4

    const-string v3, "/"

    if-eq v1, v2, :cond_100

    const/16 v1, 0x9b

    if-eqz p3, :cond_be

    .line 1339
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_c2

    .line 1340
    :cond_be
    invoke-static {p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p1

    .line 1343
    :goto_c2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_e3

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e3

    .line 1344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1346
    :cond_e3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_13a

    .line 1347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_13a

    :cond_100
    const/16 v1, 0x83

    if-eqz p3, :cond_109

    .line 1329
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_10d

    .line 1330
    :cond_109
    invoke-static {p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p1

    .line 1331
    :goto_10d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_13a

    .line 1332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_13a

    :cond_12a
    const/16 p2, 0x1e2

    .line 1321
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    const/16 p2, 0x1e3

    .line 1323
    invoke-static {p1, p2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    :cond_13a
    :goto_13a
    return-void
.end method

.method private processPaxHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1038
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1071
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_10e

    goto/16 :goto_aa

    :sswitch_d
    const-string v0, "linkpath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_aa

    :cond_17
    const/16 v1, 0xc

    goto/16 :goto_aa

    :sswitch_1b
    const-string v0, "SCHILY.filetype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_aa

    :cond_25
    const/16 v1, 0xb

    goto/16 :goto_aa

    :sswitch_29
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_aa

    :cond_33
    const/16 v1, 0xa

    goto/16 :goto_aa

    :sswitch_37
    const-string v0, "mtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_aa

    :cond_41
    const/16 v1, 0x9

    goto/16 :goto_aa

    :sswitch_45
    const-string v0, "gname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_aa

    :cond_4f
    const/16 v1, 0x8

    goto/16 :goto_aa

    :sswitch_53
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_aa

    :cond_5c
    const/4 v1, 0x7

    goto :goto_aa

    :sswitch_5e
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_aa

    :cond_67
    const/4 v1, 0x6

    goto :goto_aa

    :sswitch_69
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto :goto_aa

    :cond_72
    const/4 v1, 0x5

    goto :goto_aa

    :sswitch_74
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto :goto_aa

    :cond_7d
    const/4 v1, 0x4

    goto :goto_aa

    :sswitch_7f
    const-string v0, "GNU.sparse.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto :goto_aa

    :cond_88
    const/4 v1, 0x3

    goto :goto_aa

    :sswitch_8a
    const-string v0, "GNU.sparse.realsize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_aa

    :cond_93
    const/4 v1, 0x2

    goto :goto_aa

    :sswitch_95
    const-string v0, "SCHILY.devminor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_aa

    :cond_9e
    const/4 v1, 0x1

    goto :goto_aa

    :sswitch_a0
    const-string v0, "SCHILY.devmajor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v1, 0x0

    :goto_aa
    packed-switch v1, :pswitch_data_144

    .line 1114
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    .line 1076
    :pswitch_b3
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    goto :goto_10d

    :pswitch_b7
    const-string p1, "sparse"

    .line 1109
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 1110
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillStarSparseData(Ljava/util/Map;)V

    goto :goto_10d

    .line 1088
    :pswitch_c3
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    goto :goto_10d

    .line 1094
    :pswitch_c7
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setModTime(J)V

    goto :goto_10d

    .line 1082
    :pswitch_d6
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    goto :goto_10d

    .line 1091
    :pswitch_da
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    goto :goto_10d

    .line 1073
    :pswitch_e2
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    goto :goto_10d

    .line 1085
    :pswitch_e6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    goto :goto_10d

    .line 1079
    :pswitch_ee
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    goto :goto_10d

    .line 1103
    :pswitch_f6
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse0xData(Ljava/util/Map;)V

    goto :goto_10d

    .line 1106
    :pswitch_fa
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse1xData(Ljava/util/Map;)V

    goto :goto_10d

    .line 1097
    :pswitch_fe
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMinor(I)V

    goto :goto_10d

    .line 1100
    :pswitch_106
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMajor(I)V

    :cond_10d
    :goto_10d
    return-void

    :sswitch_data_10e
    .sparse-switch
        -0x7240fdec -> :sswitch_a0
        -0x723d4bf0 -> :sswitch_95
        -0x108a42f3 -> :sswitch_8a
        -0x98f3691 -> :sswitch_7f
        0x18fc2 -> :sswitch_74
        0x1c450 -> :sswitch_69
        0x346425 -> :sswitch_5e
        0x35e001 -> :sswitch_53
        0x5deef72 -> :sswitch_45
        0x63654ba -> :sswitch_37
        0x6a43880 -> :sswitch_29
        0x1fa1f206 -> :sswitch_1b
        0x473a871f -> :sswitch_d
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_106
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_ee
        :pswitch_e6
        :pswitch_e2
        :pswitch_da
        :pswitch_d6
        :pswitch_c7
        :pswitch_c3
        :pswitch_b7
        :pswitch_b3
    .end packed-switch
.end method

.method private writeEntryHeaderField(J[BIIZ)I
    .registers 11

    if-nez p6, :cond_18

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-ltz p0, :cond_13

    const-wide/16 v2, 0x1

    add-int/lit8 p0, p5, -0x1

    mul-int/lit8 p0, p0, 0x3

    shl-long/2addr v2, p0

    cmp-long p0, p1, v2

    if-ltz p0, :cond_18

    .line 1229
    :cond_13
    invoke-static {v0, v1, p3, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result p0

    return p0

    .line 1231
    :cond_18
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalOrBinaryBytes(J[BII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addPaxHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1004
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearExtraPaxHeaders()V
    .registers 1

    .line 993
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_14

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_14

    .line 430
    :cond_d
    check-cast p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .registers 2

    if-eqz p1, :cond_12

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method fillGNUSparse0xData(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1419
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    const-string v0, "GNU.sparse.size"

    .line 1420
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    const-string v0, "GNU.sparse.name"

    .line 1421
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1423
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    :cond_22
    return-void
.end method

.method fillGNUSparse1xData(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1428
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    const-string v0, "GNU.sparse.realsize"

    .line 1429
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    const-string v0, "GNU.sparse.name"

    .line 1430
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method fillStarSparseData(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1434
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    const-string v0, "SCHILY.realsize"

    .line 1435
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1436
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    :cond_17
    return-void
.end method

.method public getDevMajor()I
    .registers 1

    .line 740
    iget p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    return p0
.end method

.method public getDevMinor()I
    .registers 1

    .line 765
    iget p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    return p0
.end method

.method public getDirectoryEntries()[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .registers 9

    .line 1130
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 1134
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1136
    sget-object p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object p0

    .line 1138
    :cond_16
    array-length v1, v0

    new-array v2, v1, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_2f

    .line 1141
    new-instance v4, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    aget-object v7, v0, v3

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_2f
    return-object v2

    .line 1131
    :cond_30
    :goto_30
    sget-object p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRIES:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object p0
.end method

.method public getExtraPaxHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1014
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExtraPaxHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 985
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 698
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    return-object p0
.end method

.method public getGroupId()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 1

    .line 611
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    return-object p0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .registers 1

    .line 675
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getLinkName()Ljava/lang/String;
    .registers 1

    .line 491
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    return-object p0
.end method

.method public getLongGroupId()J
    .registers 3

    .line 574
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    return-wide v0
.end method

.method public getLongUserId()J
    .registers 3

    .line 533
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    return-wide v0
.end method

.method public getModTime()Ljava/util/Date;
    .registers 6

    .line 670
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMode()I
    .registers 1

    .line 707
    iget p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 464
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getRealSize()J
    .registers 3

    .line 799
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 717
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 1

    .line 593
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 440
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBlockDevice()Z
    .registers 2

    .line 956
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x34

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isCharacterDevice()Z
    .registers 2

    .line 946
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x33

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isCheckSumOK()Z
    .registers 1

    .line 686
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    return p0
.end method

.method public isDescendent(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .registers 2

    .line 452
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDirectory()Z
    .registers 4

    .line 892
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 893
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0

    .line 896
    :cond_9
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_11

    return v2

    .line 900
    :cond_11
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return v2
.end method

.method public isExtended()Z
    .registers 1

    .line 790
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    return p0
.end method

.method public isFIFO()Z
    .registers 2

    .line 966
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x36

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isFile()Z
    .registers 4

    .line 910
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 911
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0

    .line 913
    :cond_9
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    const/16 v2, 0x30

    if-ne v0, v2, :cond_13

    goto :goto_1f

    .line 916
    :cond_13
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public isGNULongLinkEntry()Z
    .registers 2

    .line 849
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x4b

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isGNULongNameEntry()Z
    .registers 2

    .line 858
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x4c

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isGNUSparse()Z
    .registers 2

    .line 808
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNUSparse()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isGlobalPaxHeader()Z
    .registers 2

    .line 882
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x67

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isLink()Z
    .registers 2

    .line 936
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x31

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isOldGNUSparse()Z
    .registers 2

    .line 819
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x53

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isPaxGNUSparse()Z
    .registers 1

    .line 830
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    return p0
.end method

.method public isPaxHeader()Z
    .registers 2

    .line 870
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x78

    if-eq p0, v0, :cond_d

    const/16 v0, 0x58

    if-ne p0, v0, :cond_b

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

.method public isSparse()Z
    .registers 2

    .line 976
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNUSparse()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isStarSparse()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isStarSparse()Z
    .registers 1

    .line 840
    iget-boolean p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    return p0
.end method

.method public isSymbolicLink()Z
    .registers 2

    .line 926
    iget-byte p0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v0, 0x32

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public parseTarHeader([B)V
    .registers 4

    .line 1243
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    .line 1246
    :catch_6
    :try_start_6
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception p0

    .line 1249
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1266
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    return-void
.end method

.method public setDevMajor(I)V
    .registers 4

    if-ltz p1, :cond_5

    .line 755
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    return-void

    .line 752
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Major device number is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDevMinor(I)V
    .registers 4

    if-ltz p1, :cond_5

    .line 780
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    return-void

    .line 777
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Minor device number is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGroupId(I)V
    .registers 4

    int-to-long v0, p1

    .line 564
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    return-void
.end method

.method public setGroupId(J)V
    .registers 3

    .line 584
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setIds(II)V
    .registers 3

    .line 630
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(I)V

    .line 631
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(I)V

    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    return-void
.end method

.method public setModTime(J)V
    .registers 5

    const-wide/16 v0, 0x3e8

    .line 652
    div-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .registers 6

    .line 661
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 482
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 473
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 641
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    return-void
.end method

.method public setSize(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 730
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-void

    .line 728
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUserId(I)V
    .registers 4

    int-to-long v0, p1

    .line 523
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    .line 543
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .line 602
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    return-void
.end method

.method updateEntryFromPaxHeaders(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1023
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1024
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1025
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1026
    invoke-direct {p0, v2, v1, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    :cond_24
    return-void
.end method

.method public writeEntryHeader([B)V
    .registers 4

    const/4 v0, 0x0

    .line 1156
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_7

    goto :goto_c

    .line 1159
    :catch_7
    :try_start_7
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception p0

    .line 1162
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    .line 1182
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x64

    invoke-static {v0, p1, v10, v11, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v4

    .line 1184
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 1185
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 1187
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 1189
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    const/16 v5, 0xc

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 1190
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->modTime:J

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v12

    move v0, v10

    move v1, v12

    :goto_36
    const/16 v13, 0x8

    const/16 v2, 0x20

    if-ge v0, v13, :cond_44

    add-int/lit8 v3, v1, 0x1

    .line 1196
    aput-byte v2, v8, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_36

    :cond_44
    add-int/lit8 v0, v1, 0x1

    .line 1199
    iget-byte v3, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    aput-byte v3, v8, v1

    .line 1200
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v11, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0

    .line 1202
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v1, p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 1203
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 1204
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0

    .line 1206
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2, v9}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v4

    .line 1208
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v4

    .line 1210
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    int-to-long v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 1213
    :goto_7f
    array-length v1, v8

    if-ge v0, v1, :cond_88

    add-int/lit8 v1, v0, 0x1

    .line 1214
    aput-byte v10, v8, v0

    move v0, v1

    goto :goto_7f

    .line 1217
    :cond_88
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->computeCheckSum([B)J

    move-result-wide v0

    .line 1219
    invoke-static {v0, v1, p1, v12, v13}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatCheckSumOctalBytes(J[BII)I

    return-void
.end method
