.class Landroid/net/http/HttpConnection;
.super Landroid/net/http/Connection;
.source "HttpConnection.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 36
    return-void
.end method


# virtual methods
.method closeConnection()V
    .registers 2

    .line 70
    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p0, Landroid/net/http/HttpConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 78
    :cond_11
    goto :goto_16

    .line 73
    :catch_12
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method getScheme()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "http"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .registers 8
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v0

    .line 49
    .local v0, "eventHandler":Landroid/net/http/EventHandler;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/HttpConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 50
    iget-object v1, p0, Landroid/net/http/HttpConnection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 52
    new-instance v1, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v1}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 53
    .local v1, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 54
    .local v2, "params":Lorg/apache/http/params/BasicHttpParams;
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Landroid/net/http/HttpConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/HttpConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 55
    .local v3, "sock":Ljava/net/Socket;
    const-string v4, "http.socket.buffer-size"

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 56
    invoke-virtual {v1, v3, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 57
    return-object v1
.end method

.method restartConnection(Z)V
    .registers 2
    .param p1, "abort"    # Z

    .line 86
    return-void
.end method
