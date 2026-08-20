.class public Lorg/apache/http/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"

# interfaces
.implements Lorg/apache/http/HttpResponseFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    sget-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>(Lorg/apache/http/ReasonPhraseCatalog;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/ReasonPhraseCatalog;)V
    .registers 4
    .param p1, "catalog"    # Lorg/apache/http/ReasonPhraseCatalog;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_8

    .line 76
    iput-object p1, p0, Lorg/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    .line 77
    return-void

    .line 73
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reason phrase catalog must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected determineLocale(Lorg/apache/http/protocol/HttpContext;)Ljava/util/Locale;
    .registers 3
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 124
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public newHttpResponse(Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 9
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "status"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 93
    if-eqz p1, :cond_19

    .line 96
    invoke-virtual {p0, p3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;->determineLocale(Lorg/apache/http/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v0

    .line 97
    .local v0, "loc":Ljava/util/Locale;
    iget-object v1, p0, Lorg/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/message/BasicStatusLine;

    invoke-direct {v2, p1, p2, v1}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 99
    .local v2, "statusline":Lorg/apache/http/StatusLine;
    new-instance v3, Lorg/apache/http/message/BasicHttpResponse;

    iget-object v4, p0, Lorg/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    invoke-direct {v3, v2, v4, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v3

    .line 94
    .end local v0    # "loc":Ljava/util/Locale;
    .end local v1    # "reason":Ljava/lang/String;
    .end local v2    # "statusline":Lorg/apache/http/StatusLine;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP version may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newHttpResponse(Lorg/apache/http/StatusLine;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 106
    if-eqz p1, :cond_e

    .line 109
    invoke-virtual {p0, p2}, Lorg/apache/http/impl/DefaultHttpResponseFactory;->determineLocale(Lorg/apache/http/protocol/HttpContext;)Ljava/util/Locale;

    move-result-object v0

    .line 110
    .local v0, "loc":Ljava/util/Locale;
    new-instance v1, Lorg/apache/http/message/BasicHttpResponse;

    iget-object v2, p0, Lorg/apache/http/impl/DefaultHttpResponseFactory;->reasonCatalog:Lorg/apache/http/ReasonPhraseCatalog;

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-object v1

    .line 107
    .end local v0    # "loc":Ljava/util/Locale;
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status line may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
