.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 96
    if-eqz p0, :cond_24

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 101
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 102
    .local v1, "values":[Lorg/apache/http/HeaderElement;
    array-length v2, v1

    if-lez v2, :cond_23

    .line 103
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "charset"

    invoke-interface {v2, v3}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 104
    .local v2, "param":Lorg/apache/http/NameValuePair;
    if-eqz v2, :cond_23

    .line 105
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 109
    .end local v1    # "values":[Lorg/apache/http/HeaderElement;
    .end local v2    # "param":Lorg/apache/http/NameValuePair;
    :cond_23
    return-object v0

    .line 97
    .end local v0    # "charset":Ljava/lang/String;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(Lorg/apache/http/HttpEntity;)[B
    .registers 9
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_4b

    .line 69
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 70
    .local v0, "instream":Ljava/io/InputStream;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 71
    new-array v1, v1, [B

    return-object v1

    .line 73
    :cond_c
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_43

    .line 76
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 77
    .local v2, "i":I
    if-gez v2, :cond_20

    .line 78
    const/16 v2, 0x1000

    .line 80
    :cond_20
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v3, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 82
    .local v3, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v4, 0x1000

    :try_start_27
    new-array v4, v4, [B

    .line 84
    .local v4, "tmp":[B
    :goto_29
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "l":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_35

    .line 85
    invoke-virtual {v3, v4, v1, v6}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_3e

    goto :goto_29

    .line 88
    .end local v4    # "tmp":[B
    .end local v6    # "l":I
    :cond_35
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 89
    nop

    .line 90
    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 88
    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 89
    throw v1

    .line 74
    .end local v2    # "i":I
    .end local v3    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity too large to be buffered in memory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    .end local v0    # "instream":Ljava/io/InputStream;
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 114
    if-eqz p0, :cond_5b

    .line 117
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 118
    .local v0, "instream":Ljava/io/InputStream;
    if-nez v0, :cond_b

    .line 119
    const-string v1, ""

    return-object v1

    .line 121
    :cond_b
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_53

    .line 124
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int v1, v1

    .line 125
    .local v1, "i":I
    if-gez v1, :cond_1f

    .line 126
    const/16 v1, 0x1000

    .line 128
    :cond_1f
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "charset":Ljava/lang/String;
    if-nez v2, :cond_26

    .line 130
    move-object v2, p1

    .line 132
    :cond_26
    if-nez v2, :cond_2a

    .line 133
    const-string v2, "ISO-8859-1"

    .line 135
    :cond_2a
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 136
    .local v3, "reader":Ljava/io/Reader;
    new-instance v4, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v4, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 138
    .local v4, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v5, 0x400

    :try_start_36
    new-array v5, v5, [C

    .line 140
    .local v5, "tmp":[C
    :goto_38
    invoke-virtual {v3, v5}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v7, v6

    .local v7, "l":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_45

    .line 141
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_4e

    goto :goto_38

    .line 144
    .end local v5    # "tmp":[C
    .end local v7    # "l":I
    :cond_45
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 145
    nop

    .line 146
    invoke-virtual {v4}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 144
    :catchall_4e
    move-exception v5

    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 145
    throw v5

    .line 122
    .end local v1    # "i":I
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/Reader;
    .end local v4    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP entity too large to be buffered in memory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "instream":Ljava/io/InputStream;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP entity may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
