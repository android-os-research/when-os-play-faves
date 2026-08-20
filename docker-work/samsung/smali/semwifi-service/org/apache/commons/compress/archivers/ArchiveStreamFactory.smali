.class public Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
.super Ljava/lang/Object;
.source "ArchiveStreamFactory.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;


# static fields
.field public static final AR:Ljava/lang/String; = "ar"

.field public static final ARJ:Ljava/lang/String; = "arj"

.field public static final CPIO:Ljava/lang/String; = "cpio"

.field public static final DUMP:Ljava/lang/String; = "dump"

.field private static final DUMP_SIGNATURE_SIZE:I = 0x20

.field public static final JAR:Ljava/lang/String; = "jar"

.field public static final SEVEN_Z:Ljava/lang/String; = "7z"

.field private static final SIGNATURE_SIZE:I = 0xc

.field private static final SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

.field public static final TAR:Ljava/lang/String; = "tar"

.field private static final TAR_HEADER_SIZE:I = 0x200

.field public static final ZIP:Ljava/lang/String; = "zip"


# instance fields
.field private archiveInputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private archiveOutputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final encoding:Ljava/lang/String;

.field private volatile entryEncoding:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetSINGLETON()Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;
    .registers 1

    sget-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smfindArchiveStreamProviders()Ljava/util/ArrayList;
    .registers 1

    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findArchiveStreamProviders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->SINGLETON:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-void
.end method

