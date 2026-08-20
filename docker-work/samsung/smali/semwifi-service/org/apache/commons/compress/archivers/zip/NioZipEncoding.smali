.class Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;
.super Ljava/lang/Object;
.source "NioZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
.implements Lorg/apache/commons/compress/archivers/zip/CharsetAccessor;


# static fields
.field private static final HEX_CHARS:[C

.field private static final REPLACEMENT:C = '?'

.field private static final REPLACEMENT_BYTES:[B

.field private static final REPLACEMENT_STRING:Ljava/lang/String;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final useReplacement:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 42
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_BYTES:[B

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_STRING:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 44
    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    return-void

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/nio/charset/Charset;Z)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 56
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    return-void
.end method

.method private static encodeFully(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v0

    .line 142
    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0

    :cond_1e
    return-object p2
.end method

.method private static encodeSurrogate(Ljava/nio/CharBuffer;C)Ljava/nio/CharBuffer;
    .registers 4

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/16 v0, 0x25

    .line 150
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    const/16 v0, 0x55

    .line 151
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 153
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    .line 154
    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 155
    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    and-int/lit8 p1, p1, 0xf

    .line 156
    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 157
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method private static estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I
    .registers 2

    int-to-float p1, p1

    .line 213
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result p0

    mul-float/2addr p1, p0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private static estimateInitialBufferSize(Ljava/nio/charset/CharsetEncoder;I)I
    .registers 3

    .line 200
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v0

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    .line 201
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result p0

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    float-to-double p0, v0

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .line 175
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    if-nez v0, :cond_17

    .line 176
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 177
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 178
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    return-object p0

    .line 180
    :cond_17
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 181
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 182
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_STRING:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    return-object p0
.end method

.method private newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    if-eqz v0, :cond_1d

    .line 163
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 164
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 165
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_BYTES:[B

    .line 166
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0

    .line 168
    :cond_1d
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 169
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 170
    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .registers 2

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    .line 71
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public decode([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    .line 133
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 11

    .line 79
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    .line 81
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateInitialBufferSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    :cond_15
    :goto_15
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_95

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0, p1, v0, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 88
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v5

    if-nez v5, :cond_41

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_41

    .line 112
    :cond_2e
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 113
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v2

    .line 114
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_15

    .line 93
    :cond_41
    :goto_41
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v5

    const/4 v6, 0x6

    mul-int/2addr v5, v6

    invoke-static {p0, v5}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v5

    .line 94
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v5, v7, :cond_7a

    .line 99
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    move v7, v2

    :goto_56
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v8

    if-ge v5, v8, :cond_6d

    .line 100
    invoke-virtual {p1, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v8

    invoke-virtual {p0, v8}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v8

    if-nez v8, :cond_68

    move v8, v6

    goto :goto_69

    :cond_68
    move v8, v3

    :goto_69
    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 102
    :cond_6d
    invoke-static {p0, v7}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v3

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_7a
    if-nez v1, :cond_80

    .line 106
    invoke-static {v6}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 108
    :cond_80
    :goto_80
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 109
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->encodeSurrogate(Ljava/nio/CharBuffer;C)Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->encodeFully(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 118
    :cond_95
    invoke-virtual {p0, p1, v0, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 121
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 122
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .registers 1

    .line 61
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method
