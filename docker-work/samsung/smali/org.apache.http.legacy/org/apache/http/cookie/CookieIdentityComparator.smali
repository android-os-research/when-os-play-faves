.class public Lorg/apache/http/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lorg/apache/http/cookie/Cookie;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dfc6d99bbaa936cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 51
    check-cast p1, Lorg/apache/http/cookie/Cookie;

    check-cast p2, Lorg/apache/http/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookieIdentityComparator;->compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/Cookie;)I
    .registers 6
    .param p1, "c1"    # Lorg/apache/http/cookie/Cookie;
    .param p2, "c2"    # Lorg/apache/http/cookie/Cookie;

    .line 57
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "res":I
    if-nez v0, :cond_22

    .line 60
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "d1":Ljava/lang/String;
    if-nez v1, :cond_16

    .line 62
    const-string v1, ""

    .line 64
    :cond_16
    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "d2":Ljava/lang/String;
    if-nez v2, :cond_1e

    .line 66
    const-string v2, ""

    .line 68
    :cond_1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 70
    .end local v1    # "d1":Ljava/lang/String;
    .end local v2    # "d2":Ljava/lang/String;
    :cond_22
    return v0
.end method
