.class public Lcom/android/server/accounts/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field public static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final IV_LENGTH:I = 0x10

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final KEY_CIPHER:Ljava/lang/String; = "cipher"

.field public static final KEY_IV:Ljava/lang/String; = "iv"

.field public static final KEY_MAC:Ljava/lang/String; = "mac"

.field public static final MAC_ALGORITHM:Ljava/lang/String; = "HMACSHA256"

.field public static final TAG:Ljava/lang/String; = "Account"

.field public static sInstance:Lcom/android/server/accounts/CryptoHelper;


# instance fields
.field public final mEncryptionKey:Ljavax/crypto/SecretKey;

.field public final mMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    .line 49
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    const-string v0, "HMACSHA256"

    .line 52
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public static constantTimeArrayEquals([B[B)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_7

    goto :goto_1f

    .line 128
    :cond_7
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    move v3, v0

    move v2, v1

    .line 132
    :goto_e
    array-length v4, p1

    if-ge v2, v4, :cond_1e

    .line 133
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-ne v4, v5, :cond_19

    move v4, v0

    goto :goto_1a

    :cond_19
    move v4, v1

    :goto_1a
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return v3

    :cond_1f
    :goto_1f
    if-ne p0, p1, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/accounts/CryptoHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lcom/android/server/accounts/CryptoHelper;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    if-nez v1, :cond_e

    .line 43
    new-instance v1, Lcom/android/server/accounts/CryptoHelper;

    invoke-direct {v1}, Lcom/android/server/accounts/CryptoHelper;-><init>()V

    sput-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    .line 45
    :cond_e
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final createMac([B[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "HMACSHA256"

    .line 117
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 118
    iget-object p0, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 119
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 120
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 121
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    return-object p0
.end method

.method public decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "Cannot decrypt null bundle."

    .line 80
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "iv"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "cipher"

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "mac"

    .line 83
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 84
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/accounts/CryptoHelper;->verifyMac([B[B[B)Z

    move-result p1

    if-nez p1, :cond_28

    const-string p0, "Account"

    const-string p1, "Escrow mac mismatched!"

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_28
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 90
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    .line 91
    iget-object p0, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 92
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    .line 95
    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "Cannot encrypt null bundle."

    .line 58
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 64
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 66
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 67
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object p0

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "cipher"

    .line 71
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo p1, "mac"

    .line 72
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo p0, "iv"

    .line 73
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final verifyMac([B[B[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 105
    array-length v0, p1

    if-eqz v0, :cond_14

    if-eqz p3, :cond_14

    array-length v0, p3

    if-nez v0, :cond_b

    goto :goto_14

    .line 112
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/server/accounts/CryptoHelper;->constantTimeArrayEquals([B[B)Z

    move-result p0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x2

    const-string p1, "Account"

    .line 107
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "Cipher or MAC is empty!"

    .line 108
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
