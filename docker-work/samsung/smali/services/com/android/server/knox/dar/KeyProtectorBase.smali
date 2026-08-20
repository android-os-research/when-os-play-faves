.class public Lcom/android/server/knox/dar/KeyProtectorBase;
.super Ljava/lang/Object;
.source "KeyProtectorBase.java"


# static fields
.field public static final AES_KEY_LENGTH:I = 0x20

.field public static final NAMESPACE_KNOXCORE:I = 0x4e2

.field public static final TAG:Ljava/lang/String; = "KeyProtectorBase"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static androidKeystoreProviderName()Ljava/lang/String;
    .registers 1

    const-string v0, "AndroidKeyStore"

    return-object v0
.end method

.method public static getKeyStore()Ljava/security/KeyStore;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtectorBase;->androidKeystoreProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-static {}, Lcom/android/server/knox/dar/KeyProtectorBase;->keyNamespace()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-object v0
.end method

.method public static keyNamespace()I
    .registers 1

    const/16 v0, 0x4e2

    return v0
.end method


# virtual methods
.method public checkSecretKey(Ljava/lang/String;)Z
    .registers 4

    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtectorBase;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_24

    :catch_9
    move-exception p0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check secret key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyProtectorBase"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public deleteSecretKey(Ljava/lang/String;)Z
    .registers 4

    .line 110
    :try_start_0
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtectorBase;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    .line 111
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 p0, 0x1

    goto :goto_24

    :catch_9
    move-exception p0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete secret key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyProtectorBase"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5

    const/4 p0, 0x0

    .line 79
    :try_start_1
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtectorBase;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p1, p0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_b} :catch_d

    move-object p0, v0

    goto :goto_27

    :catch_d
    move-exception v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get secret key - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyProtectorBase"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return-object p0
.end method

.method public setSecretKey(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x1

    :try_start_1
    const-string v0, "AES"

    .line 50
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 52
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 53
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtectorBase;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v3, "GCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p0}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v3, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 63
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 61
    invoke-virtual {v1, p1, v3, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_43} :catch_44
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_43} :catch_44
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_5f

    :catch_44
    move-exception p0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set secret key - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyProtectorBase"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_5f
    return p0
.end method
