.class public Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;,
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;,
        Lcom/android/server/locksettings/RebootEscrowManager$Injector;,
        Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;,
        Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowErrorCode;
    }
.end annotation


# static fields
.field public static final BOOT_COUNT_TOLERANCE:I = 0x5

.field public static final DEFAULT_LOAD_ESCROW_DATA_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_LOAD_ESCROW_DATA_RETRY_INTERVAL_SECONDS:I = 0x1e

.field public static final DEFAULT_WAKE_LOCK_TIMEOUT_MILLIS:I = 0x2bf20

.field public static final ERROR_KEYSTORE_FAILURE:I = 0x7

.field public static final ERROR_LOAD_ESCROW_KEY:I = 0x3

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_NETWORK:I = 0x8

.field public static final ERROR_NO_PROVIDER:I = 0x2

.field public static final ERROR_PROVIDER_MISMATCH:I = 0x6

.field public static final ERROR_RETRY_COUNT_EXHAUSTED:I = 0x4

.field public static final ERROR_UNKNOWN:I = 0x1

.field public static final ERROR_UNLOCK_ALL_USERS:I = 0x5

.field public static final OTHER_VBMETA_DIGEST_PROP_NAME:Ljava/lang/String; = "ota.other.vbmeta_digest"

.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final REBOOT_ESCROW_KEY_ARMED_TIMESTAMP:Ljava/lang/String; = "reboot_escrow_key_stored_timestamp"

.field public static final REBOOT_ESCROW_KEY_OTHER_VBMETA_DIGEST:Ljava/lang/String; = "reboot_escrow_key_other_vbmeta_digest"

.field public static final REBOOT_ESCROW_KEY_PROVIDER:Ljava/lang/String; = "reboot_escrow_key_provider"

.field public static final REBOOT_ESCROW_KEY_VBMETA_DIGEST:Ljava/lang/String; = "reboot_escrow_key_vbmeta_digest"

.field public static final TAG:Ljava/lang/String; = "RebootEscrowManager"

.field public static final VBMETA_DIGEST_PROP_NAME:Ljava/lang/String; = "ro.boot.vbmeta.digest"


# instance fields
.field public final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field public final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field public final mKeyGenerationLock:Ljava/lang/Object;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mLoadEscrowDataErrorCode:I

.field public mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mKeyGenerationLock"
        }
    .end annotation
.end field

.field public mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

.field public mRebootEscrowReady:Z

