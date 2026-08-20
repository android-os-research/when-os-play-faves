.class public final Lorg/apache/http/util/EncodingUtils;
.super Ljava/lang/Object;
.source "EncodingUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 135
    if-eqz p0, :cond_12

    .line 140
    :try_start_2
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 141
    :catch_9
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAsciiString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .line 178
    if-eqz p0, :cond_9

    .line 181
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAsciiString([BII)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 158
    if-eqz p0, :cond_13

    .line 163
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_a

    return-object v0

    .line 164
    :catch_a
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .line 112
    if-eqz p0, :cond_1d

    .line 116
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 121
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 122
    :catch_f
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 117
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .line 70
    if-eqz p0, :cond_1f

    .line 74
    if-eqz p3, :cond_17

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    .line 79
    :try_start_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    .line 80
    :catch_10
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    .line 75
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset may not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString([BLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "charset"    # Ljava/lang/String;

    .line 96
    if-eqz p0, :cond_9

    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
