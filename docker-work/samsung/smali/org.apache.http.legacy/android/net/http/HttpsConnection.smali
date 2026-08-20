.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    .line 67
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "proxy"    # Lorg/apache/http/HttpHost;
    .param p4, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .line 142
    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 132
    iput-boolean v0, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 143
    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 144
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    .line 114
    :try_start_3
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 114
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .registers 6
    .param p0, "sessionDir"    # Ljava/io/File;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    if-eqz p0, :cond_26

    .line 76
    :try_start_3
    const-string v1, "HttpsConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching SSL sessions in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0}, Lcom/android/org/conscrypt/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lcom/android/org/conscrypt/SSLClientSessionCache;

    move-result-object v1

    move-object v0, v1

    .line 81
    :cond_26
    const-string v1, "TLS"

    const-string v2, "AndroidOpenSSL"

    invoke-static {v1, v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 84
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v4}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v4, v2, v3

    .line 100
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 101
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-virtual {v3, v0}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 103
    const-class v3, Landroid/net/http/HttpsConnection;

    monitor-enter v3
    :try_end_49
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_49} :catch_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_49} :catch_5c
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_49} :catch_5c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_49} :catch_55

    .line 104
    :try_start_49
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    monitor-exit v3

    .line 110
    .end local v0    # "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    nop

    .line 111
    return-void

    .line 105
    .restart local v0    # "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    .restart local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catchall_52
    move-exception v4

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_52

    .end local p0    # "sessionDir":Ljava/io/File;
    :try_start_54
    throw v4
    :try_end_55
    .catch Ljava/security/KeyManagementException; {:try_start_54 .. :try_end_55} :catch_5c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_54 .. :try_end_55} :catch_5c
    .catch Ljava/security/NoSuchProviderException; {:try_start_54 .. :try_end_55} :catch_5c
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55

    .line 108
    .end local v0    # "cache":Lcom/android/org/conscrypt/SSLClientSessionCache;
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .restart local p0    # "sessionDir":Ljava/io/File;
    :catch_55
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v0

    .line 107
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeConnection()V
    .registers 2

    .line 381
    iget-boolean v0, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v0, :cond_8

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 387
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 388
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 395
    :cond_19
    goto :goto_1e

    .line 390
    :catch_1a
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 396
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1e
    return-void
.end method

