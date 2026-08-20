.class public abstract Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedClientConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile aborted:Z

.field private volatile connManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private volatile duration:J

.field private final executionThread:Ljava/lang/Thread;

.field private volatile markedReusable:Z

.field private volatile wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/OperatedClientConnection;)V
    .registers 5
    .param p1, "mgr"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->executionThread:Ljava/lang/Thread;

    .line 122
    iput-object p1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 123
    iput-object p2, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 125
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    .line 126
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    .line 127
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .registers 3

    .line 377
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    if-eqz v0, :cond_5

    .line 378
    return-void

    .line 380
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    .line 381
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 383
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->shutdown()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    .line 385
    goto :goto_10

    .line 384
    :catch_f
    move-exception v0

    .line 399
    :goto_10
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->executionThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 400
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->releaseConnection()V

    .line 402
    :cond_1f
    return-void
.end method

.method protected final assertNotAborted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    if-nez v0, :cond_5

    .line 157
    return-void

    .line 155
    :cond_5
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connection has been shut down."

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V
    .registers 4
    .param p1, "wrappedConn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .line 167
    if-eqz p1, :cond_3

    .line 170
    return-void

    .line 168
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No wrapped connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected detach()V
    .registers 3

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;

    .line 136
    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 137
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    .line 138
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    .line 223
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 224
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 226
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->flush()V

    .line 227
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .line 296
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 297
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 298
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPort()I
    .registers 3

    .line 303
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 304
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 305
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getLocalPort()I

    move-result v1

    return v1
.end method

.method protected getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .registers 3

    .line 212
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 213
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 214
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v1

    return-object v1
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 3

    .line 311
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 312
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 313
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public getRemotePort()I
    .registers 3

    .line 318
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 319
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 320
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getRemotePort()I

    move-result v1

    return v1
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .registers 5

    .line 332
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 333
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 334
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_f

    .line 335
    const/4 v1, 0x0

    return-object v1

    .line 337
    :cond_f
    const/4 v1, 0x0

    .line 338
    .local v1, "result":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 339
    .local v2, "sock":Ljava/net/Socket;
    instance-of v3, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v3, :cond_1f

    .line 340
    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 342
    :cond_1f
    return-object v1
.end method

.method public getSocketTimeout()I
    .registers 3

    .line 204
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 205
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 206
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocketTimeout()I

    move-result v1

    return v1
.end method

.method protected getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .registers 2

    .line 141
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lorg/apache/http/conn/OperatedClientConnection;

    return-object v0
.end method

.method public isMarkedReusable()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return v0
.end method

.method public isOpen()Z
    .registers 3

    .line 174
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 175
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-nez v0, :cond_8

    .line 176
    const/4 v1, 0x0

    return v1

    .line 178
    :cond_8
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v1

    return v1
.end method

.method public isResponseAvailable(I)Z
    .registers 4
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    .line 235
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 236
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 238
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->isResponseAvailable(I)Z

    move-result v1

    return v1
.end method

.method public isSecure()Z
    .registers 3

    .line 325
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 326
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 327
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isSecure()Z

    move-result v1

    return v1
.end method

.method public isStale()Z
    .registers 3

    .line 184
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->aborted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 185
    return v1

    .line 186
    :cond_6
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 187
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-nez v0, :cond_d

    .line 188
    return v1

    .line 190
    :cond_d
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isStale()Z

    move-result v1

    return v1
.end method

.method public markReusable()V
    .registers 2

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 348
    return-void
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .registers 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    .line 247
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 248
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 250
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 251
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 252
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    .line 260
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 261
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 263
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 264
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public releaseConnection()V
    .registers 5

    .line 370
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v0, :cond_d

    .line 371
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->connManager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-wide v1, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 373
    :cond_d
    return-void
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    .line 273
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 274
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 276
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 277
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 278
    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .registers 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertNotAborted()V

    .line 286
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 287
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 289
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 290
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 291
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 361
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 362
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    goto :goto_11

    .line 364
    :cond_d
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->duration:J

    .line 366
    :goto_11
    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 196
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    .line 197
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->assertValid(Lorg/apache/http/conn/OperatedClientConnection;)V

    .line 198
    invoke-interface {v0, p1}, Lorg/apache/http/conn/OperatedClientConnection;->setSocketTimeout(I)V

    .line 199
    return-void
.end method

.method public unmarkReusable()V
    .registers 2

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 353
    return-void
.end method
