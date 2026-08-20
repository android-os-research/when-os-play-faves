.class public Lorg/apache/http/impl/cookie/BasicExpiresHandler;
.super Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandler;
.source "BasicExpiresHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "datepatterns"    # [Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieAttributeHandler;-><init>()V

    .line 49
    if-eqz p1, :cond_8

    .line 52
    iput-object p1, p0, Lorg/apache/http/impl/cookie/BasicExpiresHandler;->datepatterns:[Ljava/lang/String;

    .line 53
    return-void

    .line 50
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of date patterns may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .registers 7
    .param p1, "cookie"    # Lorg/apache/http/cookie/SetCookie;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .line 57
    if-eqz p1, :cond_31

    .line 60
    if-eqz p2, :cond_29

    .line 64
    :try_start_4
    iget-object v0, p0, Lorg/apache/http/impl/cookie/BasicExpiresHandler;->datepatterns:[Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/http/cookie/SetCookie;->setExpiryDate(Ljava/util/Date;)V
    :try_end_d
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_4 .. :try_end_d} :catch_f

    .line 68
    nop

    .line 69
    return-void

    .line 65
    :catch_f
    move-exception v0

    .line 66
    .local v0, "dpe":Lorg/apache/http/impl/cookie/DateParseException;
    new-instance v1, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse expires attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "dpe":Lorg/apache/http/impl/cookie/DateParseException;
    :cond_29
    new-instance v0, Lorg/apache/http/cookie/MalformedCookieException;

    const-string v1, "Missing value for expires attribute"

    invoke-direct {v0, v1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cookie may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
