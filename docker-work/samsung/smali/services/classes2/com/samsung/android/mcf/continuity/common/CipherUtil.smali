.class public Lcom/samsung/android/mcf/continuity/common/CipherUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LENGTH_IV:I = 0x10

.field public static final TAG:Ljava/lang/String; = "CipherUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt([BLjavax/crypto/Cipher;[B[B)[B
    .registers 6
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptCbc([B[B)[B
    .registers 3
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getCipherCbc()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->sessionKeyDecrypt(Ljavax/crypto/Cipher;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptCbc([B[B[B)[B
    .registers 4
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getCipherCbc()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->sessionKeyDecrypt(Ljavax/crypto/Cipher;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptCtr([B[B)[B
    .registers 3
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getCipherCtr()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->sessionKeyDecrypt(Ljavax/crypto/Cipher;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt([BLjavax/crypto/Cipher;[B[B)[B
    .registers 6
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x1

    if-nez p3, :cond_e

    invoke-virtual {p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_16

    :cond_e
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_16
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptCbc([B[B)[B
    .registers 3
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getCipherCbc()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->sessionKeyEncrypt(Ljavax/crypto/Cipher;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptCbc([B[B[B)[B
    .registers 4
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getCipherCbc()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->sessionKeyEncrypt(Ljavax/crypto/Cipher;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptCtr([B[B)[B
    .registers 3
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getCipherCtr()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->sessionKeyEncrypt(Ljavax/crypto/Cipher;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBtMacHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCipherCbc()Ljavax/crypto/Cipher;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CipherUtil"

    const-string v2, "getCipherCbc"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCipherCtr()Ljavax/crypto/Cipher;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "AES/CTR/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CipherUtil"

    const-string v2, "getCipherCtr"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static hashSHA256([B)[B
    .registers 4
    .param p0    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CipherUtil"

    const-string v2, "hashSHA256"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static sessionKeyDecrypt(Ljavax/crypto/Cipher;[B[B)[B
    .registers 9
    .param p0    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "sessionKeyDecrypt"

    const-string v2, "CipherUtil"

    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    array-length v3, p1

    if-eqz v3, :cond_39

    if-eqz p2, :cond_39

    array-length v3, p2

    if-nez v3, :cond_13

    goto :goto_39

    :cond_13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    sub-int/2addr v5, v3

    new-array v3, v5, [B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_2b
    invoke-static {v3, p0, p2, v4}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->decrypt([BLjavax/crypto/Cipher;[B[B)[B

    move-result-object p0
    :try_end_2f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2b .. :try_end_2f} :catch_30
    .catch Ljava/security/InvalidKeyException; {:try_start_2b .. :try_end_2f} :catch_30
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2b .. :try_end_2f} :catch_30
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2b .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_35
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_39
    :goto_39
    const-string p0, "invalid input"

    goto :goto_35
.end method

.method public static sessionKeyDecrypt(Ljavax/crypto/Cipher;[B[B[B)[B
    .registers 9
    .param p0    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "sessionKeyDecrypt"

    const-string v2, "CipherUtil"

    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    array-length v3, p1

    if-eqz v3, :cond_28

    if-eqz p2, :cond_28

    array-length v3, p2

    if-eqz v3, :cond_28

    if-eqz p3, :cond_28

    array-length v3, p3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1a

    goto :goto_28

    :cond_1a
    :try_start_1a
    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->decrypt([BLjavax/crypto/Cipher;[B[B)[B

    move-result-object p0
    :try_end_1e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_24
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_28
    :goto_28
    const-string p0, "invalid input"

    goto :goto_24
.end method

.method public static sessionKeyEncrypt(Ljavax/crypto/Cipher;[B[B)[B
    .registers 7
    .param p0    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string/jumbo v0, "sessionKeyEncrypt"

    const-string v1, "CipherUtil"

    const/4 v2, 0x0

    if-eqz p0, :cond_45

    if-eqz p1, :cond_45

    array-length v3, p1

    if-eqz v3, :cond_45

    if-eqz p2, :cond_45

    array-length v3, p2

    if-nez v3, :cond_13

    goto :goto_45

    :cond_13
    :try_start_13
    invoke-static {p1, p0, p2, v2}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->encrypt([BLjavax/crypto/Cipher;[B[B)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p0

    const-class p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0, p2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p0
    :try_end_27
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_27} :catch_3f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_13 .. :try_end_27} :catch_3f
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_13 .. :try_end_27} :catch_3f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_13 .. :try_end_27} :catch_3f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_13 .. :try_end_27} :catch_3f

    if-nez p1, :cond_2f

    const-string p0, "null encryptedTextBytes"

    :goto_2b
    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2f
    array-length p2, p0

    array-length v0, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v0, p1

    invoke-static {p1, v1, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :catch_3f
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    :cond_45
    :goto_45
    const-string p0, "invalid input"

    goto :goto_2b
.end method

.method public static sessionKeyEncrypt(Ljavax/crypto/Cipher;[B[B[B)[B
    .registers 9
    .param p0    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "sessionKeyEncrypt"

    const-string v2, "CipherUtil"

    if-eqz p0, :cond_28

    if-eqz p1, :cond_28

    array-length v3, p1

    if-eqz v3, :cond_28

    if-eqz p2, :cond_28

    array-length v3, p2

    if-eqz v3, :cond_28

    if-eqz p3, :cond_28

    array-length v3, p3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1a

    goto :goto_28

    :cond_1a
    :try_start_1a
    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->encrypt([BLjavax/crypto/Cipher;[B[B)[B

    move-result-object p0
    :try_end_1e
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1a .. :try_end_1e} :catch_1f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_24
    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_28
    :goto_28
    const-string p0, "invalid input"

    goto :goto_24
.end method
