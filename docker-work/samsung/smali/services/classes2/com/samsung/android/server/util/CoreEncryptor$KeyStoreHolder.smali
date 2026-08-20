.class public Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;
.super Ljava/lang/Object;
.source "CoreEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/util/CoreEncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreHolder"
.end annotation


# direct methods
.method public static bridge synthetic -$$Nest$smgetKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->getKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKey(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES"

    const-string v1, "AndroidKeyStore"

    .line 140
    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p0, "CBC"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-virtual {v1, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const-string v1, "PKCS7Padding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const-string v1, "SHA-256"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const/16 v1, 0x100

    .line 149
    invoke-virtual {p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 152
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    return-void
.end method

.method public static getKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AndroidKeyStore"

    .line 156
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const-string p0, "%s_scspcipher_%s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-static {v0, p0}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->hasKey(Ljava/security/KeyStore;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 161
    invoke-static {p0}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->generateKey(Ljava/lang/String;)V

    .line 165
    :cond_26
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 166
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static hasKey(Ljava/security/KeyStore;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 130
    :cond_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 131
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
