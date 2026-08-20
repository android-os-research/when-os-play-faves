.class public Lcom/android/server/backup/utils/PasswordUtils;
.super Ljava/lang/Object;
.source "PasswordUtils.java"


# static fields
.field public static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field public static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field public static final PBKDF2_KEY_SIZE:I = 0x100

.field public static final PBKDF2_SALT_SIZE:I = 0x200


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 7

    const-string v0, "BackupManagerService"

    .line 123
    :try_start_2
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 124
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x100

    invoke-direct {v1, p1, p2, p3, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 125
    invoke-virtual {p0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_11} :catch_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    const-string p0, "PBKDF2 unavailable!"

    .line 129
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :catch_18
    const-string p0, "Invalid key spec for PBKDF2!"

    .line 127
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 4

    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 70
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 4

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 79
    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .registers 6

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x2

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 91
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 92
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 93
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    move v1, v3

    goto :goto_11

    :cond_2a
    return-object v0

    .line 88
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hex string must have an even number of digits"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .registers 7

    .line 111
    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 112
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 113
    aget-byte v2, p1, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 116
    :cond_f
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method