.field public mRebootEscrowWanted:Z

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$MCZrkBnSWs5XvHixy2Q3XukpAoc(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$loadRebootEscrowDataIfAvailable$0(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_uF9TRM4voE5C9plNz6cgWUY_k(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->lambda$scheduleLoadRebootEscrowDataOrFail$1(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .registers 5

    .line 340
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-direct {v0, p1, p3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 346
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 347
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 348
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 349
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 350
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getEventLog()Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 351
    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getKeyStoreManager()Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    return-void
.end method

.method private synthetic lambda$loadRebootEscrowDataIfAvailable$0(Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$scheduleLoadRebootEscrowDataOrFail$1(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 5

    .line 399
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public armRebootEscrowIfNeeded()I
    .registers 9

    .line 678
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    const/4 v1, 0x2

    if-nez v0, :cond_6

    return v1

    .line 682
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string v0, "RebootEscrowManager"

    const-string v1, "Not storing escrow key, RebootEscrowProvider is unavailable"

    .line 684
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x3

    return p0

    .line 689
    :cond_1a
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v2

    .line 692
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v3

    if-eq v2, v3, :cond_4e

    const-string v0, "RebootEscrowManager"

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect reboot escrow provider "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but the RoR is prepared with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please prepare the RoR again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x4

    return p0

    .line 702
    :cond_4e
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 703
    :try_start_51
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 704
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_c6

    if-nez v4, :cond_62

    const-string v0, "RebootEscrowManager"

    const-string v1, "Escrow key is null, but escrow was marked as ready"

    .line 707
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x5

    return p0

    .line 713
    :cond_62
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_76

    const-string v0, "RebootEscrowManager"

    const-string v1, "Failed to get encryption key from keystore."

    .line 715
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x6

    return p0

    .line 723
    :cond_76
    invoke-interface {v0, v4, v2}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v0

    if-nez v0, :cond_7e

    const/4 p0, 0x7

    return p0

    .line 728
    :cond_7e
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_armed_count"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 729
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 732
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_vbmeta_digest"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 734
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_other_vbmeta_digest"

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v6, 0x1

    .line 735
    invoke-virtual {v4, v6}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v4

    .line 734
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 736
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_provider"

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 737
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v5

    :catchall_c6
    move-exception p0

    .line 704
    :try_start_c7
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public callToRebootEscrowIfNeeded(IB[B)V
    .registers 7

    .line 596
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    if-nez v0, :cond_5

    return-void

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_15

    const-string p0, "Not storing escrow data, RebootEscrowProvider is unavailable"

    .line 601
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 605
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v0

    if-nez v0, :cond_21

    const-string p0, "Could not generate escrow key"

    .line 607
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 611
    :cond_21
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->generateKeyStoreEncryptionKeyIfNeeded()Ljavax/crypto/SecretKey;

    move-result-object v2

    if-nez v2, :cond_2f

    const-string p0, "Failed to generate encryption key from keystore."

    .line 613
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 619
    :cond_2f
    :try_start_2f
    invoke-static {v0, p2, p3, v2}, Lcom/android/server/locksettings/RebootEscrowData;->fromSyntheticPassword(Lcom/android/server/locksettings/RebootEscrowKey;B[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object p2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_47

    .line 627
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getBlob()[B

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeRebootEscrow(I[B)V

    .line 628
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p3, 0x6

    invoke-virtual {p2, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V

    const/4 p1, 0x1

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    return-void

    :catch_47
    move-exception p1

    const/4 p2, 0x0

    .line 622
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    const-string p0, "Could not escrow reboot data"

    .line 623
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final clearMetricsStorage()V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 465
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_stored_timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 466
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 467
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 468
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "reboot_escrow_key_provider"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    return-void
.end method

.method public clearRebootEscrow()Z
    .registers 1

    .line 762
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method

.method public final clearRebootEscrowIfNeeded()V
    .registers 4

    const/4 v0, 0x0

    .line 653
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 659
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "RebootEscrowManager"

    const-string v1, "RebootEscrowProvider is unavailable for clear request"

    .line 661
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 663
    :cond_16
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->clearRebootEscrowKey()V

    .line 666
    :goto_19
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    .line 667
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 669
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 670
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 671
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_2b

    .line 674
    :cond_3f
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const-string/jumbo v0, "mRebootEscrowWanted="

    .line 864
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 865
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mRebootEscrowReady="

    .line 867
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 868
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v0, "mRebootEscrowListener="

    .line 870
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 874
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_24
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 876
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_7d

    const-string/jumbo v0, "mPendingRebootEscrowKey is "

    .line 878
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_38

    const-string/jumbo v0, "set"

    goto :goto_3b

    :cond_38
    const-string/jumbo v0, "not set"

    .line 879
    :goto_3b
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getRebootEscrowProvider()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "null"

    goto :goto_52

    .line 882
    :cond_4a
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 883
    :goto_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RebootEscrowProvider type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Event log:"

    .line 886
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 888
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 889
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 890
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_7d
    move-exception p0

    .line 876
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public final generateEscrowKeyIfNeeded()Lcom/android/server/locksettings/RebootEscrowKey;
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    if-eqz v1, :cond_9

    .line 636
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1b

    return-object v1

    .line 641
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_11
    .catchall {:try_start_9 .. :try_end_d} :catchall_1b

    .line 647
    :try_start_d
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 648
    monitor-exit v0

    return-object v1

    :catch_11
    const-string p0, "RebootEscrowManager"

    const-string v1, "Could not generate reboot escrow key"

    .line 643
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 644
    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 649
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 548
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    const-string p1, "RebootEscrowManager"

    const-string v0, "Had reboot escrow data for users, but RebootEscrowProvider is unavailable"

    .line 550
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 552
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-object v1

    .line 557
    :cond_14
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    if-nez p1, :cond_21

    const/4 p1, 0x7

    .line 559
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-object v1

    .line 564
    :cond_21
    invoke-interface {v0, p1}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 566
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    :cond_2d
    return-object p1
.end method

.method public final getVbmetaDigestStatusOnRestoreComplete()I
    .registers 6

    .line 472
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getVbmetaDigest(Z)Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_vbmeta_digest"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 475
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "reboot_escrow_key_other_vbmeta_digest"

    invoke-virtual {p0, v3, v4, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2a

    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    return v1

    :cond_29
    return v4

    .line 489
    :cond_2a
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    return v1

    .line 492
    :cond_31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 p0, 0x1

    return p0

    :cond_39
    return v4
.end method

.method public loadRebootEscrowDataIfAvailable(Landroid/os/Handler;)V
    .registers 8

    .line 364
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 367
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, v5}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->isUserSecure(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 368
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 372
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_44

    const-string p1, "RebootEscrowManager"

    const-string v0, "No reboot escrow data found for users, skipping loading escrow data"

    .line 373
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    return-void

    .line 380
    :cond_44
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_5a

    const/4 v3, 0x0

    .line 382
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 383
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v3, 0x2bf20

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 386
    :cond_5a
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v3, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->post(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    if-nez v0, :cond_f

    const-string v2, "Failed to load the key for resume on reboot from key store."

    .line 421
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v2, 0x1

    .line 426
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_14} :catch_65

    if-nez p1, :cond_39

    .line 435
    iget p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez p1, :cond_34

    .line 437
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result p1

    .line 440
    iget-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string/jumbo v3, "reboot_escrow_key_provider"

    invoke-virtual {p4, v3, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result p4

    if-eq p1, p4, :cond_31

    const/4 p1, 0x6

    .line 441
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    goto :goto_34

    :cond_31
    const/4 p1, 0x3

    .line 443
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    :cond_34
    :goto_34
    add-int/2addr p2, v2

    .line 446
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;I)V

    return-void

    .line 450
    :cond_39
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    invoke-virtual {p3, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    .line 453
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move p4, v2

    :goto_43
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 454
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    move-result v1

    and-int/2addr p4, v1

    goto :goto_43

    :cond_57
    if-nez p4, :cond_60

    .line 457
    iget p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez p1, :cond_60

    const/4 p1, 0x5

    .line 458
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    :cond_60
    add-int/2addr p2, v2

    .line 460
    invoke-virtual {p0, p4, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZI)V

    return-void

    :catch_65
    move-exception v0

    const-string v3, "Failed to load escrow key, scheduling retry."

    .line 428
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/2addr p2, v2

    .line 429
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/RebootEscrowManager;->scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final onEscrowRestoreComplete(ZI)V
    .registers 7

    .line 528
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "reboot_escrow_armed_count"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getBootCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-nez p1, :cond_19

    if-eq v0, v2, :cond_1c

    const/4 v0, 0x5

    if-gt v1, v0, :cond_1c

    .line 532
    :cond_19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->reportMetricOnRestoreComplete(ZI)V

    .line 536
    :cond_1c
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->clearKeyStoreEncryptionKey()V

    .line 538
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->clearRebootEscrowProvider()V

    .line 539
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 541
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_30

    .line 542
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_30
    return-void
.end method

.method public final onGetRebootEscrowKeyFailed(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "RebootEscrowManager"

    const-string v1, "Had reboot escrow data for users, but no key; removing escrow storage."

    .line 355
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 357
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    goto :goto_b

    :cond_1f
    const/4 p1, 0x0

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZI)V

    return-void
.end method

.method public prepareRebootEscrow()Z
    .registers 3

    .line 750
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 751
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    move-result-object v0

    if-nez v0, :cond_14

    const-string p0, "RebootEscrowManager"

    const-string v0, "No reboot escrow provider, skipping resume on reboot preparation."

    .line 752
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 v0, 0x1

    .line 756
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 757
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(I)V

    return v0
.end method

.method public final reportMetricOnRestoreComplete(ZI)V
    .registers 14

    .line 501
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    move v5, v0

    goto :goto_d

    :cond_c
    move v5, v1

    .line 505
    :goto_d
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    const-wide/16 v3, -0x1

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v4, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    const/4 v0, -0x1

    .line 508
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v6, v3

    if-eqz v2, :cond_2c

    cmp-long v2, v8, v6

    if-lez v2, :cond_2c

    sub-long/2addr v8, v6

    long-to-int v0, v8

    .line 510
    div-int/lit16 v0, v0, 0x3e8

    :cond_2c
    move v7, v0

    .line 513
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->getVbmetaDigestStatusOnRestoreComplete()I

    move-result v8

    if-nez p1, :cond_39

    .line 514
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    if-nez v0, :cond_39

    .line 515
    iput v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 518
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting RoR recovery metrics, success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", service type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RebootEscrowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    iget v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    const/4 v9, -0x1

    move v3, p1

    move v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->reportMetric(ZIIIIII)V

    .line 524
    iput v10, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    return-void
.end method

.method public final restoreRebootEscrowForUser(ILcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
    .registers 8

    const-string v0, "RebootEscrowManager"

    .line 573
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasRebootEscrow(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 578
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readRebootEscrow(I)[B

    move-result-object v1

    .line 579
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeRebootEscrow(I)V

    .line 581
    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    move-result-object p2

    .line 583
    iget-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getSpVersion()B

    move-result v1

    .line 584
    invoke-virtual {p2}, Lcom/android/server/locksettings/RebootEscrowData;->getSyntheticPassword()[B

    move-result-object p2

    .line 583
    invoke-interface {p3, v1, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;->onRebootEscrowRestored(B[BI)V

    .line 585
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Restored reboot escrow data for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->addEntry(II)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_42} :catch_44

    const/4 p0, 0x1

    return p0

    :catch_44
    move-exception p0

    .line 589
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not load reboot escrow data for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public scheduleLoadRebootEscrowDataOrFail(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 392
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryLimit()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowDataRetryIntervalSeconds()I

    move-result v1

    const-string v2, "RebootEscrowManager"

    if-ge p2, v0, :cond_3b

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling loadRebootEscrowData retry number: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    new-instance v8, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long p2, v1

    invoke-virtual {v0, p1, v8, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void

    .line 405
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load reboot escrow data after "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " attempts"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->isNetworkConnected()Z

    move-result p1

    if-nez p1, :cond_69

    const/16 p1, 0x8

    .line 407
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    goto :goto_6c

    :cond_69
    const/4 p1, 0x4

    .line 409
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 411
    :goto_6c
    invoke-virtual {p0, p3, p2}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;I)V

    return-void
.end method

.method public setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .registers 2

    .line 767
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    return-void
.end method

.method public final setRebootEscrowReady(Z)V
    .registers 3

    .line 743
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    if-eq v0, p1, :cond_9

    .line 744
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RebootEscrowListener;->onPreparedForReboot(Z)V

    .line 746
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    return-void
.end method
