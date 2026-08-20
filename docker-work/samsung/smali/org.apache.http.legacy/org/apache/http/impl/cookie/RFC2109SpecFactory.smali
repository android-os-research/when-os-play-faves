.class public Lorg/apache/http/impl/cookie/RFC2109SpecFactory;
.super Ljava/lang/Object;
.source "RFC2109SpecFactory.java"

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
    .registers 6
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .line 53
    if-eqz p1, :cond_17

    .line 54
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109Spec;

    .line 55
    const-string v1, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 56
    const-string v3, "http.protocol.single-cookie-header"

    invoke-interface {p1, v3, v2}, Lorg/apache/http/params/HttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>([Ljava/lang/String;Z)V

    .line 54
    return-object v0

    .line 58
    :cond_17
    new-instance v0, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>()V

    return-object v0
.end method
