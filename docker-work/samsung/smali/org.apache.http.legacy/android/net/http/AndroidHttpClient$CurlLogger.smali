.class Landroid/net/http/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method private constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .registers 2

    .line 537
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$CurlLogger;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/AndroidHttpClient;Landroid/net/http/AndroidHttpClient$CurlLogger-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient$CurlLogger;-><init>(Landroid/net/http/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient$CurlLogger;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->-$$Nest$fgetcurlConfiguration(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 541
    .local v0, "configuration":Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_1d

    .line 542
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->-$$Nest$misLoggable(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1d

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1d

    .line 546
    move-object v1, p1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/http/AndroidHttpClient;->-$$Nest$smtoCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->-$$Nest$mprintln(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 548
    :cond_1d
    return-void
.end method
