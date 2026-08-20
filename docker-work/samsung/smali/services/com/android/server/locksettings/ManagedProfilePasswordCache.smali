.class public Lcom/android/server/locksettings/ManagedProfilePasswordCache;
.super Ljava/lang/Object;
.source "ManagedProfilePasswordCache.java"


# static fields
.field public static final CACHE_TIMEOUT_SECONDS:I

.field public static final KEY_LENGTH:I = 0x100

.field public static final TAG:Ljava/lang/String; = "ManagedProfilePasswordCache"


# instance fields
.field public final mEncryptedPasswords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field public final mKeyStore:Ljava/security/KeyStore;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Landroid/os/UserManager;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 73
    iput-object p1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 74
    iput-object p2, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public static getEncryptionKeyName(I)Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_v2_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLegacyEncryptionKeyName(I)Ljava/lang/String;
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.server.locksettings.unified_profile_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public removePassword(I)V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 174
    :try_start_3
    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getLegacyEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_49

    .line 177
    :try_start_b
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 178
    iget-object v3, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 180
    :cond_18
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 181
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_25} :catch_26
    .catchall {:try_start_b .. :try_end_25} :catchall_49

    goto :goto_2e

    :catch_26
    move-exception v1

    :try_start_27
    const-string v2, "ManagedProfilePasswordCache"

    const-string v3, "Cannot delete key"

    .line 184
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :cond_2e
    :goto_2e
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 187
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 188
    iget-object p0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 190
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;
    .registers 9

    .line 136
    iget-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 139
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_65

    return-object v2

    .line 143
    :cond_10
    :try_start_10
    iget-object p0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0
    :try_end_1a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_10 .. :try_end_1a} :catch_5b
    .catch Ljava/security/KeyStoreException; {:try_start_10 .. :try_end_1a} :catch_5b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_1a} :catch_5b
    .catchall {:try_start_10 .. :try_end_1a} :catchall_65

    if-nez p0, :cond_1e

    .line 149
    :try_start_1c
    monitor-exit v0

    return-object v2

    :cond_1e
    const/16 p1, 0xc

    .line 151
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 152
    array-length v4, v1

    invoke-static {v1, p1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_65

    :try_start_29
    const-string v1, "AES/GCM/NoPadding"

    .line 155
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x2

    .line 156
    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v6, 0x80

    invoke-direct {v5, v6, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v4, p0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 157
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_3e
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_29 .. :try_end_3e} :catch_52
    .catch Ljava/security/GeneralSecurityException; {:try_start_29 .. :try_end_3e} :catch_48
    .catchall {:try_start_29 .. :try_end_3e} :catchall_65

    .line 165
    :try_start_3e
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    const/4 v1, 0x0

    .line 166
    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 167
    monitor-exit v0

    return-object p1

    :catch_48
    move-exception p0

    const-string p1, "ManagedProfilePasswordCache"

    const-string v1, "Cannot decrypt"

    .line 162
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    monitor-exit v0

    return-object v2

    :catch_52
    const-string p0, "ManagedProfilePasswordCache"

    const-string p1, "Device not unlocked for more than 7 days"

    .line 159
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit v0

    return-object v2

    :catch_5b
    move-exception p0

    const-string p1, "ManagedProfilePasswordCache"

    const-string v1, "Cannot get key"

    .line 145
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    monitor-exit v0

    return-object v2

    :catchall_65
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3e .. :try_end_67} :catchall_65

    throw p0
.end method

.method public storePassword(ILcom/android/internal/widget/LockscreenCredential;)V
    .registers 9

    .line 82
    iget-object v0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 84
    monitor-exit v0

    return-void

    .line 86
    :cond_d
    iget-object v1, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_b4

    .line 87
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v1, :cond_1b

    goto/16 :goto_b4

    .line 92
    :cond_1b
    invoke-static {p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->getEncryptionKeyName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_b6

    .line 97
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v2

    const-string v3, "AES"

    .line 99
    iget-object v4, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 100
    invoke-virtual {v4}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 99
    invoke-static {v3, v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 101
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x100

    .line 103
    invoke-virtual {v4, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_63

    move v2, v4

    goto :goto_64

    :cond_63
    move v2, v5

    .line 108
    :goto_64
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    sget v2, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->CACHE_TIMEOUT_SECONDS:I

    .line 109
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 101
    invoke-virtual {v3, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 111
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1
    :try_end_79
    .catch Ljava/security/GeneralSecurityException; {:try_start_1f .. :try_end_79} :catch_aa
    .catchall {:try_start_1f .. :try_end_79} :catchall_b6

    :try_start_79
    const-string v2, "AES/GCM/NoPadding"

    .line 119
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 121
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    .line 122
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 123
    array-length v2, p2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 124
    array-length v1, v1

    array-length v3, p2

    invoke-static {p2, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object p0, p0, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_9f
    .catch Ljava/security/GeneralSecurityException; {:try_start_79 .. :try_end_9f} :catch_a0
    .catchall {:try_start_79 .. :try_end_9f} :catchall_b6

    goto :goto_a8

    :catch_a0
    move-exception p0

    :try_start_a1
    const-string p1, "ManagedProfilePasswordCache"

    const-string p2, "Cannot encrypt"

    .line 127
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_a8
    monitor-exit v0

    return-void

    :catch_aa
    move-exception p0

    const-string p1, "ManagedProfilePasswordCache"

    const-string p2, "Cannot generate key"

    .line 113
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    monitor-exit v0

    return-void

    .line 90
    :cond_b4
    :goto_b4
    monitor-exit v0

    return-void

    :catchall_b6
    move-exception p0

    .line 129
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_a1 .. :try_end_b8} :catchall_b6

    throw p0
.end method
