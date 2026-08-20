.class public Lorg/brotli/integration/BundleHelper;
.super Ljava/lang/Object;
.source "BundleHelper.java"


# static fields
.field private static final CRC_64_POLY:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 71
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "C96C5795D7870F42"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/brotli/integration/BundleHelper;->CRC_64_POLY:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fingerprintStream(Ljava/io/InputStream;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const-wide/16 v1, -0x1

    .line 99
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_e

    not-long v0, v1

    return-wide v0

    :cond_e
    const/4 v4, 0x0

    .line 103
    invoke-static {v1, v2, v0, v4, v3}, Lorg/brotli/integration/BundleHelper;->updateCrc64(J[BII)J

    move-result-wide v1

    goto :goto_6
.end method

.method public static getExpectedFingerprint(Ljava/lang/String;)J
    .registers 3

    const/16 v0, 0x2e

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_f

    :cond_a
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 111
    :goto_f
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static listEntries(Ljava/io/InputStream;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    :goto_a
    :try_start_a
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 30
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 31
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1d
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_25

    goto :goto_a

    .line 36
    :cond_21
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v0

    :catchall_25
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 37
    throw p0
.end method

.method public static readEntry(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 56
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 57
    invoke-static {v0}, Lorg/brotli/integration/BundleHelper;->readStream(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 58
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_29

    .line 64
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p0

    .line 61
    :cond_20
    :try_start_20
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    goto :goto_5

    .line 64
    :cond_24
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 65
    throw p0
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v1, 0x10000

    new-array v1, v1, [B

    .line 45
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 48
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static updateCrc64(J[BII)J
    .registers 13

    move v0, p3

    :goto_1
    add-int v1, p3, p4

    if-ge v0, v1, :cond_2a

    .line 83
    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    xor-long/2addr v1, p0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/4 v3, 0x0

    :goto_f
    const/16 v4, 0x8

    if-ge v3, v4, :cond_25

    const-wide/16 v4, 0x1

    and-long v6, v1, v4

    cmp-long v4, v6, v4

    const/4 v5, 0x1

    if-nez v4, :cond_21

    .line 85
    sget-wide v6, Lorg/brotli/integration/BundleHelper;->CRC_64_POLY:J

    ushr-long/2addr v1, v5

    xor-long/2addr v1, v6

    goto :goto_22

    :cond_21
    ushr-long/2addr v1, v5

    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_25
    ushr-long/2addr p0, v4

    xor-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-wide p0
.end method
