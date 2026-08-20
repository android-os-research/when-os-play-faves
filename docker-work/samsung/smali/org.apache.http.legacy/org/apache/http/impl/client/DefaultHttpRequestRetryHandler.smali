.class public Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 77
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3
    .param p1, "retryCount"    # I
    .param p2, "requestSentRetryEnabled"    # Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 70
    iput-boolean p2, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .registers 2

    .line 137
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 9
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 87
    if-eqz p1, :cond_44

    .line 90
    if-eqz p3, :cond_3c

    .line 93
    iget v0, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_a

    .line 95
    return v1

    .line 97
    :cond_a
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 99
    return v2

    .line 101
    :cond_10
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_15

    .line 103
    return v1

    .line 105
    :cond_15
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1a

    .line 107
    return v1

    .line 109
    :cond_1a
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_1f

    .line 111
    return v1

    .line 113
    :cond_1f
    nop

    .line 114
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 115
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_32

    move v3, v2

    goto :goto_33

    :cond_32
    move v3, v1

    .line 116
    .local v3, "sent":Z
    :goto_33
    if-eqz v3, :cond_3b

    iget-boolean v4, p0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v4, :cond_3a

    goto :goto_3b

    .line 122
    :cond_3a
    return v1

    .line 119
    :cond_3b
    :goto_3b
    return v2

    .line 91
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v3    # "sent":Z
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
