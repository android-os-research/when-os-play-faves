.class public Landroid/net/PrivateDnsConnectivityChecker;
.super Ljava/lang/Object;
.source "PrivateDnsConnectivityChecker.java"


# static fields
.field private static final blacklist CONNECTION_TIMEOUT_MS:I = 0x1388

.field private static final blacklist PRIVATE_DNS_PORT:I = 0x355

.field private static final blacklist TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canConnectToPrivateDnsServer(Ljava/lang/String;)Z
    .registers 8
    .param p0, "hostname"    # Ljava/lang/String;

    .line 46
    const-string v0, "NetworkUtils"

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    .line 47
    .local v1, "factory":Ljavax/net/SocketFactory;
    invoke-static {}, Landroid/net/TrafficStats;->setThreadStatsTagApp()V

    .line 49
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_5d

    .line 50
    .local v4, "socket":Ljavax/net/ssl/SSLSocket;
    const/16 v5, 0x1388

    :try_start_13
    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 51
    new-instance v5, Ljava/net/InetSocketAddress;

    const/16 v6, 0x355

    invoke-direct {v5, p0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 52
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 53
    const-string v5, "Connection to %s failed."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_51

    .line 54
    nop

    .line 59
    if-eqz v4, :cond_39

    :try_start_36
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_5d

    .line 54
    :cond_39
    return v3

    .line 56
    :cond_3a
    :try_start_3a
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 57
    const-string v5, "TLS handshake to %s succeeded."

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_51

    .line 58
    nop

    .line 59
    if-eqz v4, :cond_50

    :try_start_4d
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5d

    .line 58
    :cond_50
    return v2

    .line 49
    :catchall_51
    move-exception v5

    if-eqz v4, :cond_5c

    :try_start_54
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception v6

    :try_start_59
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "factory":Ljavax/net/SocketFactory;
    .end local p0    # "hostname":Ljava/lang/String;
    :cond_5c
    :goto_5c
    throw v5
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_5d

    .line 59
    .end local v4    # "socket":Ljavax/net/ssl/SSLSocket;
    .restart local v1    # "factory":Ljavax/net/SocketFactory;
    .restart local p0    # "hostname":Ljava/lang/String;
    :catch_5d
    move-exception v4

    .line 60
    .local v4, "e":Ljava/io/IOException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    const-string v5, "TLS handshake to %s failed."

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    return v3
.end method