.method public static detect(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    if-eqz p0, :cond_d3

    .line 491
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_cb

    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 496
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 499
    :try_start_f
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 500
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_c2

    .line 505
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string p0, "zip"

    return-object p0

    .line 507
    :cond_1f
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string p0, "jar"

    return-object p0

    .line 509
    :cond_28
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string p0, "ar"

    return-object p0

    .line 511
    :cond_31
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string p0, "cpio"

    return-object p0

    .line 513
    :cond_3a
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->matches([BI)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string p0, "arj"

    return-object p0

    .line 515
    :cond_43
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->matches([BI)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string p0, "7z"

    return-object p0

    :cond_4c
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 521
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 523
    :try_start_53
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 524
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5a} :catch_b9

    .line 528
    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;->matches([BI)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string p0, "dump"

    return-object p0

    :cond_63
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 534
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 536
    :try_start_6a
    invoke-static {p0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 537
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_71} :catch_b0

    .line 541
    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->matches([BI)Z

    move-result p0

    const-string v3, "tar"

    if-eqz p0, :cond_7a

    return-object v3

    :cond_7a
    if-lt v2, v0, :cond_a8

    const/4 p0, 0x0

    .line 549
    :try_start_7d
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_87} :catch_a5
    .catchall {:try_start_7d .. :try_end_87} :catchall_9d

    .line 551
    :try_start_87
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isCheckSumOK()Z

    move-result p0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_9b
    .catchall {:try_start_87 .. :try_end_8f} :catchall_99

    if-eqz p0, :cond_95

    .line 560
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :cond_95
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a8

    :catchall_99
    move-exception p0

    goto :goto_a1

    :catch_9b
    move-object p0, v0

    goto :goto_a5

    :catchall_9d
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_a1
    invoke-static {v0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 561
    throw p0

    .line 560
    :catch_a5
    :goto_a5
    invoke-static {p0}, Lorg/apache/commons/compress/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 563
    :cond_a8
    :goto_a8
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v0, "No Archiver found for the stream signature"

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_b0
    move-exception p0

    .line 539
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "IOException while reading tar signature"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_b9
    move-exception p0

    .line 526
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "IOException while reading dump signature"

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_c2
    move-exception p0

    .line 502
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string v1, "IOException while reading signature."

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 492
    :cond_cb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mark is not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 488
    :cond_d3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static findArchiveStreamProviders()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->serviceLoaderIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static findAvailableArchiveInputStreamProviders()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public static findAvailableArchiveOutputStreamProviders()Ljava/util/SortedMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$2;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static putAll(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;Ljava/util/TreeMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_18
    return-void
.end method

.method private static serviceLoaderIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;

    const-class v1, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/ServiceLoaderIterator;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static toKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 179
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 476
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0
.end method

.method public createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    if-eqz p1, :cond_dd

    if-eqz p2, :cond_d5

    const-string v0, "ar"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 344
    new-instance p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_12
    const-string v0, "arj"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p3, :cond_22

    .line 348
    new-instance p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 350
    :cond_22
    new-instance p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_28
    const-string v0, "zip"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-eqz p3, :cond_38

    .line 354
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 356
    :cond_38
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_3e
    const-string v0, "tar"

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz p3, :cond_4e

    .line 360
    new-instance p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 362
    :cond_4e
    new-instance p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_54
    const-string v0, "jar"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    if-eqz p3, :cond_64

    .line 366
    new-instance p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 368
    :cond_64
    new-instance p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_6a
    const-string v0, "cpio"

    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    if-eqz p3, :cond_7a

    .line 372
    new-instance p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 374
    :cond_7a
    new-instance p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_80
    const-string v0, "dump"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    if-eqz p3, :cond_90

    .line 378
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    .line 380
    :cond_90
    new-instance p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0

    :cond_96
    const-string v0, "7z"

    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 386
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->getArchiveInputStreamProviders()Ljava/util/SortedMap;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    if-eqz p0, :cond_b3

    .line 388
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object p0

    return-object p0

    .line 391
    :cond_b3
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Archiver: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_cf
    new-instance p0, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :cond_d5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "InputStream must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 336
    :cond_dd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Archivername must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    if-eqz p1, :cond_ae

    if-eqz p2, :cond_a6

    const-string v0, "ar"

    .line 422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 423
    new-instance p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/ar/ArArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_12
    const-string v0, "zip"

    .line 425
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 426
    new-instance p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_24

    .line 428
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->setEncoding(Ljava/lang/String;)V

    :cond_24
    return-object p0

    :cond_25
    const-string v0, "tar"

    .line 432
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p3, :cond_35

    .line 434
    new-instance p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p0

    .line 436
    :cond_35
    new-instance p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_3b
    const-string v0, "jar"

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    if-eqz p3, :cond_4b

    .line 440
    new-instance p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p0

    .line 442
    :cond_4b
    new-instance p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/jar/JarArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_51
    const-string v0, "cpio"

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    if-eqz p3, :cond_61

    .line 446
    new-instance p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p0

    .line 448
    :cond_61
    new-instance p0, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/cpio/CpioArchiveOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p0

    :cond_67
    const-string v0, "7z"

    .line 450
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 454
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->getArchiveOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;

    if-eqz p0, :cond_84

    .line 456
    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object p0

    return-object p0

    .line 459
    :cond_84
    new-instance p0, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Archiver: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_a0
    new-instance p0, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/StreamingNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OutputStream must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 416
    :cond_ae
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Archivername must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getArchiveInputStreamProviders()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    if-nez v0, :cond_e

    .line 569
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findAvailableArchiveInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    .line 571
    :cond_e
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveInputStreamProviders:Ljava/util/SortedMap;

    return-object p0
.end method

.method public getArchiveOutputStreamProviders()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/archivers/ArchiveStreamProvider;",
            ">;"
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    if-nez v0, :cond_e

    .line 577
    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->findAvailableArchiveOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    .line 579
    :cond_e
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->archiveOutputStreamProviders:Ljava/util/SortedMap;

    return-object p0
.end method

.method public getEntryEncoding()Ljava/lang/String;
    .registers 1

    .line 293
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getInputStreamArchiveNames()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ar"

    const-string v1, "arj"

    const-string v2, "zip"

    const-string v3, "tar"

    const-string v4, "jar"

    const-string v5, "cpio"

    const-string v6, "dump"

    const-string v7, "7z"

    .line 584
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStreamArchiveNames()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ar"

    const-string v1, "zip"

    const-string v2, "tar"

    const-string v3, "jar"

    const-string v4, "cpio"

    const-string v5, "7z"

    .line 589
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public setEntryEncoding(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->encoding:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 311
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->entryEncoding:Ljava/lang/String;

    return-void

    .line 309
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot overide encoding set by the constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
