.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VaultKeeperService$LifeCycle;
    }
.end annotation


# static fields
.field public static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field public static final ANDROID_UID_SHELL:I = 0x7d0

.field public static final ANDROID_UID_SYSTEM:I = 0x3e8

.field public static final HMAC_SHA256_LEN:I = 0x20

.field public static final MESSAGE_ACQUIRE_WAKELOCK:I = 0x1

.field public static final MESSAGE_RELEASE_WAKELOCK:I = 0x2

.field public static final SERVICE_NOT_SUPPORT:I = 0x0

.field public static final SERVICE_SUPPORT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field public static final TYPE_COMMERCIAL_DEVICE:I = 0x6

.field public static final TYPE_EMT:I = 0x3

.field public static final TYPE_MAX:I = 0x9

.field public static final TYPE_MIN:I = 0x1

.field public static final TYPE_NONCE:I = 0x1

.field public static final TYPE_VAULT_DATA_MAX:I = 0x2

.field public static final TYPE_VAULT_DATA_MIN:I = 0x1

.field public static final TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field public static final TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field public static final TYPE_VK_API_LEVEL:I = 0x9

.field public static final TYPE_WB:I = 0x2

.field public static final VAULT_KEY_LEN:I = 0x20


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mServiceSupport:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "vkjni"

    .line 128
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 158
    new-instance v0, Lcom/android/server/VaultKeeperService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VaultKeeperService$1;-><init>(Lcom/android/server/VaultKeeperService;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result p1

    iput p1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 149
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "VK_WakeLock"

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private native nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I
.end method


# virtual methods
.method public checkDataWritable(Ljava/lang/String;)I
    .registers 8

    const-string v0, "VaultKeeperService"

    const-string v1, "checkDataWritable"

    .line 679
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_29

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VaultKeeper not support("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x68

    return p0

    .line 686
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    const/16 p0, -0x6a

    return p0

    .line 691
    :cond_32
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_46} :catch_61

    if-eqz v2, :cond_59

    .line 696
    :try_start_48
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_52

    .line 698
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_52
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 699
    throw p1

    :cond_59
    const-string p0, "Unable to acquire lock"

    .line 701
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_5e} :catch_61

    const/16 p0, -0x69

    return p0

    :catch_61
    move-exception p0

    .line 705
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public destroy(Ljava/lang/String;[B[B[B)I
    .registers 11

    const-string v0, "VaultKeeperService"

    const-string v1, "destroy"

    .line 373
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_29

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x68

    return p0

    .line 380
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    const/16 p0, -0x6a

    return p0

    :cond_32
    const/16 v2, -0x66

    if-eqz p2, :cond_51

    .line 386
    array-length v3, p2

    const/16 v4, 0x20

    if-le v3, v4, :cond_51

    .line 387
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "destroy : Invalid hmac length "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_51
    if-eqz p3, :cond_67

    if-eqz p4, :cond_67

    .line 393
    array-length v3, p3

    if-nez v3, :cond_5e

    const-string p0, "destroy : if cert is exist, it should contain value."

    .line 394
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 398
    :cond_5e
    array-length v3, p4

    if-nez v3, :cond_67

    const-string p0, "destroy : if signature is exist, it should contain value."

    .line 399
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_67
    if-eqz p2, :cond_73

    if-eqz p3, :cond_73

    if-eqz p4, :cond_73

    const-string p0, "destroy : Invalid arguments(too many arguments)"

    .line 405
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 409
    :cond_73
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    :try_start_7d
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_87} :catch_a7

    if-eqz v2, :cond_9f

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 414
    :try_start_8e
    invoke-direct/range {v0 .. v5}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result p1
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_98

    .line 416
    :try_start_92
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_98
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    throw p1

    :cond_9f
    const-string p0, "Unable to acquire lock"

    .line 419
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_92 .. :try_end_a4} :catch_a7

    const/16 p0, -0x69

    return p0

    :catch_a7
    move-exception p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public encryptMessage(Ljava/lang/String;[B)[B
    .registers 10

    const-string v0, "VaultKeeperService"

    const-string v1, "encryptMessage"

    .line 565
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 572
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    return-object v2

    :cond_2f
    if-eqz p2, :cond_3a

    .line 577
    array-length v3, p2

    if-nez v3, :cond_3a

    const-string p0, "encryptMessage : if msg is exist, it should contain value."

    .line 578
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 582
    :cond_3a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 585
    :try_start_44
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4e} :catch_67

    if-eqz v3, :cond_61

    .line 587
    :try_start_50
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_5a

    .line 589
    :try_start_54
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_5a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 590
    throw p1

    :cond_61
    const-string p0, "Unable to acquire lock"

    .line 592
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_66} :catch_67

    return-object v2

    :catch_67
    move-exception p0

    .line 596
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v2
.end method

.method public generateHotpCode(Ljava/lang/String;)I
    .registers 8

    const-string v0, "VaultKeeperService"

    const-string v1, "generateHotpCode"

    .line 712
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_29

    .line 715
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VaultKeeper not support("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x68

    return p0

    .line 719
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    const/16 p0, -0x6a

    return p0

    .line 724
    :cond_32
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 727
    :try_start_3c
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_46} :catch_61

    if-eqz v2, :cond_59

    .line 729
    :try_start_48
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_52

    .line 731
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_52
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 732
    throw p1

    :cond_59
    const-string p0, "Unable to acquire lock"

    .line 734
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_5e} :catch_61

    const/16 p0, -0x69

    return p0

    :catch_61
    move-exception p0

    .line 738
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string/jumbo v0, "system_server"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get service instance by ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VaultKeeperService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    .line 196
    :try_start_39
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_43} :catch_175

    if-eqz v4, :cond_16f

    if-nez p1, :cond_52

    :try_start_47
    const-string p1, "Vault name is null"

    .line 200
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_15a
    .catchall {:try_start_47 .. :try_end_4c} :catchall_158

    .line 260
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_175

    return-object v1

    .line 204
    :cond_52
    :try_start_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_63

    const-string p1, "Vault name is wrong"

    .line 205
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5d} :catch_15a
    .catchall {:try_start_52 .. :try_end_5d} :catchall_158

    .line 260
    :try_start_5d
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_62} :catch_175

    return-object v1

    .line 209
    :cond_63
    :try_start_63
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v4, 0x186a0

    if-eqz p1, :cond_7f

    .line 210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    rem-int/2addr p1, v4

    const/16 v5, 0x3e8

    if-ne p1, v5, :cond_7f

    goto/16 :goto_13e

    .line 213
    :cond_7f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    rem-int/2addr p1, v4

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_a9

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denied. Check your UID ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_a3} :catch_15a
    .catchall {:try_start_63 .. :try_end_a3} :catchall_158

    .line 260
    :try_start_a3
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_a8
    .catch Ljava/lang/InterruptedException; {:try_start_a3 .. :try_end_a8} :catch_175

    return-object v1

    .line 218
    :cond_a9
    :try_start_a9
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_c0

    const-string p1, "ActivityManager is null, something wrong in framework"

    .line 220
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ba} :catch_15a
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_158

    .line 260
    :try_start_ba
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_bf
    .catch Ljava/lang/InterruptedException; {:try_start_ba .. :try_end_bf} :catch_175

    return-object v1

    .line 224
    :cond_c0
    :try_start_c0
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d2

    const-string/jumbo p1, "getRunningAppProcesses return null List. Cannot check permision"

    .line 225
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cc} :catch_15a
    .catchall {:try_start_c0 .. :try_end_cc} :catchall_158

    .line 260
    :try_start_cc
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_d1
    .catch Ljava/lang/InterruptedException; {:try_start_cc .. :try_end_d1} :catch_175

    return-object v1

    .line 229
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_da
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 230
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v2, v4, :cond_da

    .line 231
    iget-object p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v0, p1

    goto :goto_f3

    :cond_f2
    move-object v0, v1

    :goto_f3
    if-nez v0, :cond_100

    const-string p1, "Invalid package name"

    .line 237
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_fa} :catch_15a
    .catchall {:try_start_d2 .. :try_end_fa} :catchall_158

    .line 260
    :try_start_fa
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_fa .. :try_end_ff} :catch_175

    return-object v1

    .line 241
    :cond_100
    :try_start_100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_111

    const-string p1, "Invalid package length"

    .line 242
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_10b} :catch_15a
    .catchall {:try_start_100 .. :try_end_10b} :catchall_158

    .line 260
    :try_start_10b
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_110} :catch_175

    return-object v1

    .line 246
    :cond_111
    :try_start_111
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android"

    .line 247
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_13e

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Allowed : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t signed with platform key."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_138} :catch_15a
    .catchall {:try_start_111 .. :try_end_138} :catchall_158

    .line 260
    :try_start_138
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_13d
    .catch Ljava/lang/InterruptedException; {:try_start_138 .. :try_end_13d} :catch_175

    return-object v1

    .line 253
    :cond_13e
    :goto_13e
    :try_start_13e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client info : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_152} :catch_15a
    .catchall {:try_start_13e .. :try_end_152} :catchall_158

    .line 260
    :try_start_152
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_157
    .catch Ljava/lang/InterruptedException; {:try_start_152 .. :try_end_157} :catch_175

    return-object v0

    :catchall_158
    move-exception p1

    goto :goto_169

    :catch_15a
    move-exception p1

    :try_start_15b
    const-string v0, "Fail to check permission(Exception)"

    .line 256
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_163
    .catchall {:try_start_15b .. :try_end_163} :catchall_158

    .line 260
    :try_start_163
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :goto_169
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    throw p1

    :cond_16f
    const-string p0, "Unable to acquire lock"

    .line 263
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_174
    .catch Ljava/lang/InterruptedException; {:try_start_163 .. :try_end_174} :catch_175

    return-object v1

    :catch_175
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method public initialize(Ljava/lang/String;[B[B[B[B)I
    .registers 13

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize"

    .line 308
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v2, ")"

    if-nez v1, :cond_2a

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x68

    return p0

    .line 315
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    const/16 p0, -0x6a

    return p0

    :cond_33
    const/16 v3, -0x66

    if-eqz p2, :cond_56

    .line 320
    array-length v4, p2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_56

    .line 321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_56
    if-eqz p3, :cond_62

    .line 325
    array-length v2, p3

    if-nez v2, :cond_62

    const-string/jumbo p0, "initialize : if initUnsheltered is exist, it should contain value."

    .line 326
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_62
    if-eqz p4, :cond_6e

    .line 330
    array-length v2, p4

    if-nez v2, :cond_6e

    const-string/jumbo p0, "initialize : if cert is exist, it should contain value."

    .line 331
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6e
    if-eqz p5, :cond_7a

    .line 335
    array-length v2, p5

    if-nez v2, :cond_7a

    const-string/jumbo p0, "initialize :  if signature is exist, it should contain value."

    .line 336
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7a
    const/4 v2, 0x0

    if-eqz p4, :cond_8e

    if-eqz p5, :cond_8e

    .line 342
    array-length v2, p5

    array-length v4, p4

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 343
    array-length v4, p5

    const/4 v5, 0x0

    invoke-static {p5, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    array-length v4, p5

    array-length v6, p4

    invoke-static {p4, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8e
    move-object v5, v2

    if-nez p4, :cond_9a

    if-nez p5, :cond_9a

    const-string/jumbo p0, "initialize : All of input param is empty."

    .line 348
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 352
    :cond_9a
    iget-object p4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    :try_start_a4
    iget-object p4, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v2, v3, p5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p4
    :try_end_ae
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_ae} :catch_cd

    if-eqz p4, :cond_c5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 357
    :try_start_b4
    invoke-direct/range {v0 .. v5}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result p1
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_be

    .line 359
    :try_start_b8
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_be
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 360
    throw p1

    :cond_c5
    const-string p0, "Unable to acquire lock"

    .line 362
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Ljava/lang/InterruptedException; {:try_start_b8 .. :try_end_ca} :catch_cd

    const/16 p0, -0x69

    return p0

    :catch_cd
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public isInitialized(Ljava/lang/String;)Z
    .registers 9

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VaultKeeper not support("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 281
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return v2

    .line 286
    :cond_30
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_44} :catch_5d

    if-eqz v3, :cond_57

    .line 291
    :try_start_46
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_50

    .line 293
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_50
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 294
    throw p1

    :cond_57
    const-string p0, "Unable to acquire lock"

    .line 296
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_5c} :catch_5d

    return v2

    :catch_5d
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2
.end method

.method public migrationStorage(Ljava/lang/String;)Z
    .registers 9

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "migrationStorage"

    .line 603
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VaultKeeper not support("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 610
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return v2

    .line 615
    :cond_30
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 618
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_44} :catch_5d

    if-eqz v3, :cond_57

    .line 620
    :try_start_46
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_50

    .line 622
    :try_start_4a
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_50
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 623
    throw p1

    :cond_57
    const-string p0, "Unable to acquire lock"

    .line 625
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_5c} :catch_5d

    return v2

    :catch_5d
    move-exception p0

    .line 629
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2
.end method

.method public read(Ljava/lang/String;I[I)[B
    .registers 11

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "read"

    .line 430
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 437
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return-object v2

    :cond_30
    const/4 v3, 0x1

    if-lt p2, v3, :cond_6b

    const/4 v4, 0x2

    if-le p2, v4, :cond_37

    goto :goto_6b

    :cond_37
    if-nez p3, :cond_3a

    return-object v2

    .line 450
    :cond_3a
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    :try_start_43
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_4d} :catch_66

    if-eqz v3, :cond_60

    .line 455
    :try_start_4f
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B

    move-result-object p1
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_59

    .line 457
    :try_start_53
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_59
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 458
    throw p1

    :cond_60
    const-string p0, "Unable to acquire lock"

    .line 460
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_65} :catch_66

    return-object v2

    :catch_66
    move-exception p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v2

    :cond_6b
    :goto_6b
    const-string/jumbo p0, "read : Invalid type value."

    .line 443
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public sensitiveBox(Ljava/lang/String;I[I)[B
    .registers 11

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox"

    .line 524
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 531
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return-object v2

    :cond_30
    const/4 v3, 0x1

    if-lt p2, v3, :cond_6c

    const/16 v4, 0x9

    if-le p2, v4, :cond_38

    goto :goto_6c

    :cond_38
    if-nez p3, :cond_3b

    return-object v2

    .line 544
    :cond_3b
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    :try_start_44
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4e} :catch_67

    if-eqz v3, :cond_61

    .line 549
    :try_start_50
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B

    move-result-object p1
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_5a

    .line 551
    :try_start_54
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_5a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    throw p1

    :cond_61
    const-string p0, "Unable to acquire lock"

    .line 554
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_66} :catch_67

    return-object v2

    :catch_67
    move-exception p0

    .line 558
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v2

    :cond_6c
    :goto_6c
    const-string/jumbo p0, "sensitiveBox : Invalid type value."

    .line 537
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public systemReady()V
    .registers 2

    const-string p0, "VaultKeeperService"

    const-string v0, "System is ready"

    .line 155
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public verifyCertificate(Ljava/lang/String;[B)Z
    .registers 10

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    .line 636
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 643
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    if-nez p2, :cond_39

    const-string/jumbo p0, "verifyCertificate : cert is null."

    .line 649
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 653
    :cond_39
    array-length v3, p2

    if-nez v3, :cond_43

    const-string/jumbo p0, "verifyCertificate : certificate length is zero"

    .line 654
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 658
    :cond_43
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_57} :catch_70

    if-eqz v3, :cond_6a

    .line 663
    :try_start_59
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_63

    .line 665
    :try_start_5d
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_63
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    throw p1

    :cond_6a
    const-string p0, "Unable to acquire lock"

    .line 668
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_6f} :catch_70

    return v2

    :catch_70
    move-exception p0

    .line 672
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2
.end method

.method public write(Ljava/lang/String;I[B[B[B)I
    .registers 13

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    .line 471
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_2a

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VaultKeeper not support("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x68

    return p0

    .line 478
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    const/16 p0, -0x6a

    return p0

    :cond_33
    const/4 v2, 0x1

    const/16 v3, -0x66

    if-lt p2, v2, :cond_9b

    const/4 v4, 0x2

    if-le p2, v4, :cond_3c

    goto :goto_9b

    :cond_3c
    if-eqz p3, :cond_48

    .line 488
    array-length v4, p3

    if-nez v4, :cond_48

    const-string/jumbo p0, "write : if data is exist, it should contain value."

    .line 489
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_48
    if-eqz p4, :cond_54

    .line 493
    array-length v4, p4

    if-nez v4, :cond_54

    const-string/jumbo p0, "write : if cert is exist, it should contain value."

    .line 494
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_54
    if-eqz p5, :cond_60

    .line 498
    array-length v4, p5

    if-nez v4, :cond_60

    const-string/jumbo p0, "write : if sig is exist, it should contain value."

    .line 499
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 503
    :cond_60
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 506
    :try_start_69
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_69 .. :try_end_73} :catch_94

    if-eqz v2, :cond_8c

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 508
    :try_start_7b
    invoke-direct/range {v0 .. v6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I

    move-result p1
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_85

    .line 510
    :try_start_7f
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_85
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 511
    throw p1

    :cond_8c
    const-string p0, "Unable to acquire lock"

    .line 513
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_91} :catch_94

    const/16 p0, -0x69

    return p0

    :catch_94
    move-exception p0

    .line 517
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0

    :cond_9b
    :goto_9b
    const-string/jumbo p0, "write : Invalid type value."

    .line 484
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
