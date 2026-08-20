.class public Lokhttp3/internal/platform/ConscryptPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "ConscryptPlatform.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "org.conscrypt.Conscrypt"

    .line 107
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 109
    invoke-static {}, Lorg/conscrypt/Conscrypt;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 113
    :cond_e
    new-instance v1, Lokhttp3/internal/platform/ConscryptPlatform;

    invoke-direct {v1}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    return-object v0
.end method


# virtual methods
.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    .line 121
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    .line 122
    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    :cond_a
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p2, :cond_f

    const/4 p0, 0x1

    .line 71
    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 72
    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 76
    :cond_f
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 77
    invoke-interface {p0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    goto :goto_23

    .line 79
    :cond_20
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :goto_23
    return-void
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 1

    .line 42
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;

    move-result-object p0

    return-object p0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 3

    :try_start_0
    const-string v0, "TLSv1.3"

    .line 93
    invoke-virtual {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v0

    :try_start_c
    const-string v1, "TLS"

    .line 97
    invoke-virtual {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object p0

    invoke-static {v1, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_16} :catch_17

    return-object p0

    .line 99
    :catch_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No TLS provider"

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 84
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 87
    :cond_b
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 46
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 47
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0

    .line 52
    :cond_b
    :try_start_b
    const-class p0, Ljava/lang/Object;

    const-string/jumbo v0, "sslParameters"

    .line 53
    invoke-static {p1, p0, v0}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 56
    const-class p1, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v0, "x509TrustManager"

    invoke-static {p0, p1, v0}, Lokhttp3/internal/platform/Platform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/X509TrustManager;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_24

    return-object p0

    :cond_22
    const/4 p0, 0x0

    return-object p0

    :catch_24
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt"

    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
