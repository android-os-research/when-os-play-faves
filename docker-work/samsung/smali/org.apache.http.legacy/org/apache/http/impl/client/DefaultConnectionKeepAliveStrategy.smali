.class public Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 62
    if-eqz p1, :cond_36

    .line 65
    new-instance v0, Lorg/apache/http/message/BasicHeaderElementIterator;

    .line 66
    const-string v1, "Keep-Alive"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 67
    .local v0, "it":Lorg/apache/http/HeaderElementIterator;
    :goto_d
    invoke-interface {v0}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 68
    invoke-interface {v0}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 69
    .local v1, "he":Lorg/apache/http/HeaderElement;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "param":Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_32

    const-string v4, "timeout"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 73
    :try_start_29
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2d} :catch_31

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    .line 74
    :catch_31
    move-exception v4

    .line 77
    .end local v1    # "he":Lorg/apache/http/HeaderElement;
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_32
    goto :goto_d

    .line 78
    :cond_33
    const-wide/16 v1, -0x1

    return-wide v1

    .line 63
    .end local v0    # "it":Lorg/apache/http/HeaderElementIterator;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
