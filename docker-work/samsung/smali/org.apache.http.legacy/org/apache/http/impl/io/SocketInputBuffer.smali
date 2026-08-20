.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .registers 6
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 66
    if-eqz p1, :cond_11

    .line 69
    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    .line 75
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    .line 77
    return-void

    .line 67
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isDataAvailable(I)Z
    .registers 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v0

    .line 81
    .local v0, "result":Z
    if-nez v0, :cond_2f

    .line 82
    iget-object v1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 84
    .local v1, "oldtimeout":I
    :try_start_c
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 86
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v2
    :try_end_18
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_18} :catch_21
    .catchall {:try_start_c .. :try_end_18} :catchall_1f

    move v0, v2

    .line 92
    :goto_19
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 93
    goto :goto_2f

    .line 92
    :catchall_1f
    move-exception v2

    goto :goto_29

    .line 87
    :catch_21
    move-exception v2

    .line 88
    .local v2, "e":Ljava/io/InterruptedIOException;
    :try_start_22
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_27

    .end local v2    # "e":Ljava/io/InterruptedIOException;
    goto :goto_19

    .line 89
    .restart local v2    # "e":Ljava/io/InterruptedIOException;
    :cond_27
    nop

    .end local v0    # "result":Z
    .end local v1    # "oldtimeout":I
    .end local p0    # "this":Lorg/apache/http/impl/io/SocketInputBuffer;
    .end local p1    # "timeout":I
    throw v2
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 92
    .end local v2    # "e":Ljava/io/InterruptedIOException;
    .restart local v0    # "result":Z
    .restart local v1    # "oldtimeout":I
    .restart local p0    # "this":Lorg/apache/http/impl/io/SocketInputBuffer;
    .restart local p1    # "timeout":I
    :goto_29
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 93
    throw v2

    .line 95
    .end local v1    # "oldtimeout":I
    :cond_2f
    :goto_2f
    return v0
.end method

.method public isStale()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 107
    return v1

    .line 109
    :cond_8
    iget-object v0, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 111
    .local v0, "oldTimeout":I
    const/4 v2, 0x1

    :try_start_f
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    move-result v3
    :try_end_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_18} :catch_31
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_29
    .catchall {:try_start_f .. :try_end_18} :catchall_22

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    move v1, v2

    .line 118
    :cond_1c
    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    return v1

    .line 118
    :catchall_22
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 119
    throw v1

    .line 115
    :catch_29
    move-exception v1

    .line 116
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 118
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 116
    return v2

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    :catch_31
    move-exception v2

    .line 114
    .local v2, "e":Ljava/net/SocketTimeoutException;
    nop

    .line 118
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 114
    return v1
.end method