.method getScheme()Ljava/lang/String;
    .registers 2

    .line 418
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .registers 18
    .param p1, "req"    # Landroid/net/http/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 165
    .local v3, "sslSock":Ljavax/net/ssl/SSLSocket;
    iget-object v0, v1, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    const/16 v5, 0x2000

    const v6, 0xea60

    const/4 v7, 0x1

    if-eqz v0, :cond_12d

    .line 173
    const/4 v8, 0x0

    .line 174
    .local v8, "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    const/4 v9, 0x0

    .line 176
    .local v9, "proxySock":Ljava/net/Socket;
    :try_start_11
    new-instance v0, Ljava/net/Socket;

    iget-object v10, v1, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 177
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v11}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v11

    invoke-direct {v0, v10, v11}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    move-object v9, v0

    .line 179
    invoke-virtual {v9, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 181
    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    move-object v8, v0

    .line 182
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 183
    .local v0, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 185
    invoke-virtual {v8, v9, v0}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_37} :catch_119

    .line 198
    .end local v0    # "params":Lorg/apache/http/params/HttpParams;
    nop

    .line 200
    const/4 v6, 0x0

    .line 201
    .local v6, "statusLine":Lorg/apache/http/StatusLine;
    const/4 v10, 0x0

    .line 202
    .local v10, "statusCode":I
    new-instance v0, Landroid/net/http/Headers;

    invoke-direct {v0}, Landroid/net/http/Headers;-><init>()V

    move-object v11, v0

    .line 204
    .local v11, "headers":Landroid/net/http/Headers;
    :try_start_40
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    const-string v12, "CONNECT"

    iget-object v13, v1, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    .line 205
    invoke-virtual {v13}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .local v0, "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    iget-object v12, v2, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v12}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_55
    if-ge v14, v13, :cond_83

    aget-object v15, v12, v14

    .line 211
    .local v15, "h":Lorg/apache/http/Header;
    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "headerName":Ljava/lang/String;
    const-string v5, "proxy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "keep-alive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "host"

    .line 213
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 214
    :cond_7b
    invoke-virtual {v0, v15}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 210
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v15    # "h":Lorg/apache/http/Header;
    :cond_7e
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0x2000

    goto :goto_55

    .line 218
    :cond_83
    invoke-virtual {v8, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 219
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 226
    :cond_89
    invoke-virtual {v8, v11}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v4

    move-object v6, v4

    .line 227
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4
    :try_end_92
    .catch Lorg/apache/http/ParseException; {:try_start_40 .. :try_end_92} :catch_10a
    .catch Lorg/apache/http/HttpException; {:try_start_40 .. :try_end_92} :catch_fb
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_92} :catch_ec

    move v10, v4

    .line 228
    const/16 v4, 0xc8

    if-lt v10, v4, :cond_89

    .line 253
    .end local v0    # "proxyReq":Lorg/apache/http/message/BasicHttpRequest;
    nop

    .line 255
    if-ne v10, v4, :cond_c8

    .line 257
    :try_start_9a
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v4, v1, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    .line 258
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    .line 257
    invoke-virtual {v0, v9, v4, v5, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_b0} :catch_b4

    .line 270
    .end local v3    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .local v0, "sslSock":Ljavax/net/ssl/SSLSocket;
    nop

    .line 288
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v8    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v9    # "proxySock":Ljava/net/Socket;
    .end local v10    # "statusCode":I
    .end local v11    # "headers":Landroid/net/http/Headers;
    move-object v3, v0

    goto/16 :goto_148

    .line 259
    .end local v0    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .restart local v3    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v8    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .restart local v9    # "proxySock":Ljava/net/Socket;
    .restart local v10    # "statusCode":I
    .restart local v11    # "headers":Landroid/net/http/Headers;
    :catch_b4
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_ba

    .line 261
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 264
    :cond_ba
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_c2

    .line 266
    const-string v4, "failed to create an SSL socket"

    .line 269
    :cond_c2
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :cond_c8
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    .line 275
    .local v0, "version":Lorg/apache/http/ProtocolVersion;
    iget-object v4, v2, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v5

    .line 276
    invoke-virtual {v0}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v7

    .line 278
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    .line 275
    invoke-interface {v4, v5, v7, v10, v12}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 279
    iget-object v4, v2, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v4, v11}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 280
    iget-object v4, v2, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v4}, Landroid/net/http/EventHandler;->endData()V

    .line 282
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 286
    const/4 v4, 0x0

    return-object v4

    .line 245
    .end local v0    # "version":Lorg/apache/http/ProtocolVersion;
    :catch_ec
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 247
    .restart local v4    # "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_f5

    .line 248
    const-string v4, "failed to send a CONNECT request"

    .line 252
    :cond_f5
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :catch_fb
    move-exception v0

    .line 238
    .local v0, "e":Lorg/apache/http/HttpException;
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 239
    .restart local v4    # "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_104

    .line 240
    const-string v4, "failed to send a CONNECT request"

    .line 244
    :cond_104
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    .end local v0    # "e":Lorg/apache/http/HttpException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    :catch_10a
    move-exception v0

    .line 230
    .local v0, "e":Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 231
    .restart local v4    # "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_113

    .line 232
    const-string v4, "failed to send a CONNECT request"

    .line 236
    :cond_113
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    .end local v0    # "e":Lorg/apache/http/ParseException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v10    # "statusCode":I
    .end local v11    # "headers":Landroid/net/http/Headers;
    :catch_119
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    if-eqz v8, :cond_11f

    .line 188
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 191
    :cond_11f
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 192
    .restart local v4    # "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_127

    .line 193
    const-string v4, "failed to establish a connection to the proxy"

    .line 197
    :cond_127
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v8    # "proxyConnection":Landroid/net/http/AndroidHttpClientConnection;
    .end local v9    # "proxySock":Ljava/net/Socket;
    :cond_12d
    :try_start_12d
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v4, v1, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    .line 292
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v5

    .line 291
    invoke-virtual {v0, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v3, v0

    .line 293
    invoke-virtual {v3, v6}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_147} :catch_1c7

    .line 305
    nop

    .line 309
    :goto_148
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v0

    iget-object v4, v1, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    .line 310
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    .line 313
    .local v4, "error":Landroid/net/http/SslError;
    if-eqz v4, :cond_1b2

    .line 319
    iget-object v5, v1, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v5

    .line 320
    :try_start_15b
    iput-boolean v7, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 321
    monitor-exit v5
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_1af

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v5

    .line 324
    .local v5, "canHandle":Z
    if-eqz v5, :cond_196

    .line 327
    iget-object v6, v1, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v6

    .line 328
    :try_start_16b
    iget-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z
    :try_end_16d
    .catchall {:try_start_16b .. :try_end_16d} :catchall_193

    if-eqz v0, :cond_182

    .line 336
    :try_start_16f
    iget-object v0, v1, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    const-wide/32 v8, 0x927c0

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 337
    iget-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v0, :cond_180

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 342
    iput-boolean v7, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_180
    .catch Ljava/lang/InterruptedException; {:try_start_16f .. :try_end_180} :catch_181
    .catchall {:try_start_16f .. :try_end_180} :catchall_193

    .line 350
    :cond_180
    goto :goto_182

    .line 348
    :catch_181
    move-exception v0

    .line 352
    :cond_182
    :goto_182
    :try_start_182
    iget-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z

    if-nez v0, :cond_188

    .line 358
    monitor-exit v6

    goto :goto_1b2

    .line 355
    :cond_188
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 356
    new-instance v0, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v7, "connection closed by the user"

    invoke-direct {v0, v7}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .end local v4    # "error":Landroid/net/http/SslError;
    .end local v5    # "canHandle":Z
    .end local p0    # "this":Landroid/net/http/HttpsConnection;
    .end local p1    # "req":Landroid/net/http/Request;
    throw v0

    .line 358
    .restart local v3    # "sslSock":Ljavax/net/ssl/SSLSocket;
    .restart local v4    # "error":Landroid/net/http/SslError;
    .restart local v5    # "canHandle":Z
    .restart local p0    # "this":Landroid/net/http/HttpsConnection;
    .restart local p1    # "req":Landroid/net/http/Request;
    :catchall_193
    move-exception v0

    monitor-exit v6
    :try_end_195
    .catchall {:try_start_182 .. :try_end_195} :catchall_193

    throw v0

    .line 325
    :cond_196
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .end local v5    # "canHandle":Z
    :catchall_1af
    move-exception v0

    :try_start_1b0
    monitor-exit v5
    :try_end_1b1
    .catchall {:try_start_1b0 .. :try_end_1b1} :catchall_1af

    throw v0

    .line 362
    :cond_1b2
    :goto_1b2
    new-instance v0, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v0}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 363
    .local v0, "conn":Landroid/net/http/AndroidHttpClientConnection;
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 364
    .local v5, "params":Lorg/apache/http/params/BasicHttpParams;
    const-string v6, "http.socket.buffer-size"

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 365
    invoke-virtual {v0, v3, v5}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 367
    return-object v0

    .line 294
    .end local v0    # "conn":Landroid/net/http/AndroidHttpClientConnection;
    .end local v4    # "error":Landroid/net/http/SslError;
    .end local v5    # "params":Lorg/apache/http/params/BasicHttpParams;
    :catch_1c7
    move-exception v0

    .line 295
    .local v0, "e":Ljava/io/IOException;
    if-eqz v3, :cond_1cd

    .line 296
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 299
    :cond_1cd
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "errorMessage":Ljava/lang/String;
    if-nez v4, :cond_1d5

    .line 301
    const-string v4, "failed to create an SSL socket"

    .line 304
    :cond_1d5
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method restartConnection(Z)V
    .registers 4
    .param p1, "proceed"    # Z

    .line 407
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_14

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 410
    if-nez p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 411
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 413
    :cond_14
    monitor-exit v0

    .line 414
    return-void

    .line 413
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 2
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    .line 152
    iput-object p1, p0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 153
    return-void
.end method
