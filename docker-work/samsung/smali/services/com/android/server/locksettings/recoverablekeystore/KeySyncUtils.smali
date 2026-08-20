.class public Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;
.super Ljava/lang/Object;
.source "KeySyncUtils.java"


# static fields
.field public static final ENCRYPTED_APPLICATION_KEY_HEADER:[B

.field public static final KEY_CLAIMANT_LENGTH_BYTES:I = 0x10

.field public static final LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field public static final PUBLIC_KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "EC"

.field public static final RECOVERY_CLAIM_HEADER:[B

.field public static final RECOVERY_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final RECOVERY_KEY_SIZE_BITS:I = 0x100

.field public static final RECOVERY_RESPONSE_HEADER:[B

.field public static final THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field public static final THM_KF_HASH_PREFIX:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "V1 THM_encrypted_recovery_key"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 55
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "V1 locally_encrypted_recovery_key"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 57
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "V1 encrypted_application_key"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 59
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "V1 KF_claim"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    .line 61
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "V1 reencrypted_recovery_key"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    .line 64
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "THM_KF_hash"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateThmKfHash([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 110
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 112
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 113
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs concat([[B)[B
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 342
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_d

    aget-object v4, p0, v2

    .line 343
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 346
    :cond_d
    new-array v0, v3, [B

    .line 348
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_1f

    aget-object v5, p0, v3

    .line 349
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1f
    return-object v0
.end method

.method public static decryptApplicationKey([B[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    if-nez p2, :cond_5

    .line 281
    sget-object p2, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    goto :goto_14

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 283
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object p2

    :goto_14
    const/4 v0, 0x0

    .line 285
    invoke-static {v0, p0, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptRecoveryClaimResponse([B[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 240
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 243
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 240
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptRecoveryKey([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static deserializePublicKey([B)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    :try_start_0
    const-string v0, "EC"

    .line 302
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_10

    .line 307
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 308
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :catch_10
    move-exception p0

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljavax/crypto/SecretKey;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljavax/crypto/SecretKey;

    .line 163
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    if-nez v4, :cond_32

    .line 166
    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    goto :goto_41

    :cond_32
    const/4 v5, 0x2

    new-array v5, v5, [[B

    const/4 v6, 0x0

    .line 174
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v4

    :goto_41
    const/4 v5, 0x0

    .line 178
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    .line 180
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 176
    invoke-static {v5, v6, v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v3

    .line 181
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_52
    return-object v0
.end method

.method public static encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [[B

    .line 218
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    .line 221
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object p2

    new-array p1, p1, [[B

    aput-object p3, p1, v2

    aput-object p4, p1, v1

    .line 222
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 218
    invoke-static {p0, p3, p2, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateKeyClaimant()[B
    .registers 2

    .line 192
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 194
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v1
.end method

.method public static generateRecoveryKey()Ljavax/crypto/SecretKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES"

    .line 141
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 143
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 132
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 128
    invoke-static {v1, p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static packVaultParams(Ljava/security/PublicKey;JI[B)[B
    .registers 7

    .line 322
    array-length v0, p4

    add-int/lit8 v0, v0, 0x4d

    .line 327
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 328
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 329
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 330
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 331
    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 332
    invoke-virtual {p0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 89
    invoke-static {p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B

    move-result-object p3

    .line 90
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 91
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object p2

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method
