.class public Lcom/samsung/android/server/audio/AudioCipher$KeyStoreHolder;
.super Ljava/lang/Object;
.source "AudioCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/AudioCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreHolder"
.end annotation


# direct methods
.method public static bridge synthetic -$$Nest$smgetKey()Ljavax/crypto/SecretKey;
    .registers 1

    invoke-static {}, Lcom/samsung/android/server/audio/AudioCipher$KeyStoreHolder;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKey()Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES"

    const-string v1, "AndroidKeyStore"

    .line 94
    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string v2, "audio_cipher"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "SHA-256"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/16 v2, 0x100

    .line 102
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 105
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static getKey()Ljavax/crypto/SecretKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 109
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v2, "audio_cipher"

    .line 111
    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_18

    .line 113
    invoke-static {}, Lcom/samsung/android/server/audio/AudioCipher$KeyStoreHolder;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    :cond_18
    return-object v0
.end method
