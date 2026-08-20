.class public Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory;
.super Ljava/lang/Object;
.source "BrowserCompatSpecFactory.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;
    .registers 4
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .line 53
    if-eqz p1, :cond_10

    .line 54
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    .line 55
    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;)V

    .line 54
    return-object v0

    .line 57
    :cond_10
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>()V

    return-object v0
.end method
