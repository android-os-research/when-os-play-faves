.class public final Lorg/apache/http/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .registers 2
    .param p1, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 76
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .registers 1

    .line 70
    sget-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 13
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    if-eqz p2, :cond_5f

    .line 97
    if-eqz p6, :cond_57

    .line 101
    if-nez p1, :cond_a

    .line 102
    invoke-virtual {p0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 104
    :cond_a
    if-nez p4, :cond_e

    if-lez p5, :cond_19

    .line 107
    :cond_e
    if-gez p5, :cond_11

    .line 108
    const/4 p5, 0x0

    .line 110
    :cond_11
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 112
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 115
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_19
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 118
    .local v0, "timeout":I
    iget-object v1, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v1, :cond_2d

    .line 119
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v2, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .local v1, "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_32

    .line 121
    .end local v1    # "remoteAddress":Ljava/net/InetSocketAddress;
    :cond_2d
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 124
    .restart local v1    # "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_32
    :try_start_32
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_35
    .catch Ljava/net/SocketTimeoutException; {:try_start_32 .. :try_end_35} :catch_37

    .line 127
    nop

    .line 128
    return-object p1

    .line 125
    :catch_37
    move-exception v2

    .line 126
    .local v2, "ex":Ljava/net/SocketTimeoutException;
    new-instance v3, Lorg/apache/http/conn/ConnectTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timed out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    .end local v0    # "timeout":I
    .end local v1    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "ex":Ljava/net/SocketTimeoutException;
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .line 85
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 178
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 188
    const-class v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 4
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 147
    if-eqz p1, :cond_22

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-ne v0, v1, :cond_1a

    .line 159
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 163
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
