.class public Lorg/brotli/integration/BundleChecker;
.super Ljava/lang/Object;
.source "BundleChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final input:Ljava/io/InputStream;

.field private final nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final sanityCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicInteger;Z)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/brotli/integration/BundleChecker;->input:Ljava/io/InputStream;

    .line 37
    iput-object p2, p0, Lorg/brotli/integration/BundleChecker;->nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    iput-boolean p3, p0, Lorg/brotli/integration/BundleChecker;->sanityCheck:Z

    return-void
.end method

.method private decompressAndCalculateCrc(Ljava/util/zip/ZipInputStream;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/brotli/integration/BundleChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/brotli/integration/BundleChecker$1;-><init>(Lorg/brotli/integration/BundleChecker;Ljava/io/InputStream;)V

    .line 48
    new-instance p0, Lorg/brotli/dec/BrotliInputStream;

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    :try_start_a
    invoke-static {p0}, Lorg/brotli/integration/BundleHelper;->fingerprintStream(Ljava/io/InputStream;)J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 53
    invoke-virtual {p0}, Lorg/brotli/dec/BrotliInputStream;->close()V

    return-wide v0

    :catchall_12
    move-exception p1

    invoke-virtual {p0}, Lorg/brotli/dec/BrotliInputStream;->close()V

    .line 54
    throw p1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 99
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 100
    aget-object v0, p0, v2

    const-string v3, "-s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_13

    :cond_11
    move v0, v2

    move v1, v0

    .line 105
    :goto_13
    array-length v3, p0

    if-eq v3, v1, :cond_31

    .line 108
    :goto_16
    array-length v3, p0

    if-ge v1, v3, :cond_30

    .line 109
    new-instance v3, Lorg/brotli/integration/BundleChecker;

    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p0, v1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {v3, v4, v5, v0}, Lorg/brotli/integration/BundleChecker;-><init>(Ljava/io/InputStream;Ljava/util/concurrent/atomic/AtomicInteger;Z)V

    invoke-virtual {v3}, Lorg/brotli/integration/BundleChecker;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_30
    return-void

    .line 106
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Usage: BundleChecker [-s] <fileX.zip> ..."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public run()V
    .registers 9

    const-string v0, ""

    .line 61
    new-instance v1, Ljava/util/zip/ZipInputStream;

    iget-object v2, p0, Lorg/brotli/integration/BundleChecker;->input:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    .line 65
    :try_start_a
    iget-object v3, p0, Lorg/brotli/integration/BundleChecker;->nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 66
    :goto_10
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 67
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_10

    :cond_1d
    add-int/lit8 v5, v2, 0x1

    if-eq v2, v3, :cond_26

    .line 71
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    :goto_24
    move v2, v5

    goto :goto_10

    .line 74
    :cond_26
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_66

    .line 75
    :try_start_2a
    invoke-static {v2}, Lorg/brotli/integration/BundleHelper;->getExpectedFingerprint(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_5a

    .line 77
    :try_start_2e
    invoke-direct {p0, v1}, Lorg/brotli/integration/BundleChecker;->decompressAndCalculateCrc(Ljava/util/zip/ZipInputStream;)J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Lorg/brotli/integration/BundleChecker;->sanityCheck:Z

    if-eqz v3, :cond_3b

    goto :goto_48

    .line 78
    :cond_3b
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "CRC mismatch"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_43} :catch_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_5a

    :catch_43
    move-exception v3

    .line 81
    :try_start_44
    iget-boolean v4, p0, Lorg/brotli/integration/BundleChecker;->sanityCheck:Z

    if-eqz v4, :cond_52

    .line 85
    :cond_48
    :goto_48
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_5a

    .line 87
    :try_start_4b
    iget-object v2, p0, Lorg/brotli/integration/BundleChecker;->nextJob:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_66

    goto :goto_24

    .line 82
    :cond_52
    :try_start_52
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Decompression failed"

    invoke-direct {p0, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    move-object v0, v2

    goto :goto_67

    .line 89
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 90
    iget-object p0, p0, Lorg/brotli/integration/BundleChecker;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception p0

    .line 92
    :goto_67
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
