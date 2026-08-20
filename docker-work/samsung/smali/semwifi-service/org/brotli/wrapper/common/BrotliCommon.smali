.class public Lorg/brotli/wrapper/common/BrotliCommon;
.super Ljava/lang/Object;
.source "BrotliCommon.java"


# static fields
.field private static final RFC_DICTIONARY_MD5:[B

.field private static final RFC_DICTIONARY_SHA_1:[B

.field private static final RFC_DICTIONARY_SHA_256:[B

.field public static final RFC_DICTIONARY_SIZE:I = 0x1dfa0

.field private static isDictionaryDataSet:Z

.field private static final mutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 21
    fill-array-data v0, :array_24

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_MD5:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 26
    fill-array-data v0, :array_30

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_1:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 31
    fill-array-data v0, :array_3e

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_256:[B

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    return-void

    nop

    :array_24
    .array-data 1
        -0x6at
        -0x32t
        -0x33t
        0x2et
        -0x19t
        -0x5at
        0x66t
        -0x2bt
        -0x56t
        0x36t
        0x27t
        -0x29t
        0x47t
        0x35t
        -0x4dt
        0x2at
    .end array-data

    :array_30
    .array-data 1
        0x72t
        -0x4ct
        0x10t
        0x51t
        -0x35t
        0x61t
        -0x57t
        0x28t
        0x1bt
        -0x5dt
        -0x3ct
        0x41t
        0x4ct
        0x28t
        -0x63t
        -0x5bt
        0xdt
        -0x66t
        0x76t
        0x40t
    .end array-data

    :array_3e
    .array-data 1
        0x20t
        -0x1ct
        0x2et
        -0x4ft
        -0x4bt
        0x11t
        -0x3et
        0x18t
        0x6t
        -0x2ct
        -0x2et
        0x27t
        -0x30t
        0x7et
        0x5dt
        -0x30t
        0x68t
        0x77t
        -0x28t
        -0x32t
        0x7bt
        0x3at
        -0x7ft
        0x7ft
        0x37t
        -0x71t
        0x31t
        0x36t
        0x53t
        -0xdt
        0x5ct
        0x70t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDictionaryDataMd5([B)Z
    .registers 2

    .line 43
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_MD5:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static checkDictionaryDataSha1([B)Z
    .registers 2

    .line 50
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_1:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static checkDictionaryDataSha256([B)Z
    .registers 2

    .line 57
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->RFC_DICTIONARY_SHA_256:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static makeNative([B)Ljava/nio/ByteBuffer;
    .registers 2

    .line 66
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static setDictionaryData(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    if-eqz v1, :cond_9

    .line 92
    monitor-exit v0

    return-void

    :cond_9
    const v1, 0x1dfa0

    .line 94
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 97
    :goto_14
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2e

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v3, :cond_26

    const/4 v4, 0x0

    .line 101
    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_14

    .line 99
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid dictionary size"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_2e
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-nez p0, :cond_39

    .line 106
    invoke-static {v1}, Lorg/brotli/wrapper/common/BrotliCommon;->setDictionaryData(Ljava/nio/ByteBuffer;)V

    .line 107
    monitor-exit v0

    return-void

    .line 104
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid dictionary size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_54
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public static setDictionaryData(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const v1, 0x1dfa0

    if-ne v0, v1, :cond_2e

    .line 120
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_12
    sget-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    if-eqz v1, :cond_18

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_18
    invoke-static {p0}, Lorg/brotli/wrapper/common/CommonJNI;->nativeSetDictionaryData(Ljava/nio/ByteBuffer;)Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    .line 127
    sput-boolean p0, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    .line 128
    monitor-exit v0

    return-void

    .line 125
    :cond_23
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "setting dictionary failed"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2b
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_2b

    throw p0

    .line 118
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid dictionary size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "direct byte buffer is expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setDictionaryData([B)V
    .registers 3

    .line 75
    array-length v0, p0

    const v1, 0x1dfa0

    if-ne v0, v1, :cond_1b

    .line 78
    sget-object v0, Lorg/brotli/wrapper/common/BrotliCommon;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_9
    sget-boolean v1, Lorg/brotli/wrapper/common/BrotliCommon;->isDictionaryDataSet:Z

    if-eqz v1, :cond_f

    .line 80
    monitor-exit v0

    return-void

    .line 82
    :cond_f
    invoke-static {p0}, Lorg/brotli/wrapper/common/BrotliCommon;->makeNative([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/brotli/wrapper/common/BrotliCommon;->setDictionaryData(Ljava/nio/ByteBuffer;)V

    .line 83
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p0

    .line 76
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid dictionary size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
