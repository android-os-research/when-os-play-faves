.class public Lorg/apache/http/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    .line 81
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 22
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_1ac

    .line 88
    if-eqz v3, :cond_1a4

    .line 93
    const-string v0, "http.cookie-store"

    invoke-interface {v3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/http/client/CookieStore;

    .line 95
    .local v4, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v4, :cond_1d

    .line 96
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Cookie store not available in HTTP context"

    invoke-interface {v0, v5}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 97
    return-void

    .line 101
    :cond_1d
    const-string v0, "http.cookiespec-registry"

    invoke-interface {v3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/http/cookie/CookieSpecRegistry;

    .line 103
    .local v5, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    if-nez v5, :cond_30

    .line 104
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "CookieSpec registry not available in HTTP context"

    invoke-interface {v0, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 105
    return-void

    .line 109
    :cond_30
    const-string v0, "http.target_host"

    invoke-interface {v3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/http/HttpHost;

    .line 111
    .local v6, "targetHost":Lorg/apache/http/HttpHost;
    if-eqz v6, :cond_19c

    .line 116
    const-string v0, "http.connection"

    invoke-interface {v3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/apache/http/conn/ManagedClientConnection;

    .line 118
    .local v7, "conn":Lorg/apache/http/conn/ManagedClientConnection;
    if-eqz v7, :cond_194

    .line 122
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/client/params/HttpClientParams;->getCookiePolicy(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "policy":Ljava/lang/String;
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 124
    iget-object v0, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CookieSpec selected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 128
    :cond_6e
    instance-of v0, v2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_7a

    .line 129
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .local v0, "requestURI":Ljava/net/URI;
    goto :goto_88

    .line 132
    .end local v0    # "requestURI":Ljava/net/URI;
    :cond_7a
    :try_start_7a
    new-instance v0, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/net/URISyntaxException; {:try_start_7a .. :try_end_87} :catch_16e

    .line 136
    .restart local v0    # "requestURI":Ljava/net/URI;
    nop

    .line 139
    :goto_88
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "hostName":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v10

    .line 141
    .local v10, "port":I
    if-gez v10, :cond_96

    .line 142
    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->getRemotePort()I

    move-result v10

    .line 145
    :cond_96
    new-instance v11, Lorg/apache/http/cookie/CookieOrigin;

    .line 148
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 149
    invoke-interface {v7}, Lorg/apache/http/conn/ManagedClientConnection;->isSecure()Z

    move-result v13

    invoke-direct {v11, v9, v10, v12, v13}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 152
    .local v11, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v12

    .line 154
    .local v12, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v13, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v14, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_bd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_115

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "requestURI":Ljava/net/URI;
    .local v17, "requestURI":Ljava/net/URI;
    move-object/from16 v0, v16

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 158
    .local v0, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v12, v0, v11}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v16

    if-eqz v16, :cond_108

    .line 159
    move-object/from16 v16, v4

    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .local v16, "cookieStore":Lorg/apache/http/client/CookieStore;
    iget-object v4, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_102

    .line 160
    iget-object v4, v1, Lorg/apache/http/client/protocol/RequestAddCookies;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    .end local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .local v18, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    const-string v5, "Cookie "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " match "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_104

    .line 159
    .end local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .restart local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :cond_102
    move-object/from16 v18, v5

    .line 162
    .end local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .restart local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :goto_104
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10c

    .line 158
    .end local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .restart local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :cond_108
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .line 164
    .end local v0    # "cookie":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .restart local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :goto_10c
    move-object/from16 v1, p0

    move-object/from16 v4, v16

    move-object/from16 v0, v17

    move-object/from16 v5, v18

    goto :goto_bd

    .line 166
    .end local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v17    # "requestURI":Ljava/net/URI;
    .end local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .local v0, "requestURI":Ljava/net/URI;
    .restart local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :cond_115
    move-object/from16 v17, v0

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .end local v0    # "requestURI":Ljava/net/URI;
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .restart local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v17    # "requestURI":Ljava/net/URI;
    .restart local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_139

    .line 167
    invoke-interface {v12, v14}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_129
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_139

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/Header;

    .line 169
    .local v4, "header":Lorg/apache/http/Header;
    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 170
    .end local v4    # "header":Lorg/apache/http/Header;
    goto :goto_129

    .line 173
    .end local v0    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_139
    invoke-interface {v12}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v0

    .line 174
    .local v0, "ver":I
    if-lez v0, :cond_163

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "needVersionHeader":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_144
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_158

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 177
    .local v5, "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v15

    if-eq v0, v15, :cond_157

    .line 178
    const/4 v1, 0x1

    .line 180
    .end local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_157
    goto :goto_144

    .line 182
    :cond_158
    if-eqz v1, :cond_163

    .line 183
    invoke-interface {v12}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v4

    .line 184
    .restart local v4    # "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_163

    .line 186
    invoke-interface {v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 193
    .end local v1    # "needVersionHeader":Z
    .end local v4    # "header":Lorg/apache/http/Header;
    :cond_163
    const-string v1, "http.cookie-spec"

    invoke-interface {v3, v1, v12}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v1, "http.cookie-origin"

    invoke-interface {v3, v1, v11}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    return-void

    .line 133
    .end local v0    # "ver":I
    .end local v9    # "hostName":Ljava/lang/String;
    .end local v10    # "port":I
    .end local v11    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v12    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .end local v13    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v17    # "requestURI":Ljava/net/URI;
    .end local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .local v4, "cookieStore":Lorg/apache/http/client/CookieStore;
    .local v5, "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :catch_16e
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    .line 134
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .local v0, "ex":Ljava/net/URISyntaxException;
    .restart local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid request URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 119
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .end local v8    # "policy":Ljava/lang/String;
    .end local v16    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v18    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .restart local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .restart local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    :cond_194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client connection not specified in HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    .end local v7    # "conn":Lorg/apache/http/conn/ManagedClientConnection;
    :cond_19c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host not specified in HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    .end local v4    # "cookieStore":Lorg/apache/http/client/CookieStore;
    .end local v5    # "registry":Lorg/apache/http/cookie/CookieSpecRegistry;
    .end local v6    # "targetHost":Lorg/apache/http/HttpHost;
    :cond_1a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
