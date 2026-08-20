.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CertificateChainValidator$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"


# instance fields
.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>()V
    .registers 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    :try_start_3
    const-string v0, "X.509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 81
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 82
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 83
    .local v4, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v5, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_23

    .line 84
    move-object v5, v4

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    iput-object v5, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_23} :catch_3d
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_23} :catch_34

    .line 82
    .end local v4    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 91
    .end local v0    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_26
    nop

    .line 93
    iget-object v0, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_2c

    .line 97
    return-void

    .line 94
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "None of the X.509 TrustManagers are X509TrustManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :catch_34
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "X.509 TrustManagerFactory cannot be initialized"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_3d
    move-exception v0

    .line 88
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "X.509 TrustManagerFactory must be available"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/net/http/CertificateChainValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    if-eqz p1, :cond_e

    .line 278
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 279
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_b

    .line 280
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 283
    :cond_b
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 286
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_e
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "defaultErrorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    nop

    .line 268
    if-eqz p2, :cond_5

    move-object v0, p2

    goto :goto_6

    :cond_5
    move-object v0, p3

    .line 267
    :goto_6
    invoke-direct {p0, p1, v0}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .registers 1

    .line 71
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->-$$Nest$sfgetsInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v0

    return-object v0
.end method

.method private getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .registers 11

    .line 175
    const-string v0, "CertificateChainValidator"

    :try_start_2
    const-string v1, "X.509"

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 176
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_f} :catch_46
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_f} :catch_3f

    .line 183
    nop

    .line 185
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 186
    .local v2, "tms":[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    .line 187
    .local v3, "sentUpdate":Z
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v4, :cond_37

    aget-object v7, v2, v6

    .line 189
    .local v7, "tm":Ljavax/net/ssl/TrustManager;
    :try_start_1c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "handleTrustStorageUpdate"

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 190
    .local v8, "updateMethod":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 191
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_31} :catch_33

    .line 192
    const/4 v3, 0x1

    .line 194
    .end local v8    # "updateMethod":Ljava/lang/reflect/Method;
    goto :goto_34

    .line 193
    :catch_33
    move-exception v8

    .line 187
    .end local v7    # "tm":Ljavax/net/ssl/TrustManager;
    :goto_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 196
    :cond_37
    if-nez v3, :cond_3e

    .line 197
    const-string v4, "Didn\'t find a TrustManager to handle CA list update"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3e
    return-void

    .line 180
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v3    # "sentUpdate":Z
    :catch_3f
    move-exception v1

    .line 181
    .local v1, "e":Ljava/security/KeyStoreException;
    const-string v2, "Couldn\'t initialize default X.509 TrustManagerFactory"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-void

    .line 177
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_46
    move-exception v1

    .line 178
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "Couldn\'t find default X.509 TrustManagerFactory"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 8
    .param p0, "certChain"    # [[B
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    if-eqz p0, :cond_33

    array-length v0, p0

    if-eqz v0, :cond_33

    .line 154
    array-length v0, p0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 157
    .local v0, "serverCertificates":[Ljava/security/cert/X509Certificate;
    :try_start_8
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 158
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_24

    .line 159
    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v0, v2
    :try_end_21
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_21} :catch_2a

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 164
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v2    # "i":I
    :cond_24
    nop

    .line 166
    invoke-static {v0, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v1

    return-object v1

    .line 162
    :catch_2a
    move-exception v1

    .line 163
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "can\'t read certificate"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 151
    .end local v0    # "serverCertificates":[Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 14
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 214
    .local v1, "currCertificate":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_7a

    .line 218
    const/4 v2, 0x1

    if-eqz p1, :cond_1f

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->-$$Nest$sfgetsVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    new-instance v4, Landroid/net/http/DelegatingSSLSession$CertificateWrap;

    invoke-direct {v4, v1}, Landroid/net/http/DelegatingSSLSession$CertificateWrap;-><init>(Ljava/security/cert/Certificate;)V

    .line 220
    invoke-interface {v3, p1, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, v0

    .line 222
    .local v3, "valid":Z
    :goto_20
    const/4 v4, 0x2

    if-nez v3, :cond_29

    .line 226
    new-instance v0, Landroid/net/http/SslError;

    invoke-direct {v0, v4, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    return-object v0

    .line 230
    :cond_29
    const/4 v5, 0x3

    :try_start_2a
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v6
    :try_end_2e
    .catch Ljava/security/GeneralSecurityException; {:try_start_2a .. :try_end_2e} :catch_73

    .line 234
    .local v6, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :try_start_2e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "checkServerTrusted"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, [Ljava/security/cert/X509Certificate;

    aput-object v10, v9, v0

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 238
    .local v7, "method":Ljava/lang/reflect/Method;
    new-array v8, v5, [Ljava/lang/Object;

    aput-object p0, v8, v0

    aput-object p2, v8, v2

    aput-object p1, v8, v4

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_51} :catch_6c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_51} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_51} :catch_52
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_51} :catch_73

    goto :goto_70

    .line 241
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_52
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_53
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-eqz v2, :cond_62

    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertificateException;

    .end local v1    # "currCertificate":Ljava/security/cert/X509Certificate;
    .end local v3    # "valid":Z
    .end local p0    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p1    # "domain":Ljava/lang/String;
    .end local p2    # "authType":Ljava/lang/String;
    throw v2

    .line 245
    .restart local v1    # "currCertificate":Ljava/security/cert/X509Certificate;
    .restart local v3    # "valid":Z
    .restart local p0    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local p1    # "domain":Ljava/lang/String;
    .restart local p2    # "authType":Ljava/lang/String;
    :cond_62
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "currCertificate":Ljava/security/cert/X509Certificate;
    .end local v3    # "valid":Z
    .end local p0    # "chain":[Ljava/security/cert/X509Certificate;
    .end local p1    # "domain":Ljava/lang/String;
    .end local p2    # "authType":Ljava/lang/String;
    throw v2

    .line 239
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "currCertificate":Ljava/security/cert/X509Certificate;
    .restart local v3    # "valid":Z
    .restart local p0    # "chain":[Ljava/security/cert/X509Certificate;
    .restart local p1    # "domain":Ljava/lang/String;
    .restart local p2    # "authType":Ljava/lang/String;
    :catch_6c
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-interface {v6, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/security/GeneralSecurityException; {:try_start_53 .. :try_end_70} :catch_73

    .line 246
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_70
    nop

    .line 247
    const/4 v0, 0x0

    return-object v0

    .line 248
    .end local v6    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_73
    move-exception v0

    .line 253
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Landroid/net/http/SslError;

    invoke-direct {v2, v5, v1}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    return-object v2

    .line 215
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v3    # "valid":Z
    :cond_7a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "certificate for this site is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 8
    .param p1, "connection"    # Landroid/net/http/HttpsConnection;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 114
    .local v0, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v1

    if-nez v1, :cond_f

    .line 115
    const-string v1, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v1}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 119
    :cond_f
    nop

    .line 120
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 122
    .local v1, "peerCertificates":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_32

    array-length v2, v1

    if-nez v2, :cond_1e

    goto :goto_32

    .line 127
    :cond_1e
    if-eqz p1, :cond_37

    .line 128
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_37

    .line 129
    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_37

    .line 123
    :cond_32
    :goto_32
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 135
    :cond_37
    :goto_37
    move-object v2, v1

    check-cast v2, [Ljava/security/cert/X509Certificate;

    const-string v3, "RSA"

    invoke-static {v2, p3, v3}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2
.end method
