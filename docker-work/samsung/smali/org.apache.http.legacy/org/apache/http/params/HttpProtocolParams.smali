.class public final Lorg/apache/http/params/HttpProtocolParams;
.super Ljava/lang/Object;
.source "HttpProtocolParams.java"

# interfaces
.implements Lorg/apache/http/params/CoreProtocolPNames;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getContentCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 100
    if-eqz p0, :cond_10

    .line 103
    nop

    .line 104
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 106
    const-string v0, "ISO-8859-1"

    .line 108
    :cond_f
    return-object v0

    .line 101
    .end local v0    # "charset":Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 72
    if-eqz p0, :cond_10

    .line 75
    nop

    .line 76
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_f

    .line 78
    const-string v0, "US-ASCII"

    .line 80
    :cond_f
    return-object v0

    .line 73
    .end local v0    # "charset":Ljava/lang/String;
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserAgent(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 154
    if-eqz p0, :cond_b

    .line 157
    const-string v0, "http.useragent"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 155
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 129
    if-eqz p0, :cond_12

    .line 132
    nop

    .line 133
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 135
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    return-object v1

    .line 137
    :cond_e
    move-object v1, v0

    check-cast v1, Lorg/apache/http/ProtocolVersion;

    return-object v1

    .line 130
    .end local v0    # "param":Ljava/lang/Object;
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    .line 117
    if-eqz p0, :cond_8

    .line 120
    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 121
    return-void

    .line 118
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "charset"    # Ljava/lang/String;

    .line 88
    if-eqz p0, :cond_8

    .line 91
    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 92
    return-void

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "b"    # Z

    .line 176
    if-eqz p0, :cond_8

    .line 179
    const-string v0, "http.protocol.expect-continue"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 180
    return-void

    .line 177
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "useragent"    # Ljava/lang/String;

    .line 161
    if-eqz p0, :cond_8

    .line 164
    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 165
    return-void

    .line 162
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
    .registers 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "version"    # Lorg/apache/http/ProtocolVersion;

    .line 147
    if-eqz p0, :cond_8

    .line 150
    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 151
    return-void

    .line 148
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static useExpectContinue(Lorg/apache/http/params/HttpParams;)Z
    .registers 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    .line 168
    if-eqz p0, :cond_a

    .line 171
    const/4 v0, 0x0

    .line 172
    const-string v1, "http.protocol.expect-continue"

    invoke-interface {p0, v1, v0}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    return v0

    .line 169
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
