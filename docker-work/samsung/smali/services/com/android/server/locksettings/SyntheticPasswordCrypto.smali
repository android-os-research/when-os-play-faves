.class public Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field public static final AES_KEY_LENGTH:I = 0x20

.field public static final APPLICATION_ID_PERSONALIZATION:[B

.field public static final DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field public static final PROFILE_KEY_IV_SIZE:I = 0xc

.field public static final TAG:Ljava/lang/String; = "SyntheticPasswordCrypto"

.field public static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordCrypto.SDP"

.field public static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "application-id"

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static KBKDF([B[B[BI)[B
    .registers 4

    .line 592
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKBKDF([B[B[BI)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception p0

    .line 594
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static KDF([B[B[BI)[B
    .registers 4

    .line 582
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeKDF([B[B[BI)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception p0

    .line 584
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static PBKDF2([B[BII)[B
    .registers 4

    .line 572
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativePBKDF2([B[BII)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception p0

    .line 574
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static RBG(I)[B
    .registers 1

    .line 602
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->nativeRBG(I)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception p0

    .line 604
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public static androidKeystoreProviderName()Ljava/lang/String;
    .registers 1

    const-string v0, "AndroidKeyStore"

    return-object v0
.end method

.method public static varargs createBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[BJ[[B)[B
    .registers 7

    .line 484
    :try_start_0
    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 485
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p4, 0x20

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    const-string p4, "AES"

    invoke-direct {p0, p3, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 487
    invoke-static {p6}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [[B

    const/4 p5, 0x0

    aput-object p3, p4, p5

    .line 488
    invoke-static {p0, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0

    .line 489
    invoke-static {p1, p0, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0

    return-object p0

    .line 491
    :cond_26
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, p0, p2, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B[[B)[B

    move-result-object p0

    .line 492
    invoke-static {p1, p0, p6}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    .line 495
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 496
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to encrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static createBlob(Ljava/lang/String;[B[BJ)[B
    .registers 11

    :try_start_0
    const-string v0, "AES"

    .line 192
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 193
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 194
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 196
    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v3, "GCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 199
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_4a

    .line 201
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    const/16 p4, 0xf

    .line 203
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 206
    :cond_4a
    new-instance p3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {p3, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 208
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p4

    .line 206
    invoke-virtual {v1, p0, p3, p4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 209
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object p0

    .line 210
    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_60
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_60} :catch_61
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_60} :catch_61

    return-object p0

    :catch_61
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to create blob"

    .line 216
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to encrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs createBlob(Ljava/lang/String;[B[BJ[[B)[B
    .registers 13

    const-string v0, "AES"

    .line 443
    :try_start_2
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    .line 444
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 445
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 446
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 447
    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 450
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-eqz v5, :cond_4a

    .line 452
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v5

    .line 453
    invoke-virtual {v5, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    const/16 p4, 0xf

    .line 454
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 457
    :cond_4a
    new-instance p3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {p3, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 459
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p4

    .line 457
    invoke-virtual {v2, p0, p3, p4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    if-eqz p5, :cond_7b

    .line 460
    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 461
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p3, 0x20

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-direct {p0, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 463
    invoke-static {p5}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object p2

    new-array p3, v4, [[B

    const/4 p4, 0x0

    aput-object p2, p3, p4

    .line 464
    invoke-static {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0

    .line 465
    invoke-static {v1, p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0

    return-object p0

    .line 467
    :cond_7b
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object p0

    .line 468
    invoke-static {v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_85
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_85} :catch_86
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_85} :catch_86

    return-object p0

    :catch_86
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to create blob"

    .line 475
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to encrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 77
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 78
    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "AES/GCM/NoPadding"

    .line 79
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 81
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 82
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs decrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 288
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 289
    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v1, "AES/GCM/NoPadding"

    .line 290
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 292
    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_30

    .line 294
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 295
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 297
    :cond_30
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[B[B)[B
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 127
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 128
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 131
    :try_start_17
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to decrypt"

    .line 135
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs decrypt([B[B[B[[B)[B
    .registers 8

    const/4 v0, 0x0

    const-string v1, "AES"

    const/16 v2, 0x20

    if-eqz p3, :cond_20

    .line 352
    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 353
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-direct {p1, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 356
    :try_start_16
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0
    :try_end_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_16 .. :try_end_1a} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_16 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_16 .. :try_end_1a} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    return-object v0

    :cond_20
    const/4 p3, 0x1

    new-array p3, p3, [[B

    const/4 v3, 0x0

    aput-object p0, p3, v3

    .line 364
    invoke-static {p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 365
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-direct {p1, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 368
    :try_start_33
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_37
    .catch Ljava/security/InvalidKeyException; {:try_start_33 .. :try_end_37} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_37} :catch_38
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_33 .. :try_end_37} :catch_38
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_33 .. :try_end_37} :catch_38
    .catch Ljavax/crypto/BadPaddingException; {:try_start_33 .. :try_end_37} :catch_38
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_33 .. :try_end_37} :catch_38

    return-object p0

    :catch_38
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to decrypt"

    .line 372
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static varargs decryptBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B[[B)[B
    .registers 5

    const-string p0, "Failed to decrypt blob"

    .line 425
    :try_start_2
    invoke-static {p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p1

    .line 426
    sget-object p2, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, p2, p1, p4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object p0
    :try_end_c
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_17
    move-exception p1

    const-string p2, "SyntheticPasswordCrypto"

    const-string p3, "Authentication failed before decrypt blob"

    .line 428
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p1}, Ljavax/crypto/AEADBadTagException;->printStackTrace()V

    .line 430
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result p2

    if-eqz p2, :cond_2a

    const/4 p0, 0x0

    return-object p0

    .line 433
    :cond_2a
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static decryptBlob(Ljava/lang/String;[B[B)[B
    .registers 5

    .line 172
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_18

    .line 178
    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    .line 179
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    return-object p0

    .line 176
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SP key is missing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_2f} :catch_2f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to decrypt blob"

    .line 185
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs decryptBlob(Ljava/lang/String;[B[B[[B)[B
    .registers 7

    const-string v0, "Failed to decrypt blob"

    const/4 v1, 0x0

    .line 380
    :try_start_3
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    .line 382
    invoke-virtual {v2, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljavax/crypto/SecretKey;

    if-eqz v2, :cond_27

    if-eqz p3, :cond_1c

    .line 387
    invoke-static {v2, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0

    .line 388
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p1, p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B[[B)[B

    move-result-object p0

    return-object p0

    .line 390
    :cond_1c
    invoke-static {v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    .line 391
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    return-object p0

    .line 384
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP key is missing: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_3 .. :try_end_3e} :catch_4a
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3e} :catch_3e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    .line 405
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4a
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto.SDP"

    const-string p2, "Authentication failed before decrypt blob"

    .line 394
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Ljavax/crypto/AEADBadTagException;->printStackTrace()V

    if-eqz p3, :cond_5e

    .line 396
    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result p1

    if-eqz p1, :cond_5e

    return-object v1

    .line 399
    :cond_5e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decryptBlobV1(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B
    .registers 4

    .line 413
    :try_start_0
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    .line 414
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 416
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to decrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .registers 5

    .line 142
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_18

    .line 147
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    .line 148
    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0

    .line 145
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SP key is missing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to decrypt V1 blob"

    .line 150
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to decrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .registers 4

    const-string v0, "SyntheticPasswordCrypto"

    .line 224
    :try_start_2
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP key deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_1d} :catch_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_1d} :catch_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    const-string v1, "Failed to destroy blob"

    .line 229
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "AES/GCM/NoPadding"

    .line 92
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 97
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 98
    array-length v1, p1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5a

    .line 101
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    const-class v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 103
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3f

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 104
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid tag length: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_5a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid iv length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs encrypt(Ljavax/crypto/SecretKey;[B[[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "AES/GCM/NoPadding"

    .line 307
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    if-eqz p2, :cond_1d

    .line 312
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->hasAAD([[B)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 313
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$Utils;->extractAAD([[B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 316
    :cond_1d
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 317
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 318
    array-length p2, p1

    const/16 v1, 0xc

    if-ne p2, v1, :cond_69

    .line 321
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p2

    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p2, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    check-cast p2, Ljavax/crypto/spec/GCMParameterSpec;

    .line 323
    invoke-virtual {p2}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4e

    .line 326
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 327
    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 328
    invoke-virtual {p2, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 329
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 324
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid tag length: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid iv length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt([B[B[B)[B
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 113
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 114
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 117
    :try_start_17
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to encrypt"

    .line 121
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs encrypt([B[B[B[[B)[B
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 334
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 335
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-eqz p3, :cond_1e

    .line 339
    :try_start_19
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B[[B)[B

    move-result-object p0

    return-object p0

    .line 341
    :cond_1e
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_22
    .catch Ljava/security/InvalidKeyException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_19 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    const-string p1, "SyntheticPasswordCrypto"

    const-string p2, "Failed to encrypt"

    .line 345
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static existsBlobKey(Ljava/lang/String;)Z
    .registers 4

    .line 618
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 619
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v0, "SyntheticPasswordCrypto"

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existsBlobKey keyAlias = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_23

    const/4 p0, 0x1

    return p0

    :catch_23
    move-exception p0

    .line 624
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    const/4 p0, 0x0

    return p0
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

    .line 165
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->androidKeystoreProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 166
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    return-object v0
.end method

.method public static keyNamespace()I
    .registers 1

    const/16 v0, 0x67

    return v0
.end method

.method public static migrateLockSettingsKey(Ljava/lang/String;)Z
    .registers 6

    .line 254
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v1, 0x0

    .line 255
    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v2, -0x1

    .line 256
    iput-wide v2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 257
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 259
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v3, 0x2

    .line 260
    iput v3, v2, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 261
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v2, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 262
    iput-object p0, v2, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "SyntheticPasswordCrypto"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {v0, v2}, Landroid/security/AndroidKeyStoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_3d

    return v0

    :cond_3d
    const/4 v2, 0x7

    if-ne p0, v2, :cond_46

    const-string p0, "Key does not exist"

    .line 268
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_46
    const/16 v2, 0x14

    if-ne p0, v2, :cond_50

    const-string p0, "Key already exists"

    .line 272
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_50
    new-array v0, v0, [Ljava/lang/Object;

    .line 276
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Failed to migrate key: %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static native nativeKBKDF([B[B[BI)[B
.end method

.method public static native nativeKDF([B[B[BI)[B
.end method

.method public static native nativePBKDF2([B[BII)[B
.end method

.method public static native nativeRBG(I)[B
.end method

.method public static personalise([BILjava/lang/String;Ljava/lang/String;)[B
    .registers 8

    if-eqz p0, :cond_57

    if-eqz p2, :cond_57

    if-eqz p3, :cond_57

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4f

    const/4 v1, 0x2

    if-gt p1, v1, :cond_4f

    .line 515
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 516
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    .line 517
    array-length v1, p2

    const/16 v2, 0x20

    if-gt v1, v2, :cond_47

    array-length v1, p3

    const/16 v3, 0x40

    if-gt v1, v3, :cond_47

    .line 521
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 522
    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    if-eq p1, v0, :cond_2d

    .line 530
    invoke-static {p0, p2, p3, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KBKDF([B[B[BI)[B

    move-result-object p0

    goto :goto_31

    .line 527
    :cond_2d
    invoke-static {p0, p2, p3, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->KDF([B[B[BI)[B

    move-result-object p0

    :goto_31
    if-eqz p0, :cond_3f

    .line 536
    array-length p1, p0

    if-le p1, v2, :cond_3e

    .line 537
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 538
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    move-object p0, p1

    :cond_3e
    return-object p0

    .line 534
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected native error while personalization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 519
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Personalization too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid secure mode for personalization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 510
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Make sure of input parameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs personalisedHash([B[[B)[B
    .registers 5

    :try_start_0
    const-string v0, "SHA-512"

    .line 236
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 237
    array-length v1, p0

    const/16 v2, 0x80

    if-gt v1, v2, :cond_23

    .line 242
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 243
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 244
    array-length p0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p0, :cond_1e

    aget-object v2, p1, v1

    .line 245
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 247
    :cond_1e
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 238
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Personalisation too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs personalisedHashSDP([B[[B)[B
    .registers 5

    :try_start_0
    const-string v0, "SHA-256"

    .line 552
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 553
    array-length v1, p0

    const/16 v2, 0x40

    if-gt v1, v2, :cond_23

    .line 558
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 559
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 560
    array-length p0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p0, :cond_1e

    aget-object v2, p1, v1

    .line 561
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 563
    :cond_1e
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 554
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Personalization too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 565
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
