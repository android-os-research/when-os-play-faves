.class LTestAllocSpeed;
.super Ljava/lang/Object;
.source "TestAllocSpeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static compressing:Z

.field private static volatile exception:Ljava/io/IOException;

.field private static repeats:I

.field private static final testdata:[B

.field private static testdataSize:I


# instance fields
.field private final rng:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    .line 35
    sput-object v0, LTestAllocSpeed;->testdata:[B

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, LTestAllocSpeed;->rng:Ljava/util/Random;

    return-void
.end method

.method private compress()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    sget v1, LTestAllocSpeed;->testdataSize:I

    add-int/lit16 v1, v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 48
    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 49
    iget-object p0, p0, LTestAllocSpeed;->rng:Ljava/util/Random;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x10

    const/4 v2, 0x1

    shl-int p0, v2, p0

    invoke-virtual {v1, p0}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    const/4 p0, 0x0

    move v2, p0

    .line 51
    :goto_1f
    sget v3, LTestAllocSpeed;->repeats:I

    if-ge v2, v3, :cond_35

    .line 52
    new-instance v3, Lorg/tukaani/xz/XZOutputStream;

    invoke-direct {v3, v0, v1}, Lorg/tukaani/xz/XZOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/FilterOptions;)V

    .line 53
    sget-object v4, LTestAllocSpeed;->testdata:[B

    sget v5, LTestAllocSpeed;->testdataSize:I

    invoke-virtual {v3, v4, p0, v5}, Lorg/tukaani/xz/XZOutputStream;->write([BII)V

    .line 54
    invoke-virtual {v3}, Lorg/tukaani/xz/XZOutputStream;->finish()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_35
    return-void
.end method

.method private decompress()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    new-instance p0, Ljava/io/ByteArrayInputStream;

    sget-object v0, LTestAllocSpeed;->testdata:[B

    sget v1, LTestAllocSpeed;->testdataSize:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 63
    :goto_e
    sget v1, LTestAllocSpeed;->repeats:I

    if-ge v2, v1, :cond_24

    .line 64
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 65
    new-instance v1, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {v1, p0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    :goto_1a
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_21

    goto :goto_1a

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, LTestAllocSpeed;->compressing:Z

    const/4 v1, 0x1

    .line 84
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, LTestAllocSpeed;->repeats:I

    const/4 v2, 0x2

    .line 85
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_5a

    const/16 v1, 0x40

    if-gt p0, v1, :cond_5a

    .line 90
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v2, LTestAllocSpeed;->testdata:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    sput v1, LTestAllocSpeed;->testdataSize:I

    .line 92
    invoke-static {}, Lorg/tukaani/xz/BasicArrayCache;->getInstance()Lorg/tukaani/xz/BasicArrayCache;

    move-result-object v1

    invoke-static {v1}, Lorg/tukaani/xz/ArrayCache;->setDefaultCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 94
    new-array v1, p0, [Ljava/lang/Thread;

    move v2, v0

    :goto_33
    if-ge v2, p0, :cond_48

    .line 96
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, LTestAllocSpeed;

    int-to-long v5, v2

    invoke-direct {v4, v5, v6}, LTestAllocSpeed;-><init>(J)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v1, v2

    .line 97
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_48
    :goto_48
    if-ge v0, p0, :cond_52

    .line 101
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 103
    :cond_52
    sget-object p0, LTestAllocSpeed;->exception:Ljava/io/IOException;

    if-nez p0, :cond_57

    return-void

    .line 104
    :cond_57
    sget-object p0, LTestAllocSpeed;->exception:Ljava/io/IOException;

    throw p0

    .line 88
    :cond_5a
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Thread count must be 1-64"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 72
    :try_start_0
    sget-boolean v0, LTestAllocSpeed;->compressing:Z

    if-eqz v0, :cond_8

    .line 73
    invoke-direct {p0}, LTestAllocSpeed;->compress()V

    goto :goto_f

    .line 75
    :cond_8
    invoke-direct {p0}, LTestAllocSpeed;->decompress()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_f

    :catch_c
    move-exception p0

    .line 78
    sput-object p0, LTestAllocSpeed;->exception:Ljava/io/IOException;

    :goto_f
    return-void
.end method
