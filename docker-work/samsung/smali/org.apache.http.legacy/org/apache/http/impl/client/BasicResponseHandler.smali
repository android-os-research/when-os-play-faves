.class public Lorg/apache/http/impl/client/BasicResponseHandler;
.super Ljava/lang/Object;
.source "BasicResponseHandler.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/BasicResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 75
    .local v0, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_19

    .line 80
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 81
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    :cond_14
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    :goto_18
    return-object v2

    .line 76
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_19
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 77
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
