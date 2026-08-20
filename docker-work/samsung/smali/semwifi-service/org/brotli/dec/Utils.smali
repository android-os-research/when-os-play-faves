.class final Lorg/brotli/dec/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final BYTE_ZEROES:[B

.field private static final INT_ZEROES:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 19
    sput-object v1, Lorg/brotli/dec/Utils;->BYTE_ZEROES:[B

    new-array v0, v0, [I

    .line 21
    sput-object v0, Lorg/brotli/dec/Utils;->INT_ZEROES:[I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeInput(Ljava/io/InputStream;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method static copyBytes([BI[BII)V
    .registers 5

    sub-int/2addr p4, p3

    .line 62
    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static copyBytesWithin([BIII)V
    .registers 4

    sub-int/2addr p3, p2

    .line 66
    invoke-static {p0, p2, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static fillBytesWithZeroes([BII)V
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_11

    add-int/lit16 v0, p1, 0x400

    .line 36
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    .line 37
    sget-object v1, Lorg/brotli/dec/Utils;->BYTE_ZEROES:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v0

    goto :goto_0

    :cond_11
    return-void
.end method

.method static fillIntsWithZeroes([III)V
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_11

    add-int/lit16 v0, p1, 0x400

    .line 55
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    .line 56
    sget-object v1, Lorg/brotli/dec/Utils;->INT_ZEROES:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v0

    goto :goto_0

    :cond_11
    return-void
.end method

.method static flipBuffer(Ljava/nio/Buffer;)V
    .registers 1

    .line 93
    invoke-virtual {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method static getLogBintness()I
    .registers 1

    const-string v0, "BROTLI_32_BIT_CPU"

    .line 103
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    goto :goto_f

    :cond_e
    const/4 v0, 0x6

    :goto_f
    return v0
.end method

.method static isDebugMode()I
    .registers 1

    const-string v0, "BROTLI_ENABLE_ASSERTS"

    .line 97
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static readInput(Ljava/io/InputStream;[BII)I
    .registers 4

    .line 71
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 73
    new-instance p1, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p2, "Failed to read input"

    invoke-direct {p1, p2, p0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static toUsAsciiBytes(Ljava/lang/String;)[B
    .registers 2

    :try_start_0
    const-string v0, "US-ASCII"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
