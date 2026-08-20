.class public Lcom/samsung/android/knox/analytics/database/CryptoHandler;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mKeyCache:Ljavax/crypto/SecretKey;

.field public final mKeystoreAccessWaitLock:Ljava/lang/Object;

.field public final mKeystoreGenerateAccessLock:Ljava/lang/Object;

.field public mLegacyKeyCache:Ljavax/crypto/SecretKey;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public decrypt([BZ)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "decrypt(): KeyStoreConnectException"

    .line 79
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt(): isLegacyKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 81
    :try_start_19
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catch Landroid/os/DeadObjectException; {:try_start_19 .. :try_end_1d} :catch_25
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    move-exception p0

    .line 92
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    :catch_25
    move-exception v1

    .line 83
    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "decrypt(): DeadObjectException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 85
    :try_start_2e
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptInternal([BZZ)Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Landroid/os/DeadObjectException; {:try_start_2e .. :try_end_32} :catch_3a
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_2e .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    move-exception p0

    .line 89
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    :catch_3a
    move-exception p0

    .line 87
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, v3, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public decryptBlob([B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decryptBlob(): cipherLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 121
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 122
    array-length v1, p1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    .line 123
    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 125
    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 128
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public decryptBulk([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->decryptBlob([B)[B

    move-result-object p0

    .line 116
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public final decryptInternal([BZZ)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;,
            Landroid/os/DeadObjectException;,
            Landroid/security/keystore/KeyStoreConnectException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    .line 100
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 101
    array-length v1, p1

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    .line 102
    new-array v3, v1, [B

    new-array v4, v2, [B

    const/4 v5, 0x0

    .line 104
    invoke-static {p1, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {p1, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {p1, v1, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getGCMKey(ZZ)Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {v0, p2, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 108
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 109
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decryptInternal(): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public deleteAnalyticsLegacyKey()V
    .registers 6

    const-string v0, "com.samsung.android.knox.analytics.service.cryptokey"

    .line 427
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "deleteAnalyticsLegacyKey()"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    if-nez v2, :cond_e

    return-void

    .line 431
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 434
    :try_start_15
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v0, "deleteAnalyticsLegacyKey(): Key already deleted"

    .line 435
    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iput-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void

    .line 439
    :cond_23
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string v0, "deleteAnalyticsLegacyKey(): Key deleted. Invalidating cache"

    .line 440
    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_2b} :catch_2c

    goto :goto_33

    .line 443
    :catch_2c
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "deleteAnalyticsLegacyKey(): KeyStoreException"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_33
    :goto_33
    iput-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public encrypt(Ljava/lang/String;)[B
    .registers 9

    .line 158
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    const/4 v2, 0x5

    if-ge v1, v2, :cond_82

    .line 162
    :try_start_20
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_24
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_24} :catch_7a
    .catch Ljava/security/GeneralSecurityException; {:try_start_20 .. :try_end_24} :catch_71
    .catch Landroid/os/DeadObjectException; {:try_start_20 .. :try_end_24} :catch_5a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_24} :catch_51
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_20 .. :try_end_24} :catch_48
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception v2

    .line 185
    sget-object v3, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v4, "encrypt(): BackendBusyException"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :try_start_2d
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_3e

    .line 188
    :try_start_30
    iget-object v4, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 189
    monitor-exit v3

    goto :goto_45

    :catchall_3b
    move-exception v2

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v2
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3e} :catch_3e

    .line 191
    :catch_3e
    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "encrypt(): Interrupted exception"

    invoke-static {v2, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :catch_48
    move-exception p0

    .line 182
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): KeyStoreConnectException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :catch_51
    move-exception p0

    .line 179
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): UnsupportedEncodingException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :catch_5a
    move-exception v0

    .line 170
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encrypt(): DeadObjectException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 172
    :try_start_63
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal(Ljava/lang/String;Z)[B

    move-result-object p0
    :try_end_67
    .catch Ljava/security/GeneralSecurityException; {:try_start_63 .. :try_end_67} :catch_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_63 .. :try_end_67} :catch_68
    .catch Landroid/os/DeadObjectException; {:try_start_63 .. :try_end_67} :catch_68
    .catch Landroid/security/keystore/KeyStoreConnectException; {:try_start_63 .. :try_end_67} :catch_68

    return-object p0

    :catch_68
    move-exception p0

    .line 175
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt()"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :catch_71
    move-exception p0

    .line 167
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): GeneralSecurityException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    :catch_7a
    move-exception p0

    .line 164
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encrypt(): InvalidKeyException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    const/4 p0, 0x0

    return-object p0
.end method

.method public encryptBlob([B)[B
    .registers 8

    .line 132
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "encryptBlob()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_44

    .line 136
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptInternal([B)[B

    move-result-object p0
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_f} :catch_3c
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_f} :catch_33
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception v1

    .line 144
    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "encryptBlob(): BackendBusyException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_29

    .line 147
    :try_start_1b
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 148
    monitor-exit v2

    goto :goto_30

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_29} :catch_29

    .line 150
    :catch_29
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encryptBlob(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_33
    move-exception p0

    .line 141
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBlob(): GeneralSecurityException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :catch_3c
    move-exception p0

    .line 138
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBlob(): InvalidKeyException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public encryptBulk(Ljava/util/List;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "encryptBulk()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_71

    .line 204
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->encryptBulkInternal(Ljava/util/List;)[B

    move-result-object p0
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_f} :catch_69
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_f} :catch_60
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_f} :catch_57
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_f} :catch_4e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_45
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_f} :catch_3c
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_f} :catch_33
    .catch Landroid/security/keystore/BackendBusyException; {:try_start_b .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception v1

    .line 227
    sget-object v2, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v3, "encryptBulk(): BackendBusyException"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    :try_start_18
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_29

    .line 230
    :try_start_1b
    iget-object v3, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreAccessWaitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/security/keystore/BackendBusyException;->getBackOffHintMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 231
    monitor-exit v2

    goto :goto_30

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_29} :catch_29

    .line 233
    :catch_29
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "encryptBulk(): Interrupted exception"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_33
    move-exception p0

    .line 224
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): GeneralSecurityException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_3c
    move-exception p0

    .line 221
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): IllegalBlockSizeException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_45
    move-exception p0

    .line 218
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): IOException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_4e
    move-exception p0

    .line 215
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): NoSuchPaddingException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_57
    move-exception p0

    .line 212
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): InvalidKeyException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_60
    move-exception p0

    .line 209
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): BadPaddingException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_71

    :catch_69
    move-exception p0

    .line 206
    sget-object p1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "encryptBulk(): NoSuchAlgorithmException"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    const/4 p0, 0x0

    return-object p0
.end method

.method public encryptBulkInternal(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 242
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 244
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 246
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 253
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v2

    if-eqz v2, :cond_24

    .line 255
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_24

    .line 259
    :cond_40
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1

    if-eqz p1, :cond_49

    .line 261
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 263
    :cond_49
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 265
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final encryptInternal(Ljava/lang/String;Z)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/GeneralSecurityException;,
            Landroid/os/DeadObjectException;,
            Landroid/security/keystore/KeyStoreConnectException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    .line 287
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getGCMKey(ZZ)Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 289
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const/16 p2, 0xc

    new-array v2, p2, [B

    .line 291
    array-length v3, p0

    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "UTF-8"

    .line 293
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 294
    array-length p1, p0

    add-int/2addr p1, p2

    new-array p1, p1, [B

    .line 296
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    array-length p0, p0

    invoke-static {v2, v1, p1, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final encryptInternal([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS7Padding"

    .line 269
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getCBCKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 271
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 273
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 276
    array-length p1, p0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    .line 278
    array-length v0, p0

    invoke-static {p0, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    array-length p0, p0

    invoke-static {v2, v4, p1, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public generateCBCKey()V
    .registers 3

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_22

    :try_start_6
    const-string/jumbo v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    .line 349
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateCBCKeyInternal()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_1b
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_22

    .line 355
    :catch_13
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateCBCKey(): GeneralSecurityException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 353
    :catch_1b
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateCBCKey(): IOException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public final generateCBCKeyInternal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "AES"

    .line 303
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    .line 304
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 305
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "AndroidKeyStore"

    .line 306
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 307
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 308
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "CBC"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const-string v2, "PKCS7Padding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 312
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    .line 313
    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v2, p0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    const-string/jumbo v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public generateGCMKey()Z
    .registers 3

    .line 331
    sget-object v0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "generateGCMKey()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_d
    const-string/jumbo v1, "synthetic_password_knox.analytics.service.cryptokey"

    .line 334
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->generateGCMKeyInternal()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_23
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_19} :catch_1b

    const/4 p0, 0x1

    return p0

    .line 341
    :catch_1b
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateGCMKey(): GeneralSecurityException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 339
    :catch_23
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "generateGCMKey(): IOException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final generateGCMKeyInternal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string p0, "AES"

    .line 317
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    .line 318
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 319
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "AndroidKeyStore"

    .line 320
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 322
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 326
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v2, p0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p0

    const-string/jumbo v1, "synthetic_password_knox.analytics.service.cryptokey"

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return-void
.end method

.method public final getCBCKey()Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const-string/jumbo v1, "synthetic_password_knox.analytics.service.compression.cryptokey"

    .line 365
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 366
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "getCBCKey() - synthetic_password_knox.analytics.service.compression.cryptokey is not on Keystore"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 369
    :cond_19
    invoke-virtual {p0, v1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez p0, :cond_29

    .line 371
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v1, "getCBCKey() - null synthetic_password_knox.analytics.service.compression.cryptokey"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 374
    :cond_29
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public final getGCMKey(ZZ)Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 379
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    :goto_7
    if-eqz v0, :cond_c

    if-nez p2, :cond_c

    return-object v0

    .line 383
    :cond_c
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeystoreGenerateAccessLock:Ljava/lang/Object;

    monitor-enter p2

    .line 384
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStoreKey(Z)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz p1, :cond_19

    .line 386
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mLegacyKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit p2

    return-object v0

    .line 388
    :cond_19
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->mKeyCache:Ljavax/crypto/SecretKey;

    monitor-exit p2

    return-object v0

    :catchall_1d
    move-exception p0

    .line 390
    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final getKeyStore()Ljava/security/KeyStore;
    .registers 4

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "AndroidKeyStore"

    .line 62
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_a
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_a} :catch_26
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_a} :catch_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 72
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :catch_14
    move-exception v0

    .line 70
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :catch_1d
    move-exception v0

    .line 68
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "CertificateException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    :catch_26
    move-exception v0

    .line 66
    sget-object v1, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v2, "KeyStoreException"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    return-object p0
.end method

.method public final getKeyStoreKey(Z)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    const-string v0, "com.samsung.android.knox.analytics.service.cryptokey"

    if-eqz p1, :cond_a

    move-object p1, v0

    goto :goto_d

    :cond_a
    const-string/jumbo p1, "synthetic_password_knox.analytics.service.cryptokey"

    .line 398
    :goto_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "legacy key"

    goto :goto_18

    :cond_16
    const-string v0, "key"

    :goto_18
    const/4 v1, 0x0

    if-nez p0, :cond_23

    .line 400
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string p1, "getKeyStore(): null"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 403
    :cond_23
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 404
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyStoreKey() - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not on Keystore"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 407
    :cond_45
    invoke-virtual {p0, p1, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-nez p0, :cond_64

    .line 409
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyStoreKey() - null "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 412
    :cond_64
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public isGCMKeyGenerated()Z
    .registers 2

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_6
    const-string/jumbo v0, "synthetic_password_knox.analytics.service.cryptokey"

    .line 419
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_14

    .line 421
    :catch_d
    sget-object p0, Lcom/samsung/android/knox/analytics/database/CryptoHandler;->TAG:Ljava/lang/String;

    const-string v0, "isGCMKeyGenerated(): KeyStoreException"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method
