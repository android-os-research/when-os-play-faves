.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;
.source "DefaultClientConnectionOperator.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 4
    .param p1, "schemes"    # Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p1, :cond_8

    .line 94
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 95
    return-void

    .line 91
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .registers 2

    .line 100
    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 26
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "local"    # Ljava/net/InetAddress;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p5, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p5

    if-eqz v2, :cond_142

    .line 116
    if-eqz v3, :cond_138

    .line 122
    if-eqz v11, :cond_12e

    .line 126
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_124

    .line 131
    iget-object v0, v1, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v12

    .line 132
    .local v12, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v12}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v13

    .line 135
    .local v13, "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v0, v13, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_2e

    .line 136
    sget-object v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->staticPlainSocketFactory:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    .line 137
    .local v0, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object v4, v13

    check-cast v4, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v14, v0

    move-object v15, v4

    .local v4, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    goto :goto_32

    .line 139
    .end local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v4    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :cond_2e
    move-object v0, v13

    .line 140
    .restart local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    const/4 v4, 0x0

    move-object v14, v0

    move-object v15, v4

    .line 142
    .end local v0    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v14, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v15, "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    :goto_32
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 144
    .local v10, "addresses":[Ljava/net/InetAddress;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_3c
    array-length v0, v10

    if-ge v9, v0, :cond_11e

    .line 145
    invoke-interface {v14}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v8

    .line 146
    .local v8, "sock":Ljava/net/Socket;
    invoke-interface {v2, v8, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 149
    const/4 v7, 0x1

    :try_start_47
    aget-object v0, v10, v9
    :try_end_49
    .catch Ljava/net/SocketException; {:try_start_47 .. :try_end_49} :catch_f1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_47 .. :try_end_49} :catch_dd

    .line 150
    :try_start_49
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 151
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v0
    :try_end_55
    .catch Ljava/net/SocketException; {:try_start_49 .. :try_end_55} :catch_d5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_49 .. :try_end_55} :catch_dd

    const/16 v16, 0x0

    .line 149
    move-object v4, v14

    move-object v5, v8

    move v7, v0

    move-object/from16 v17, v14

    move-object v14, v8

    .end local v8    # "sock":Ljava/net/Socket;
    .local v14, "sock":Ljava/net/Socket;
    .local v17, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    move-object/from16 v8, p3

    move/from16 v18, v9

    .end local v9    # "i":I
    .local v18, "i":I
    move/from16 v9, v16

    move-object/from16 v19, v10

    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .local v19, "addresses":[Ljava/net/InetAddress;
    move-object/from16 v10, p5

    :try_start_67
    invoke-interface/range {v4 .. v10}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0
    :try_end_6b
    .catch Ljava/net/SocketException; {:try_start_67 .. :try_end_6b} :catch_cb
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_67 .. :try_end_6b} :catch_c5

    .line 153
    .local v0, "connsock":Ljava/net/Socket;
    if-eq v14, v0, :cond_80

    .line 154
    move-object v8, v0

    .line 155
    .end local v14    # "sock":Ljava/net/Socket;
    .restart local v8    # "sock":Ljava/net/Socket;
    :try_start_6e
    invoke-interface {v2, v8, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    :try_end_71
    .catch Ljava/net/SocketException; {:try_start_6e .. :try_end_71} :catch_76
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_81

    .line 196
    .end local v0    # "connsock":Ljava/net/Socket;
    :catch_72
    move-exception v0

    move-object/from16 v4, p4

    goto :goto_bc

    .line 184
    :catch_76
    move-exception v0

    move-object/from16 v4, p4

    move/from16 v9, v18

    move-object/from16 v5, v19

    const/4 v7, 0x1

    goto/16 :goto_f8

    .line 153
    .end local v8    # "sock":Ljava/net/Socket;
    .restart local v0    # "connsock":Ljava/net/Socket;
    .restart local v14    # "sock":Ljava/net/Socket;
    :cond_80
    move-object v8, v14

    .line 168
    .end local v14    # "sock":Ljava/net/Socket;
    .restart local v8    # "sock":Ljava/net/Socket;
    :goto_81
    move-object/from16 v4, p4

    :try_start_83
    invoke-virtual {v1, v8, v4, v11}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 169
    if-eqz v15, :cond_a7

    .line 170
    nop

    .line 171
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v12, v6}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v6
    :try_end_95
    .catch Ljava/net/SocketException; {:try_start_83 .. :try_end_95} :catch_be
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_83 .. :try_end_95} :catch_bb

    .line 170
    const/4 v7, 0x1

    :try_start_96
    invoke-interface {v15, v8, v5, v6, v7}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    .line 174
    .local v5, "layeredsock":Ljava/net/Socket;
    if-eq v5, v8, :cond_9f

    .line 175
    invoke-interface {v2, v5, v3}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 177
    :cond_9f
    invoke-interface {v13, v5}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v6

    invoke-interface {v2, v6, v11}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 178
    .end local v5    # "layeredsock":Ljava/net/Socket;
    goto :goto_af

    .line 179
    :cond_a7
    const/4 v7, 0x1

    invoke-interface {v13, v8}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v5

    invoke-interface {v2, v5, v11}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_af
    .catch Ljava/net/SocketException; {:try_start_96 .. :try_end_af} :catch_b5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_96 .. :try_end_af} :catch_b3

    .line 181
    :goto_af
    move-object/from16 v5, v19

    goto/16 :goto_123

    .line 196
    .end local v0    # "connsock":Ljava/net/Socket;
    :catch_b3
    move-exception v0

    goto :goto_e7

    .line 184
    :catch_b5
    move-exception v0

    move/from16 v9, v18

    move-object/from16 v5, v19

    goto :goto_f8

    .line 196
    :catch_bb
    move-exception v0

    :goto_bc
    const/4 v7, 0x1

    goto :goto_e7

    .line 184
    :catch_be
    move-exception v0

    const/4 v7, 0x1

    move/from16 v9, v18

    move-object/from16 v5, v19

    goto :goto_f8

    .line 196
    .end local v8    # "sock":Ljava/net/Socket;
    .restart local v14    # "sock":Ljava/net/Socket;
    :catch_c5
    move-exception v0

    move-object/from16 v4, p4

    const/4 v7, 0x1

    move-object v8, v14

    goto :goto_e7

    .line 184
    :catch_cb
    move-exception v0

    move-object/from16 v4, p4

    const/4 v7, 0x1

    move-object v8, v14

    move/from16 v9, v18

    move-object/from16 v5, v19

    goto :goto_f8

    .end local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v18    # "i":I
    .end local v19    # "addresses":[Ljava/net/InetAddress;
    .restart local v8    # "sock":Ljava/net/Socket;
    .restart local v9    # "i":I
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .local v14, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :catch_d5
    move-exception v0

    move-object/from16 v4, p4

    move-object/from16 v17, v14

    move-object v14, v8

    move-object v5, v10

    .end local v8    # "sock":Ljava/net/Socket;
    .end local v9    # "i":I
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .local v14, "sock":Ljava/net/Socket;
    .restart local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v18    # "i":I
    .restart local v19    # "addresses":[Ljava/net/InetAddress;
    goto :goto_f8

    .line 196
    .end local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v18    # "i":I
    .end local v19    # "addresses":[Ljava/net/InetAddress;
    .restart local v8    # "sock":Ljava/net/Socket;
    .restart local v9    # "i":I
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .local v14, "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :catch_dd
    move-exception v0

    move-object/from16 v4, p4

    move/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v17, v14

    move-object v14, v8

    .line 197
    .end local v9    # "i":I
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v14    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v0, "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v18    # "i":I
    .restart local v19    # "addresses":[Ljava/net/InetAddress;
    :goto_e7
    move-object/from16 v5, v19

    .end local v19    # "addresses":[Ljava/net/InetAddress;
    .local v5, "addresses":[Ljava/net/InetAddress;
    array-length v6, v5

    sub-int/2addr v6, v7

    move/from16 v9, v18

    .end local v18    # "i":I
    .restart local v9    # "i":I
    if-eq v9, v6, :cond_f0

    goto :goto_117

    .line 198
    :cond_f0
    throw v0

    .line 184
    .end local v0    # "ex":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v5    # "addresses":[Ljava/net/InetAddress;
    .end local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .restart local v14    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :catch_f1
    move-exception v0

    move-object/from16 v4, p4

    move-object v5, v10

    move-object/from16 v17, v14

    move-object v14, v8

    .line 185
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v14    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .local v0, "ex":Ljava/net/SocketException;
    .restart local v5    # "addresses":[Ljava/net/InetAddress;
    .restart local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :goto_f8
    array-length v6, v5

    sub-int/2addr v6, v7

    if-ne v9, v6, :cond_116

    .line 187
    instance-of v6, v0, Ljava/net/ConnectException;

    if-eqz v6, :cond_104

    .line 188
    move-object v6, v0

    check-cast v6, Ljava/net/ConnectException;

    .local v6, "cause":Ljava/net/ConnectException;
    goto :goto_110

    .line 190
    .end local v6    # "cause":Ljava/net/ConnectException;
    :cond_104
    new-instance v6, Ljava/net/ConnectException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v6    # "cause":Ljava/net/ConnectException;
    invoke-virtual {v6, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 193
    :goto_110
    new-instance v7, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v7, v3, v6}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v7

    .line 200
    .end local v0    # "ex":Ljava/net/SocketException;
    .end local v6    # "cause":Ljava/net/ConnectException;
    :cond_116
    nop

    .line 144
    .end local v8    # "sock":Ljava/net/Socket;
    :goto_117
    add-int/lit8 v9, v9, 0x1

    move-object v10, v5

    move-object/from16 v14, v17

    goto/16 :goto_3c

    .end local v5    # "addresses":[Ljava/net/InetAddress;
    .end local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v10    # "addresses":[Ljava/net/InetAddress;
    .restart local v14    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_11e
    move-object/from16 v4, p4

    move-object v5, v10

    move-object/from16 v17, v14

    .line 202
    .end local v9    # "i":I
    .end local v10    # "addresses":[Ljava/net/InetAddress;
    .end local v14    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .restart local v5    # "addresses":[Ljava/net/InetAddress;
    .restart local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :goto_123
    return-void

    .line 127
    .end local v5    # "addresses":[Ljava/net/InetAddress;
    .end local v12    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    .end local v13    # "sf":Lorg/apache/http/conn/scheme/SocketFactory;
    .end local v15    # "layered_sf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v17    # "plain_sf":Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_124
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be open."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_12e
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Parameters must not be null."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_138
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Target host must not be null."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_142
    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection must not be null."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 6
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 270
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 272
    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 273
    .local v0, "linger":I
    if-ltz v0, :cond_1c

    .line 274
    if-lez v0, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {p1, v1, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 277
    :cond_1c
    return-void
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 11
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;
    .param p2, "target"    # Lorg/apache/http/HttpHost;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p4, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    if-eqz p1, :cond_88

    .line 217
    if-eqz p2, :cond_80

    .line 222
    if-eqz p4, :cond_78

    .line 226
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 231
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0

    .line 232
    .local v0, "schm":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v1, :cond_4d

    .line 238
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    .line 241
    .local v1, "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    nop

    .line 242
    :try_start_25
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2
    :try_end_3a
    .catch Ljava/net/ConnectException; {:try_start_25 .. :try_end_3a} :catch_46

    .line 245
    .local v2, "sock":Ljava/net/Socket;
    nop

    .line 246
    invoke-virtual {p0, v2, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 247
    invoke-interface {v1, v2}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v3

    invoke-interface {p1, v2, p2, v3, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    .line 250
    return-void

    .line 243
    .end local v2    # "sock":Ljava/net/Socket;
    :catch_46
    move-exception v2

    .line 244
    .local v2, "ex":Ljava/net/ConnectException;
    new-instance v3, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v3, p2, v2}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v3

    .line 233
    .end local v1    # "lsf":Lorg/apache/http/conn/scheme/LayeredSocketFactory;
    .end local v2    # "ex":Ljava/net/ConnectException;
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target scheme ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    invoke-virtual {v0}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must have layered socket factory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    .end local v0    # "schm":Lorg/apache/http/conn/scheme/Scheme;
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must be open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
