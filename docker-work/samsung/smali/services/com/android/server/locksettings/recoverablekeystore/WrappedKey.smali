.class public Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
.super Ljava/lang/Object;
.source "WrappedKey.java"


# static fields
.field public static final APPLICATION_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final GCM_TAG_LENGTH_BITS:I = 0x80

.field public static final KEY_WRAP_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final TAG:Ljava/lang/String; = "WrappedKey"


# instance fields
.field public final mKeyMaterial:[B

.field public final mKeyMetadata:[B

.field public final mNonce:[B

.field public final mPlatformKeyGenerationId:I

.field public final mRecoveryStatus:I


# direct methods
.method public constructor <init>([B[B[BI)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    return-void
.end method

.method public constructor <init>([B[B[BII)V
    .registers 6

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 139
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 140
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    .line 141
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 142
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return-void
.end method

.method public static fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_6
    const-string v0, "AES/GCM/NoPadding"

    .line 74
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_3d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_c} :catch_3d

    const/4 v1, 0x3

    .line 80
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 83
    :try_start_14
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v5
    :try_end_18
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_18} :catch_29

    .line 100
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 101
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    .line 104
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getGenerationId()I

    move-result v7

    const/4 v8, 0x1

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[B[BII)V

    return-object p1

    :catch_29
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 86
    instance-of p2, p1, Ljava/security/KeyStoreException;

    if-eqz p2, :cond_35

    .line 92
    check-cast p1, Ljava/security/KeyStoreException;

    throw p1

    .line 94
    :cond_35
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "IllegalBlockSizeException should not be thrown by AES/GCM/NoPadding mode."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 76
    :catch_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Android does not support AES/GCM/NoPadding. This should never happen."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_45
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string/jumbo p1, "key does not expose encoded material. It cannot be wrapped."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES/GCM/NoPadding"

    .line 206
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v2

    .line 209
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 211
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v6, v2, :cond_70

    const/4 v6, 0x4

    .line 223
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getKey()Ljavax/crypto/SecretKey;

    move-result-object v10

    new-instance v11, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v12, 0x80

    .line 224
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 221
    invoke-virtual {v1, v6, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 228
    :try_start_45
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object v6

    const-string v10, "AES"

    .line 227
    invoke-virtual {v1, v6, v10, v9}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljavax/crypto/SecretKey;
    :try_end_51
    .catch Ljava/security/InvalidKeyException; {:try_start_45 .. :try_end_51} :catch_5d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45 .. :try_end_51} :catch_5d

    .line 238
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMetadata()[B

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catch_5d
    move-exception v5

    .line 230
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    const-string v4, "Error unwrapping recoverable key with alias \'%s\'"

    .line 231
    invoke-static {v6, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "WrappedKey"

    .line 230
    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 212
    :cond_70
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v4, v1, v8

    .line 217
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 218
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "WrappedKey with alias \'%s\' was wrapped with platform key %d, not platform key %d"

    .line 212
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_97
    return-object v0
.end method


# virtual methods
.method public getKeyMaterial()[B
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    return-object p0
.end method

.method public getKeyMetadata()[B
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMetadata:[B

    return-object p0
.end method

.method public getNonce()[B
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    return-object p0
.end method

.method public getPlatformKeyGenerationId()I
    .registers 1

    .line 178
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    return p0
.end method

.method public getRecoveryStatus()I
    .registers 1

    .line 187
    iget p0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return p0
.end method
