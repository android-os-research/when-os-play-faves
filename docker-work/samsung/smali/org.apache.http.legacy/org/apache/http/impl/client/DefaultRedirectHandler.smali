.class public Lorg/apache/http/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    .line 78
    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .registers 14
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .line 101
    if-eqz p1, :cond_151

    .line 105
    const-string v0, "location"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 106
    .local v0, "locationHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_12e

    .line 112
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "location":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    const-string v3, "\'"

    if-eqz v2, :cond_34

    .line 114
    iget-object v2, p0, Lorg/apache/http/impl/client/DefaultRedirectHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect requested to location \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 119
    :cond_34
    :try_start_34
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/net/URISyntaxException; {:try_start_34 .. :try_end_39} :catch_114

    .line 122
    .local v2, "uri":Ljava/net/URI;
    nop

    .line 124
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    .line 127
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_a8

    .line 128
    const-string v5, "http.protocol.reject-relative-redirect"

    invoke-interface {v4, v5}, Lorg/apache/http/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 133
    const-string v5, "http.target_host"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpHost;

    .line 135
    .local v5, "target":Lorg/apache/http/HttpHost;
    if-eqz v5, :cond_81

    .line 140
    const-string v7, "http.request"

    invoke-interface {p2, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/HttpRequest;

    .line 144
    .local v7, "request":Lorg/apache/http/HttpRequest;
    :try_start_5f
    new-instance v8, Ljava/net/URI;

    invoke-interface {v7}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, "requestURI":Ljava/net/URI;
    invoke-static {v8, v5, v6}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v9

    .line 146
    .local v9, "absoluteRequestURI":Ljava/net/URI;
    invoke-static {v9, v2}, Lorg/apache/http/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v10
    :try_end_74
    .catch Ljava/net/URISyntaxException; {:try_start_5f .. :try_end_74} :catch_76

    move-object v2, v10

    .line 149
    .end local v8    # "requestURI":Ljava/net/URI;
    .end local v9    # "absoluteRequestURI":Ljava/net/URI;
    goto :goto_a8

    .line 147
    :catch_76
    move-exception v3

    .line 148
    .local v3, "ex":Ljava/net/URISyntaxException;
    new-instance v6, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 136
    .end local v3    # "ex":Ljava/net/URISyntaxException;
    .end local v7    # "request":Lorg/apache/http/HttpRequest;
    :cond_81
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "Target host not available in the HTTP context"

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    .end local v5    # "target":Lorg/apache/http/HttpHost;
    :cond_89
    new-instance v3, Lorg/apache/http/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Relative redirect location \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    :cond_a8
    :goto_a8
    const-string v5, "http.protocol.allow-circular-redirects"

    invoke-interface {v4, v5}, Lorg/apache/http/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 154
    const-string v5, "http.protocol.redirect-locations"

    invoke-interface {p2, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/impl/client/RedirectLocations;

    .line 157
    .local v7, "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    if-nez v7, :cond_c3

    .line 158
    new-instance v8, Lorg/apache/http/impl/client/RedirectLocations;

    invoke-direct {v8}, Lorg/apache/http/impl/client/RedirectLocations;-><init>()V

    move-object v7, v8

    .line 159
    invoke-interface {p2, v5, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    :cond_c3
    invoke-virtual {v2}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_eb

    .line 165
    :try_start_c9
    new-instance v5, Lorg/apache/http/HttpHost;

    .line 166
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v9

    .line 168
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .restart local v5    # "target":Lorg/apache/http/HttpHost;
    invoke-static {v2, v5, v6}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v6
    :try_end_de
    .catch Ljava/net/URISyntaxException; {:try_start_c9 .. :try_end_de} :catch_e0

    move-object v5, v6

    .line 172
    .local v5, "redirectURI":Ljava/net/URI;
    goto :goto_ec

    .line 170
    .end local v5    # "redirectURI":Ljava/net/URI;
    :catch_e0
    move-exception v3

    .line 171
    .restart local v3    # "ex":Ljava/net/URISyntaxException;
    new-instance v5, Lorg/apache/http/ProtocolException;

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 174
    .end local v3    # "ex":Ljava/net/URISyntaxException;
    :cond_eb
    move-object v5, v2

    .line 177
    .restart local v5    # "redirectURI":Ljava/net/URI;
    :goto_ec
    invoke-virtual {v7, v5}, Lorg/apache/http/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v6

    if-nez v6, :cond_f6

    .line 181
    invoke-virtual {v7, v5}, Lorg/apache/http/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    goto :goto_113

    .line 178
    :cond_f6
    new-instance v6, Lorg/apache/http/client/CircularRedirectException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Circular redirect to \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    .end local v5    # "redirectURI":Ljava/net/URI;
    .end local v7    # "redirectLocations":Lorg/apache/http/impl/client/RedirectLocations;
    :cond_113
    :goto_113
    return-object v2

    .line 120
    .end local v2    # "uri":Ljava/net/URI;
    .end local v4    # "params":Lorg/apache/http/params/HttpParams;
    :catch_114
    move-exception v2

    .line 121
    .local v2, "ex":Ljava/net/URISyntaxException;
    new-instance v3, Lorg/apache/http/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid redirect URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "ex":Ljava/net/URISyntaxException;
    :cond_12e
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received redirect response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 109
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but no location header"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    .end local v0    # "locationHeader":Lorg/apache/http/Header;
    :cond_151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .registers 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 83
    if-eqz p1, :cond_11

    .line 86
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 87
    .local v0, "statusCode":I
    packed-switch v0, :pswitch_data_1a

    .line 94
    :pswitch_d
    const/4 v1, 0x0

    return v1

    .line 92
    :pswitch_f
    const/4 v1, 0x1

    return v1

    .line 84
    .end local v0    # "statusCode":I
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1a
    .packed-switch 0x12d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method
