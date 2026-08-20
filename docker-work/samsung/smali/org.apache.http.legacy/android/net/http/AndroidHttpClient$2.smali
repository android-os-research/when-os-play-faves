.class Landroid/net/http/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method constructor <init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "conman"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 177
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 4

    .line 192
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 193
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    nop

    .line 195
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v1

    .line 193
    const-string v2, "http.authscheme-registry"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    nop

    .line 198
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v1

    .line 196
    const-string v2, "http.cookiespec-registry"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    nop

    .line 201
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    .line 199
    const-string v2, "http.auth.credentials-provider"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .registers 5

    .line 181
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 182
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Landroid/net/http/AndroidHttpClient;->-$$Nest$sfgetsThreadCheckInterceptor()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 183
    new-instance v1, Landroid/net/http/AndroidHttpClient$CurlLogger;

    iget-object v2, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/net/http/AndroidHttpClient$CurlLogger;-><init>(Landroid/net/http/AndroidHttpClient;Landroid/net/http/AndroidHttpClient$CurlLogger-IA;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 185
    return-object v0
.end method
