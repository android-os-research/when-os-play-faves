.class public Lorg/apache/http/protocol/ResponseDate;
.super Ljava/lang/Object;
.source "ResponseDate.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpDateGenerator;-><init>()V

    sput-object v0, Lorg/apache/http/protocol/ResponseDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_20

    .line 70
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 71
    .local v0, "status":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1f

    .line 72
    const-string v1, "Date"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 73
    sget-object v2, Lorg/apache/http/protocol/ResponseDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    invoke-virtual {v2}, Lorg/apache/http/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "httpdate":Ljava/lang/String;
    invoke-interface {p1, v1, v2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v2    # "httpdate":Ljava/lang/String;
    :cond_1f
    return-void

    .line 67
    .end local v0    # "status":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
