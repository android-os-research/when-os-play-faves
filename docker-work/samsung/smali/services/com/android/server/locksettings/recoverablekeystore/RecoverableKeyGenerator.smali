.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
.super Ljava/lang/Object;
.source "RecoverableKeyGenerator.java"


# static fields
.field public static final KEY_SIZE_BITS:I = 0x100

.field public static final RESULT_CANNOT_INSERT_ROW:I = -0x1

.field public static final SECRET_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field public static final TAG:Ljava/lang/String; = "PlatformKeyGen"


# instance fields
.field public final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public final mKeyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method public constructor <init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 74
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    return-void
.end method

.method public static newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES"

    .line 63
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    invoke-direct {v1, v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;-><init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    return-object v1
.end method


# virtual methods
.method public generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 102
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 104
    invoke-static {p1, v0, p5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object p1

    .line 105
    iget-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p5, p2, p3, p4, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    const/4 p5, 0x1

    if-eqz p1, :cond_36

    .line 113
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-gez p0, :cond_31

    const-string p0, "PlatformKeyGen"

    const-string p1, "Failed to set the shoudCreateSnapshot flag in the local DB."

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_31
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    return-object p0

    .line 108
    :cond_36
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 110
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    aput-object p4, p2, p5

    const-string p3, "Failed writing (%d, %s) to database."

    .line 109
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 148
    invoke-static {p1, v0, p6}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;[B)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object p1

    .line 149
    iget-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p5, p2, p3, p4, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide p5

    const-wide/16 v0, -0x1

    cmp-long p1, p5, v0

    const/4 p5, 0x1

    if-eqz p1, :cond_1e

    .line 157
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    return-void

    .line 152
    :cond_1e
    new-instance p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p6, 0x0

    .line 154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p6

    aput-object p4, p2, p5

    const-string p3, "Failed writing (%d, %s) to database."

    .line 153
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
