.class public Lorg/apache/http/client/utils/URLEncodedUtils;
.super Ljava/lang/Object;
.source "URLEncodedUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final NAME_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAMETER_SEPARATOR:Ljava/lang/String; = "&"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 180
    nop

    .line 181
    if-eqz p1, :cond_5

    move-object v0, p1

    goto :goto_7

    :cond_5
    :try_start_5
    const-string v0, "ISO-8859-1"

    .line 180
    :goto_7
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    .line 182
    :catch_c
    move-exception v0

    .line 183
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 189
    nop

    .line 190
    if-eqz p1, :cond_5

    move-object v0, p1

    goto :goto_7

    :cond_5
    :try_start_5
    const-string v0, "ISO-8859-1"

    .line 189
    :goto_7
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_b} :catch_c

    return-object v0

    .line 191
    :catch_c
    move-exception v0

    .line 192
    .local v0, "problem":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 164
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 166
    .local v2, "parameter":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "encodedName":Ljava/lang/String;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_28

    invoke-static {v4, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2a

    :cond_28
    const-string v5, ""

    .line 169
    .local v5, "encodedValue":Ljava/lang/String;
    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_35

    .line 170
    const-string v6, "&"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v2    # "parameter":Lorg/apache/http/NameValuePair;
    .end local v3    # "encodedName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "encodedValue":Ljava/lang/String;
    goto :goto_9

    .line 175
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isEncoded(Lorg/apache/http/HttpEntity;)Z
    .registers 4
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .line 118
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 119
    .local v0, "contentType":Lorg/apache/http/Header;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public static parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 81
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    .line 83
    :cond_1e
    return-object v0
.end method

.method public static parse(Lorg/apache/http/HttpEntity;)Ljava/util/List;
    .registers 6
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->isEncoded(Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 102
    invoke-static {p0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "content":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 104
    .local v2, "encoding":Lorg/apache/http/Header;
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 106
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 107
    if-eqz v2, :cond_2c

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    .line 106
    :goto_2d
    invoke-static {v0, v3, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V

    .line 110
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "encoding":Lorg/apache/http/Header;
    :cond_30
    return-object v0
.end method

.method public static parse(Ljava/util/List;Ljava/util/Scanner;Ljava/lang/String;)V
    .registers 8
    .param p1, "scanner"    # Ljava/util/Scanner;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 140
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 141
    :goto_5
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 142
    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_37

    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_37

    .line 146
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, "value":Ljava/lang/String;
    array-length v4, v0

    if-ne v4, v2, :cond_2e

    .line 149
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    :cond_2e
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v2, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_5

    .line 144
    .restart local v0    # "nameValue":[Ljava/lang/String;
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_3f
    return-void
.end method
