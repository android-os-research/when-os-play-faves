.class public Lcom/sec/vsim/util/EncryptionHelper;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# static fields
.field private static mEncryptionHelpers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/vsim/util/EncryptionHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_3
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_13

    .line 46
    :catch_a
    move-exception v0

    .line 47
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_14

    .line 44
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_f
    move-exception v0

    .line 45
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_13
    nop

    .line 49
    :goto_14
    return-void
.end method

.method public static generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p0, "encryptionAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 59
    const/16 v0, 0x100

    .line 61
    .local v0, "outputKeyLength":I
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 63
    .local v1, "secureRandom":Ljava/security/SecureRandom;
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 64
    .local v2, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v3, 0x100

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 65
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/sec/vsim/util/EncryptionHelper;
    .registers 4
    .param p0, "encryptionAlgorithm"    # Ljava/lang/String;

    const-class v0, Lcom/sec/vsim/util/EncryptionHelper;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 36
    sget-object v1, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    new-instance v2, Lcom/sec/vsim/util/EncryptionHelper;

    invoke-direct {v2, p0}, Lcom/sec/vsim/util/EncryptionHelper;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_15
    sget-object v1, Lcom/sec/vsim/util/EncryptionHelper;->mEncryptionHelpers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/util/EncryptionHelper;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    .line 34
    .end local p0    # "encryptionAlgorithm":Ljava/lang/String;
    :catchall_1f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 73
    const-string v0, "secret_key"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "encodedKey":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 75
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_e
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 78
    .local v2, "decodedKey":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    array-length v4, v2

    const-string v5, "AES"

    invoke-direct {v3, v2, v1, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .registers 8
    .param p1, "cryptedText"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "decryptedText":Ljava/lang/String;
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 116
    :try_start_5
    iget-object v1, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 117
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 118
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 119
    .local v2, "decrypted":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_1d} :catch_29
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_1d} :catch_24
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_1d} :catch_1f

    move-object v0, v3

    .line 126
    .end local v1    # "bytes":[B
    .end local v2    # "decrypted":[B
    :goto_1e
    goto :goto_2e

    .line 124
    :catch_1f
    move-exception v1

    .line 125
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_2e

    .line 122
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_24
    move-exception v1

    .line 123
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_1e

    .line 120
    :catch_29
    move-exception v1

    .line 121
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_1e

    .line 128
    :cond_2e
    :goto_2e
    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .registers 8
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljavax/crypto/SecretKey;

    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "encryptedText":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 91
    iget-object v1, p0, Lcom/sec/vsim/util/EncryptionHelper;->mCipher:Ljavax/crypto/Cipher;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 93
    .local v1, "encrypted":[B
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 94
    invoke-static {v1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1f
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1f} :catch_2b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1f} :catch_26
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1f} :catch_21

    move-object v0, v2

    .line 102
    .end local v1    # "encrypted":[B
    :goto_20
    goto :goto_30

    .line 100
    :catch_21
    move-exception v1

    .line 101
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_30

    .line 98
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_26
    move-exception v1

    .line 99
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_20

    .line 96
    :catch_2b
    move-exception v1

    .line 97
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_20

    .line 103
    :goto_30
    return-object v0
.end method
