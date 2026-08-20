.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreManager.java"


# static fields
.field public static final SYNC_DELAY_MILLIS:J = 0x7d0L

.field public static final TAG:Ljava/lang/String; = "RecoverableKeyStoreMgr"

.field public static mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;


# instance fields
.field public final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field public final mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

.field public final mContext:Landroid/content/Context;

.field public final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field public final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field public final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field public final mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

.field public final mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

.field public final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field public final mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 163
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 164
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 165
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 166
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 167
    iput-object p7, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 168
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 169
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 170
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 172
    invoke-virtual {p10}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->verifyKnownUsers()V

    .line 174
    :try_start_1a
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    const-string p1, "RecoverableKeyStoreMgr"

    const-string p2, "AES keygen algorithm not available. AOSP must support this."

    .line 176
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .registers 14

    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    if-nez v1, :cond_54

    .line 114
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    move-result-object v4
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_58

    .line 118
    :try_start_b
    invoke-static {p0, v4}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v9

    .line 119
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    move-result-object v10
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_13} :catch_4d
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_13} :catch_40
    .catchall {:try_start_b .. :try_end_13} :catchall_58

    .line 128
    :try_start_13
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    move-result-object v7

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    invoke-static {v1, v7, v4, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    move-result-object v12

    .line 134
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-direct {v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    const/4 p0, 0x1

    .line 138
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-direct {v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;-><init>()V

    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;)V

    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    goto :goto_54

    :catch_40
    move-exception p0

    .line 124
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x16

    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_4d
    move-exception p0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :cond_54
    :goto_54
    sget-object p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_58

    monitor-exit v0

    return-object p0

    :catchall_58
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final checkRecoverKeyStorePermission()V
    .registers 4

    .line 970
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have RecoverKeyStore permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.RECOVER_KEYSTORE"

    .line 970
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 975
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mCleanupManager:Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;->registerRecoveryAgent(II)V

    return-void
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string/jumbo v0, "invalid session"

    .line 669
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 670
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(ILjava/lang/String;)V

    return-void
.end method

.method public final decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    const-string p0, "Failed to decrypt recovery key "

    const-string v0, "RecoverableKeyStoreMgr"

    const/16 v1, 0x16

    const/16 v2, 0x1a

    .line 827
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getKeyClaimant()[B

    move-result-object v3

    .line 828
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getVaultParams()[B

    move-result-object v4

    .line 826
    invoke-static {v3, v4, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryClaimResponse([B[B[B)[B

    move-result-object p2
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_14} :catch_90
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_8 .. :try_end_14} :catch_71
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_14} :catch_66

    .line 844
    :try_start_14
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getLskfHash()[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryKey([B[B)[B

    move-result-object p0
    :try_end_1c
    .catch Ljava/security/InvalidKeyException; {:try_start_14 .. :try_end_1c} :catch_47
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_14 .. :try_end_1c} :catch_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 855
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_28
    move-exception p1

    const-string p2, "Got AEADBadTagException during decrypting recovery key"

    .line 850
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p1}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_47
    move-exception p1

    const-string p2, "Got InvalidKeyException during decrypting recovery key"

    .line 846
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_66
    move-exception p0

    .line 840
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_71
    move-exception p1

    const-string p2, "Got AEADBadTagException during decrypting recovery claim response"

    .line 835
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {p1}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2

    :catch_90
    move-exception p1

    const-string p2, "Got InvalidKeyException during decrypting recovery claim response"

    .line 831
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    new-instance p2, Landroid/os/ServiceSpecificException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 698
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    .line 714
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 716
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/16 v8, 0x16

    .line 720
    :try_start_12
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v2
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_18} :catch_42
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_18} :catch_37
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12 .. :try_end_18} :catch_37
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_37

    .line 729
    :try_start_18
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v3, v7

    move v4, v0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)[B

    move-result-object p2

    .line 731
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v1, v7, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 732
    invoke-virtual {p0, v7, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catch Ljava/security/KeyStoreException; {:try_start_18 .. :try_end_2b} :catch_2c
    .catch Ljava/security/InvalidKeyException; {:try_start_18 .. :try_end_2b} :catch_2c
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_18 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    .line 734
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v8, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_37
    move-exception p0

    .line 725
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v8, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_42
    move-exception p0

    .line 723
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getAlias(IILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 661
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getGrantAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 814
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    .line 815
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 816
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 817
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 818
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 342
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object p0

    if-eqz p0, :cond_10

    return-object p0

    .line 344
    :cond_10
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public getRecoverySecretTypes()[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 465
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 466
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 465
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object p0

    return-object p0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 415
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getStatusForAllKeys(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 642
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 643
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, p1, p2, v2, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 645
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "Import %s -> %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecoverableKeyStoreMgr"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_46
    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    .line 772
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "keyBytes is null"

    .line 773
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 774
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_54

    .line 782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 783
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v9, 0x16

    .line 787
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v3
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_23} :catch_4d
    .catch Ljava/security/KeyStoreException; {:try_start_1d .. :try_end_23} :catch_42
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1d .. :try_end_23} :catch_42
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_42

    .line 797
    :try_start_23
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v4, v1

    move v5, v0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B[B)V

    .line 801
    iget-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {p3, v1, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 802
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_36
    .catch Ljava/security/KeyStoreException; {:try_start_23 .. :try_end_36} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_23 .. :try_end_36} :catch_37
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_23 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception p0

    .line 804
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v9, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_42
    move-exception p0

    .line 792
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v9, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_4d
    move-exception p0

    .line 790
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_54
    const-string p0, "RecoverableKeyStoreMgr"

    const-string p1, "The given key for import doesn\'t have the required length 256"

    .line 775
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x1b

    const-string p2, "The given key does not contain 256 bits."

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public initRecoveryService(Ljava/lang/String;[B)V
    .registers 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 192
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v2, p1

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isValidRootCertificateAlias(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x1c

    if-eqz v1, :cond_18a

    .line 200
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v1

    const-string v9, "RecoverableKeyStoreMgr"

    if-nez v1, :cond_46

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root of trust for recovery agent + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is assigned for the first time to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 204
    :cond_46
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root of trust for recovery agent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is changed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_70
    :goto_70
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, v7, v8, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setActiveRootOfTrust(IILjava/lang/String;)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v1, v5, v10

    const/16 v12, 0x16

    if-ltz v1, :cond_182

    const/16 v13, 0x19

    .line 216
    :try_start_80
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    move-result-object v1
    :try_end_84
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_80 .. :try_end_84} :catch_15e

    .line 224
    invoke-virtual {v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getSerial()J

    move-result-wide v5

    .line 225
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v7, v8, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_bb

    .line 226
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v14, v5

    if-ltz v14, :cond_bb

    iget-object v14, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 227
    invoke-virtual {v14, v4}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_bb

    .line 228
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-nez v0, :cond_ae

    const-string v0, "The cert file serial number is the same, so skip updating."

    .line 229
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ae
    const-string v0, "The cert file serial number is older than the one in database."

    .line 231
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 237
    :cond_bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating the certificate with the new serial number "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 242
    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    :try_start_d5
    const-string v14, "Getting and validating a random endpoint certificate"

    .line 244
    invoke-static {v9, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getRandomEndpointCert(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_de
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_d5 .. :try_end_de} :catch_14e

    :try_start_de
    const-string v2, "Saving the randomly chosen endpoint certificate to database"

    .line 253
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v7, v8, v4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-lez v1, :cond_133

    .line 257
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    move v2, v7

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertSerial(IILjava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-ltz v1, :cond_12b

    .line 266
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_10d

    .line 267
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v8, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    const-string v1, "This is a certificate change. Snapshot must be updated"

    .line 268
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    :cond_10d
    const-string v1, "This is a certificate change. Snapshot didn\'t exist"

    .line 270
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_112
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 273
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_135

    const-string v0, "Failed to set the counter id in the local DB."

    .line 275
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 263
    :cond_12b
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Failed to set the certificate serial number in the local DB."

    invoke-direct {v0, v12, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_133
    if-ltz v1, :cond_136

    :cond_135
    :goto_135
    return-void

    .line 278
    :cond_136
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Failed to set the certificate path in the local DB."

    invoke-direct {v0, v12, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_13e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_de .. :try_end_13e} :catch_13e

    :catch_13e
    move-exception v0

    const-string v1, "Failed to encode CertPath"

    .line 282
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_14e
    move-exception v0

    const-string v1, "Invalid endpoint cert"

    .line 247
    invoke-static {v9, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_15e
    move-exception v0

    move-object v1, v0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse the input as a cert file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 210
    :cond_182
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Failed to set the root of trust in the local DB."

    invoke-direct {v0, v12, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 195
    :cond_18a
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v1, "Invalid root certificate alias"

    invoke-direct {v0, v2, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RecoverableKeyStoreMgr"

    .line 302
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 303
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 304
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "recoveryServiceCertFile is null"

    .line 305
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "recoveryServiceSigFile is null"

    .line 306
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    :try_start_17
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    move-result-object v1
    :try_end_1b
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_17 .. :try_end_1b} :catch_59

    .line 317
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 318
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 320
    :try_start_21
    invoke-virtual {v1, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[B)V
    :try_end_24
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_21 .. :try_end_24} :catch_28

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    return-void

    :catch_28
    move-exception p0

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The signature over the cert file is invalid. Cert: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Sig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1c

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_59
    move-exception p0

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse the sig file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x19

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public lockScreenSecretAvailable(I[BI)V
    .registers 14

    const-string v0, "RecoverableKeyStoreMgr"

    .line 913
    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v9, 0x0

    move v6, p3

    move v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object p0

    const-wide/16 p1, 0x7d0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_1b} :catch_2a
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_1b} :catch_23
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_30

    :catch_1c
    move-exception p0

    const-string p1, "Impossible - insecure user, but user just entered lock screen"

    .line 930
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :catch_23
    move-exception p0

    const-string p1, "Key store error encountered during recoverable key sync"

    .line 928
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :catch_2a
    move-exception p0

    const-string p1, "Should never happen - algorithm unavailable for KeySync"

    .line 926
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method

.method public lockScreenSecretChanged(I[BI)V
    .registers 14

    const-string v0, "RecoverableKeyStoreMgr"

    .line 948
    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v9, 0x1

    move v6, p3

    move v7, p1

    move-object v8, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZ)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object p0

    const-wide/16 p1, 0x7d0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_1b} :catch_2a
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_1b} :catch_23
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_2 .. :try_end_1b} :catch_1c

    goto :goto_30

    :catch_1c
    move-exception p0

    const-string p1, "InsecureUserException during lock screen secret update"

    .line 965
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :catch_23
    move-exception p0

    const-string p1, "Key store error encountered during recoverable key sync"

    .line 963
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    :catch_2a
    move-exception p0

    const-string p1, "Should never happen - algorithm unavailable for KeySync"

    .line 961
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method

.method public final publicKeysMatch(Ljava/security/PublicKey;[B)Z
    .registers 3

    .line 979
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p0

    .line 980
    array-length p1, p0

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 868
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x1a

    const-string v3, "RecoverableKeyStoreMgr"

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 869
    invoke-virtual {v1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 870
    invoke-virtual {v1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v5

    .line 871
    invoke-virtual {v1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    move-result-object v1

    .line 874
    :try_start_25
    invoke-static {p1, v5, v1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptApplicationKey([B[B[B)[B

    move-result-object v1

    .line 876
    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_25 .. :try_end_2c} :catch_7b
    .catch Ljava/security/InvalidKeyException; {:try_start_25 .. :try_end_2c} :catch_43
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_9

    :catch_2d
    move-exception v1

    .line 887
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got AEADBadTagException during decrypting application key with alias: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_43
    move-exception p0

    .line 882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got InvalidKeyException during decrypting application key with alias: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    new-instance p1, Landroid/os/ServiceSpecificException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to recover key with alias \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_7b
    move-exception p0

    const-string p1, "Missing SecureBox algorithm. AOSP required to support this."

    .line 878
    invoke-static {v3, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 879
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    .line 880
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 892
    :cond_8d
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a5

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9a

    goto :goto_a5

    :cond_9a
    const-string p0, "Failed to recover any of the application keys."

    .line 893
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-direct {p1, v2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_a5
    :goto_a5
    return-object p0
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 607
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 609
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 619
    :try_start_13
    invoke-virtual {p0, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    move-result-object p1

    .line 620
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 622
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_1f
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_1f} :catch_2a
    .catchall {:try_start_13 .. :try_end_1f} :catchall_28

    .line 626
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 627
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    return-object p1

    :catchall_28
    move-exception p1

    goto :goto_37

    :catch_2a
    move-exception p1

    .line 624
    :try_start_2b
    new-instance p2, Landroid/os/ServiceSpecificException;

    const/16 p3, 0x16

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p2
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    .line 626
    :goto_37
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 627
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 628
    throw p1

    .line 611
    :cond_40
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x18

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Application uid=%d does not have pending session \'%s\'"

    .line 612
    invoke-static {p3, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    .line 675
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 677
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 679
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeKey(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 681
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 682
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    :cond_23
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string/jumbo v0, "secretTypes is null"

    .line 427
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v2

    .line 432
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_25

    const-string p0, "Not updating secret types - same as old value."

    .line 433
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 437
    :cond_25
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoverySecretTypes(II[I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_59

    .line 443
    array-length p1, v2

    if-nez p1, :cond_3a

    const-string p0, "Initialized secret types."

    .line 444
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    const-string p1, "Updated secret types. Snapshot pending."

    .line 448
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 450
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    const-string p0, "Updated secret types. Snapshot must be updated"

    .line 451
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_53
    const-string p0, "Updated secret types. Snapshot didn\'t exist"

    .line 453
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_58
    return-void

    .line 439
    :cond_59
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x16

    const-string v0, "Database error trying to set secret types."

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    const-string v0, "alias is null"

    .line 396
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryStatus(ILjava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_1a

    return-void

    .line 399
    :cond_1a
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x16

    const-string p2, "Failed to set the key recovery status in the local DB."

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public setServerParams([B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 365
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v2

    .line 367
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    const-string v4, "RecoverableKeyStoreMgr"

    if-eqz v3, :cond_1f

    const-string p0, "Not updating server params - same as old value."

    .line 368
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_1f
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setServerParams(II[B)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-ltz p1, :cond_4d

    if-nez v2, :cond_33

    const-string p0, "Initialized server params."

    .line 379
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :cond_33
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 384
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    const-string p0, "Updated server params. Snapshot must be updated"

    .line 385
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_47
    const-string p0, "Updated server params. Snapshot didn\'t exist"

    .line 387
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return-void

    .line 374
    :cond_4d
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x16

    const-string v0, "Database failure trying to set server params."

    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 353
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->setSnapshotListener(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 494
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_88

    const/16 v1, 0x19

    .line 501
    :try_start_10
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->deserializePublicKey([B)Ljava/security/PublicKey;

    move-result-object p2
    :try_end_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_10 .. :try_end_14} :catch_7d

    .line 508
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->publicKeysMatch(Ljava/security/PublicKey;[B)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 513
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->generateKeyClaimant()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 514
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-virtual {p5}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getSecret()[B

    move-result-object p5

    .line 515
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    invoke-direct {v3, p1, p5, v2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;-><init>(Ljava/lang/String;[B[B[B)V

    invoke-virtual {p0, v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V

    .line 519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received VaultParams for recovery: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoverableKeyStoreMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :try_start_4d
    invoke-static {p5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object p0

    .line 522
    invoke-static {p2, p3, p4, p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B

    move-result-object p0
    :try_end_55
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4d .. :try_end_55} :catch_61
    .catch Ljava/security/InvalidKeyException; {:try_start_4d .. :try_end_55} :catch_56

    return-object p0

    :catch_56
    move-exception p0

    .line 532
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_61
    move-exception p0

    const-string p2, "SecureBox algorithm missing. AOSP must support this."

    .line 529
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x16

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 509
    :cond_73
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/16 p1, 0x1c

    const-string p2, "The public keys given in verifierPublicKey and vaultParams do not match."

    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_7d
    move-exception p0

    .line 503
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 495
    :cond_88
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only a single KeyChainProtectionParams is supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RecoverableKeyStoreMgr"

    .line 556
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 557
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 558
    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "invalid session"

    .line 559
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "verifierCertPath is null"

    .line 560
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "vaultParams is null"

    .line 561
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "vaultChallenge is null"

    .line 562
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "secrets is null"

    .line 563
    invoke-static {p6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v1, 0x19

    .line 566
    :try_start_2b
    invoke-virtual {p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p3
    :try_end_2f
    .catch Ljava/security/cert/CertificateException; {:try_start_2b .. :try_end_2f} :catch_74

    .line 572
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 573
    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p2

    .line 572
    invoke-static {p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_38
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_2f .. :try_end_38} :catch_62

    .line 579
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/Certificate;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    if-eqz v4, :cond_57

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 586
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    move-result-object p0

    return-object p0

    :cond_57
    const-string p0, "Failed to encode verifierPublicKey"

    .line 581
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_62
    move-exception p0

    const-string p1, "Failed to validate the given cert path"

    .line 575
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    new-instance p1, Landroid/os/ServiceSpecificException;

    const/16 p2, 0x1c

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_74
    move-exception p0

    .line 568
    new-instance p1, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
