.class public Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;
.super Ljava/lang/Object;
.source "RebootEscrowKeyStoreManager.java"


# static fields
.field public static final ANDROID_KEY_STORE_PROVIDER:Ljava/lang/String; = "AndroidKeystore"

.field public static final KEY_LENGTH:I = 0x100

.field public static final KEY_STORE_NAMESPACE:I = 0x78

.field public static final REBOOT_ESCROW_KEY_STORE_ENCRYPTION_KEY_NAME:Ljava/lang/String; = "reboot_escrow_key_store_encryption_key"

.field public static final TAG:Ljava/lang/String; = "RebootEscrowKeyStoreManager"


# instance fields
.field public final mKeyStoreLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clearKeyStoreEncryptionKey()V
    .registers 4

    .line 86
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    const-string v0, "AndroidKeystore"

    .line 88
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 92
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string/jumbo v1, "reboot_escrow_key_store_encryption_key"

    .line 93
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1c
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_19} :catch_1c
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    goto :goto_24

    :catchall_1a
    move-exception v0

    goto :goto_26

    :catch_1c
    move-exception v0

    :try_start_1d
    const-string v1, "RebootEscrowKeyStoreManager"

    const-string v2, "Unable to delete encryption key in keystore."

    .line 95
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    :goto_24
    monitor-exit p0

    return-void

    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_1a

    throw v0
.end method

.method public generateKeyStoreEncryptionKeyIfNeeded()Ljavax/crypto/SecretKey;
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 104
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_53

    return-object p0

    :cond_b
    :try_start_b
    const-string p0, "AES"

    const-string v1, "AndroidKeyStore"

    .line 108
    invoke-static {p0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    .line 110
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const-string/jumbo v2, "reboot_escrow_key_store_encryption_key"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x100

    .line 113
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/16 v2, 0x78

    .line 117
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 118
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 119
    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_46
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_46} :catch_48
    .catchall {:try_start_b .. :try_end_46} :catchall_53

    :try_start_46
    monitor-exit v0

    return-object p0

    :catch_48
    move-exception p0

    const-string v1, "RebootEscrowKeyStoreManager"

    const-string v2, "Unable to generate key from keystore."

    .line 122
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 124
    monitor-exit v0

    return-object p0

    :catchall_53
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 82
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyStoreLock"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "AndroidKeystore"

    .line 66
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string/jumbo v1, "reboot_escrow_key_store_encryption_key"

    .line 71
    invoke-virtual {v0, v1, p0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v0

    const-string v1, "RebootEscrowKeyStoreManager"

    const-string v2, "Unable to get encryption key from keystore."

    .line 74
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method
