.class public abstract Lorg/apache/http/client/methods/HttpRequestBase;
.super Lorg/apache/http/message/AbstractHttpMessage;
.source "HttpRequestBase.java"

# interfaces
.implements Lorg/apache/http/client/methods/HttpUriRequest;
.implements Lorg/apache/http/client/methods/AbortableHttpRequest;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private abortLock:Ljava/util/concurrent/locks/Lock;

.field private aborted:Z

.field private connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

.field private releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lorg/apache/http/message/AbstractHttpMessage;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    .line 78
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4

    .line 142
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_29

    if-eqz v0, :cond_f

    .line 152
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    return-void

    .line 147
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    .line 149
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 150
    .local v0, "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_29

    .line 152
    .local v1, "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    iget-object v2, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 153
    nop

    .line 159
    if-eqz v0, :cond_21

    .line 160
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionRequest;->abortRequest()V

    .line 162
    :cond_21
    if-eqz v1, :cond_28

    .line 164
    :try_start_23
    invoke-interface {v1}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    .line 167
    goto :goto_28

    .line 165
    :catch_27
    move-exception v2

    .line 169
    :cond_28
    :goto_28
    return-void

    .line 152
    .end local v0    # "localRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    .end local v1    # "localTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 153
    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 177
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    .line 178
    .local v0, "clone":Lorg/apache/http/client/methods/HttpRequestBase;
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    .line 180
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

    .line 181
    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 182
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->headergroup:Lorg/apache/http/message/HeaderGroup;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/HeaderGroup;

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->headergroup:Lorg/apache/http/message/HeaderGroup;

    .line 183
    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/params/HttpParams;

    iput-object v1, v0, Lorg/apache/http/client/methods/HttpRequestBase;->params:Lorg/apache/http/params/HttpParams;

    .line 184
    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .registers 2

    .line 83
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .registers 6

    .line 91
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    .line 93
    .local v1, "ver":Lorg/apache/http/ProtocolVersion;
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 94
    .local v2, "uri":Ljava/net/URI;
    const/4 v3, 0x0

    .line 95
    .local v3, "uritext":Ljava/lang/String;
    if-eqz v2, :cond_13

    .line 96
    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    .line 98
    :cond_13
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1d

    .line 99
    :cond_1b
    const-string v3, "/"

    .line 101
    :cond_1d
    new-instance v4, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v4, v0, v3, v1}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v4
.end method

.method public getURI()Ljava/net/URI;
    .registers 2

    .line 87
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .registers 2

    .line 172
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    return v0
.end method

.method public setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
    .registers 4
    .param p1, "connRequest"    # Lorg/apache/http/conn/ClientConnectionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 112
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    if-nez v0, :cond_15

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;

    .line 117
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1d

    .line 119
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    nop

    .line 121
    return-void

    .line 113
    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    throw v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    .line 119
    .restart local p0    # "this":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local p1    # "connRequest":Lorg/apache/http/conn/ClientConnectionRequest;
    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 120
    throw v0
.end method

.method public setReleaseTrigger(Lorg/apache/http/conn/ConnectionReleaseTrigger;)V
    .registers 4
    .param p1, "releaseTrigger"    # Lorg/apache/http/conn/ConnectionReleaseTrigger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    :try_start_5
    iget-boolean v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->aborted:Z

    if-nez v0, :cond_15

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->connRequest:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 132
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->releaseTrigger:Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1d

    .line 134
    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    nop

    .line 136
    return-void

    .line 128
    :cond_15
    :try_start_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request already aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local p1    # "releaseTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    throw v0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1d

    .line 134
    .restart local p0    # "this":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local p1    # "releaseTrigger":Lorg/apache/http/conn/ConnectionReleaseTrigger;
    :catchall_1d
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    throw v0
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 2
    .param p1, "uri"    # Ljava/net/URI;

    .line 105
    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    .line 106
    return-void
.end method
