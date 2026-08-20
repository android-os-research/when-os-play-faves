.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field public static final ANDROID_SYSTEM_UID:I = 0x3e8

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field public static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field public static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field public static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field public static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field public static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field public static final GSI_SANDBOX:Ljava/lang/String; = "/data/gsi_persistent_data"

.field public static final HEADER_SIZE:I = 0x8

.field public static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field public static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field public static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field public static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field public static final PARTITION_TYPE_MARKER:I = 0x19901873

.field public static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field public static final TAG:Ljava/lang/String; = "PersistentDataBlockService"

.field public static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field public mAllowedUid:I

.field public mBlockDeviceSize:J

.field public final mContext:Landroid/content/Context;

.field public final mDataBlockFile:Ljava/lang/String;

.field public final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field public mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

.field public final mIsRunningDSU:Z

.field public mIsWritable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$Ib6I4Ek3xdzDClEPgfPUhGUQJio(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->lambda$onStart$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedUid(Lcom/android/server/PersistentDataBlockService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternalService(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWritable(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsWritable(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceIsAdmin(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUserRestriction(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBlockOutputChannel(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetFrpCredentialDataOffset(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnativeWipe(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 142
    iput-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    .line 473
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 733
    new-instance v0, Lcom/android/server/PersistentDataBlockService$2;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$2;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 147
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "ro.gsid.image_running"

    const/4 v0, 0x0

    .line 148
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsRunningDSU:Z

    if-eqz p1, :cond_38

    const-string p1, "/data/gsi_persistent_data"

    .line 150
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    goto :goto_41

    :cond_38
    const-string/jumbo p1, "ro.frp.pst"

    .line 152
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    :goto_41
    const-wide/16 v0, -0x1

    .line 154
    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .registers 3

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 178
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 179
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 180
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public final computeAndWriteDigestLocked()Z
    .registers 4

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 311
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_29

    const/16 v2, 0x20

    .line 318
    :try_start_e
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 319
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 321
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_20

    return v0

    :catch_20
    move-exception p0

    .line 324
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to write block checksum"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_29
    move-exception p0

    .line 313
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "partition not available?"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    return v1
.end method

.method public final computeDigestLocked([B)[B
    .registers 7

    const/4 v0, 0x0

    .line 336
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_5f

    :try_start_12
    const-string p0, "SHA-256"

    .line 344
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_18} :catch_53

    const/16 v2, 0x20

    if-eqz p1, :cond_23

    .line 353
    :try_start_1c
    array-length v3, p1

    if-ne v3, v2, :cond_23

    .line 354
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_26

    .line 356
    :cond_23
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_26
    const/16 p1, 0x400

    new-array p1, p1, [B

    const/4 v3, 0x0

    .line 361
    invoke-virtual {p0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 362
    :goto_2e
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_39

    .line 363
    invoke-virtual {p0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_38} :catch_43
    .catchall {:try_start_1c .. :try_end_38} :catchall_41

    goto :goto_2e

    .line 369
    :cond_39
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 372
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catchall_41
    move-exception p0

    goto :goto_4f

    :catch_43
    move-exception p0

    .line 366
    :try_start_44
    sget-object p1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to read partition"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_41

    .line 369
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :goto_4f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 370
    throw p0

    :catch_53
    move-exception p0

    .line 347
    sget-object p1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "SHA-256 not supported?"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catch_5f
    move-exception p0

    .line 338
    sget-object p1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available?"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final doGetMaximumDataBlockSize()J
    .registers 5

    .line 465
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x19000

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move-wide v0, v2

    :goto_1c
    return-wide v0
.end method

.method public final doGetOemUnlockEnabled()Z
    .registers 8

    const/4 v0, 0x0

    .line 445
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_43

    .line 452
    :try_start_12
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_32
    .catchall {:try_start_12 .. :try_end_15} :catchall_30

    .line 453
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 454
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    move p0, v0

    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    .line 460
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_2d
    move-exception p0

    .line 455
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_32
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    goto :goto_3f

    :catch_32
    move-exception p0

    .line 457
    :try_start_33
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_30

    .line 460
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_3f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 461
    throw p0

    .line 447
    :catch_43
    sget-object p0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doSetOemUnlockEnabledLocked(Z)V
    .registers 10

    const-string v0, "1"

    const-string v1, "0"

    const-string/jumbo v2, "sys.oem_unlock_allowed"

    .line 425
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 427
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 p0, 0x1

    .line 429
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    if-eqz p1, :cond_1e

    move v5, p0

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    .line 430
    :goto_1f
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 431
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 432
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 433
    invoke-virtual {v3, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2b} :catch_35
    .catchall {:try_start_7 .. :try_end_2b} :catchall_33

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v0, v1

    .line 438
    :goto_2f
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_33
    move-exception p0

    goto :goto_46

    :catch_35
    move-exception p0

    .line 435
    :try_start_36
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_33

    if-eqz p1, :cond_41

    goto :goto_42

    :cond_41
    move-object v0, v1

    .line 438
    :goto_42
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_46
    if-eqz p1, :cond_49

    goto :goto_4a

    :cond_49
    move-object v0, v1

    :goto_4a
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    throw p0
.end method

.method public final enforceChecksumValidity()Z
    .registers 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 290
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    if-eqz v2, :cond_17

    .line 292
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_17

    .line 297
    :cond_14
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 293
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "Formatting FRP partition..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 295
    monitor-exit v1

    return v0

    :catchall_24
    move-exception p0

    .line 297
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final enforceIsAdmin()V
    .registers 2

    .line 236
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 237
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_11

    return-void

    .line 239
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceOemUnlockReadPermission()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_16

    goto :goto_1e

    .line 218
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final enforceOemUnlockWritePermission()V
    .registers 3

    .line 224
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    const-string v1, "Can\'t modify OEM unlock state"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceUid(I)V
    .registers 4

    .line 230
    iget p0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-ne p1, p0, :cond_5

    return-void

    .line 231
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed to access PST"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceUserRestriction(Ljava/lang/String;)V
    .registers 4

    .line 245
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 246
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final formatIfOemUnlockEnabled()V
    .registers 4

    .line 203
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 205
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 206
    :try_start_a
    invoke-virtual {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 207
    monitor-exit v1

    goto :goto_12

    :catchall_f
    move-exception p0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw p0

    :cond_12
    :goto_12
    const-string/jumbo p0, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1a

    const-string v0, "1"

    goto :goto_1c

    :cond_1a
    const-string v0, "0"

    .line 210
    :goto_1c
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final formatPartitionLocked(Z)V
    .registers 10

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/16 v1, 0x28

    .line 383
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 384
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v3, 0x19901873

    .line 385
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 386
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 388
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x1

    .line 389
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v4

    long-to-int v4, v4

    sub-int/2addr v4, v1

    add-int/lit16 v4, v4, -0x2710

    const/16 v1, 0x3e8

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    .line 393
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 395
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 396
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 400
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 403
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 404
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 405
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 408
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 409
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 411
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 412
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5f} :catch_66

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void

    :catch_66
    move-exception p0

    .line 414
    sget-object p1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "failed to format block"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getAllowedUid(I)I
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104037f

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 163
    :try_start_13
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x100000

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1f} :catch_20

    goto :goto_39

    :catch_20
    move-exception p0

    .line 167
    sget-object p1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not able to find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    const/4 p0, -0x1

    :goto_39
    return p0
.end method

.method public final getBlockDeviceSize()J
    .registers 6

    .line 266
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    .line 268
    iget-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsRunningDSU:Z

    if-eqz v1, :cond_15

    const-wide/32 v1, 0x19000

    .line 269
    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    goto :goto_1d

    .line 271
    :cond_15
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 274
    :cond_1d
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_21

    .line 276
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    :catchall_21
    move-exception p0

    .line 274
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final getBlockOutputChannel()Ljava/nio/channels/FileChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public final getFrpCredentialDataOffset()J
    .registers 5

    .line 280
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTestHarnessModeDataOffset()J
    .registers 5

    .line 284
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x20

    .line 253
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 256
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const v0, 0x19901873

    if-ne p0, v0, :cond_13

    .line 258
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public onBootPhase(I)V
    .registers 7

    const-string v0, "Service "

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_5a

    .line 190
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_10} :catch_36

    if-eqz v1, :cond_1a

    .line 197
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_5a

    .line 191
    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " init timeout"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_36} :catch_36

    :catch_36
    move-exception p0

    .line 194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 195
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init interrupted"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 199
    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 176
    new-instance v0, Lcom/android/server/PersistentDataBlockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStart"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method
