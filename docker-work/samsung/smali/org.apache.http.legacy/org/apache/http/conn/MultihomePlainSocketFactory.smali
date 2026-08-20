.class public final Lorg/apache/http/conn/MultihomePlainSocketFactory;
.super Ljava/lang/Object;
.source "MultihomePlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/MultihomePlainSocketFactory;
    .registers 1

    .line 74
    sget-object v0, Lorg/apache/http/conn/MultihomePlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/MultihomePlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 15
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

    .line 110
    if-eqz p2, :cond_62

    .line 113
    if-eqz p6, :cond_5a

    .line 117
    if-nez p1, :cond_a

    .line 118
    invoke-virtual {p0}, Lorg/apache/http/conn/MultihomePlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 120
    :cond_a
    if-nez p4, :cond_e

    if-lez p5, :cond_19

    .line 123
    :cond_e
    if-gez p5, :cond_11

    .line 124
    const/4 p5, 0x0

    .line 126
    :cond_11
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 128
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 131
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    :cond_19
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 133
    .local v0, "timeout":I
    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 134
    .local v1, "inetadrs":[Ljava/net/InetAddress;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "lastEx":Ljava/io/IOException;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 141
    .local v5, "address":Ljava/net/InetAddress;
    :try_start_42
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v5, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v6, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_4a
    .catch Ljava/net/SocketTimeoutException; {:try_start_42 .. :try_end_4a} :catch_54
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4a} :catch_4b

    .line 142
    goto :goto_56

    .line 145
    :catch_4b
    move-exception v6

    .line 147
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    move-object p1, v7

    .line 149
    move-object v3, v6

    .line 151
    .end local v5    # "address":Ljava/net/InetAddress;
    .end local v6    # "ex":Ljava/io/IOException;
    goto :goto_36

    .line 143
    .restart local v5    # "address":Ljava/net/InetAddress;
    :catch_54
    move-exception v4

    .line 144
    .local v4, "ex":Ljava/net/SocketTimeoutException;
    throw v4

    .line 152
    .end local v4    # "ex":Ljava/net/SocketTimeoutException;
    .end local v5    # "address":Ljava/net/InetAddress;
    :cond_56
    :goto_56
    if-nez v3, :cond_59

    .line 155
    return-object p1

    .line 153
    :cond_59
    throw v3

    .line 114
    .end local v0    # "timeout":I
    .end local v1    # "inetadrs":[Ljava/net/InetAddress;
    .end local v2    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "lastEx":Ljava/io/IOException;
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .line 87
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 204
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

    .line 214
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

    .line 173
    if-eqz p1, :cond_22

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-ne v0, v1, :cond_1a

    .line 185
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 189
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
