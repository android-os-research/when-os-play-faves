.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field public static final BOOT_IMAGE_STORAGE_REQUIREMENT:J

.field public static final DEFAULT_LOG_DELTA_BYTES:J

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field public static final HIGH_CHECK_INTERVAL:J = 0x2255100L

.field public static final LOW_CHECK_INTERVAL:J = 0xea60L

.field public static final MSG_CHECK_HIGH:I = 0x2

.field public static final MSG_CHECK_LOW:I = 0x1

.field public static final OPTION_FORCE_UPDATE:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field public static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field public static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"

.field public static mExhaustionBytes:J

.field public static mFullBytes:J

.field public static mFullFileNodes:J

.field public static mLastReportedFreeMemTime:J

.field public static mLowBytes:J

.field public static mLowFileNodes:J

.field public static mRomTotalBytes:J

.field public static mTotalBytes:J

.field public static mTotalFileNode:J

.field public static mUsableBytes:J

.field public static mUsableFileNode:J


# instance fields
.field public dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

.field public mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field public volatile mFnForceLevel:I

.field public final mFnStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mForceLevel:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mLocalLog:Landroid/util/LocalLog;

.field public final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field public mNotifManager:Landroid/app/NotificationManager;

.field public final mRemoteService:Landroid/os/Binder;

.field public final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckHigh(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkHigh()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckLow(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkLow()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 94
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    .line 101
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    const-wide/16 v0, 0x0

    .line 117
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    .line 118
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    .line 119
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    .line 120
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    .line 121
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 123
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    .line 124
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    .line 125
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    .line 126
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 128
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 132
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 506
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 109
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 568
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 588
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    .line 508
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceStorageMonitorService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 509
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 511
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 524
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    .line 525
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;

    invoke-direct {v0, p1}, Lcom/android/server/storage/DeviceStorageMonitorYuva;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    .line 678
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 679
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 680
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  force-low [-f]"

    .line 681
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Force storage to be low, freezing storage state."

    .line 682
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    .line 683
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  force-not-low [-f]"

    .line 684
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Force storage to not be low, freezing storage state."

    .line 685
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reset [-f]"

    .line 687
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Unfreeze storage state, returning to current real values."

    .line 688
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkHigh()V
    .registers 11

    .line 477
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const-string/jumbo v1, "storage_native_boot"

    const-string/jumbo v2, "storage_threshold_percent_high"

    const/16 v3, 0x14

    .line 480
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 484
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 485
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    .line 486
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    int-to-long v8, v1

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_20

    .line 487
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 488
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 490
    :try_start_49
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->freeAllAppCacheAboveQuota(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_20

    :catch_51
    move-exception v2

    const-string v3, "DeviceStorageMonitorService"

    .line 492
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 499
    :cond_58
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 500
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x2255100

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6d
    return-void
.end method

.method public final checkLow()V
    .registers 32

    move-object/from16 v1, p0

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 296
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 299
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/storage/VolumeInfo;

    .line 300
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v8

    const-wide/16 v9, 0x40

    .line 304
    sget-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v11, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v13

    mul-long/2addr v13, v9

    .line 305
    sget-wide v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    const-wide/16 v15, 0x5

    mul-long v17, v9, v15

    const-wide/16 v19, 0x64

    div-long v17, v17, v19

    cmp-long v0, v9, v13

    const-wide/16 v9, 0x3

    const-wide/16 v13, 0x2

    if-gtz v0, :cond_60

    .line 307
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HEADLESS_DEVICE"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 309
    sget-object v0, Landroid/util/DataUnit;->GIBIBYTES:Landroid/util/DataUnit;

    invoke-virtual {v0, v11, v12}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v11

    mul-long/2addr v11, v9

    div-long/2addr v11, v13

    goto :goto_64

    .line 313
    :cond_60
    invoke-virtual {v2, v8}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 315
    :goto_64
    invoke-virtual {v2, v8}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v21

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 319
    sput-wide v23, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    .line 320
    sput-wide v17, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    .line 321
    sput-wide v21, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    .line 322
    sput-wide v11, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    .line 328
    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v23

    mul-long/2addr v9, v11

    div-long/2addr v9, v13

    cmp-long v0, v23, v9

    const/4 v6, 0x0

    const-string v9, "check("

    const-string v10, "DeviceStorageMonitorService"

    if-gez v0, :cond_ba

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") freeStorage = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 331
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 333
    :try_start_ab
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v13, 0x2

    mul-long/2addr v13, v11

    invoke-virtual {v0, v5, v13, v14, v6}, Landroid/content/pm/PackageManagerInternal;->freeStorage(Ljava/lang/String;JI)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception v0

    .line 335
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    :cond_ba
    :goto_ba
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v5

    .line 343
    invoke-virtual {v8}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v29

    .line 344
    invoke-virtual {v8}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    .line 347
    sput-wide v29, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    .line 348
    sput-wide v13, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 352
    iget-object v8, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

    if-eqz v8, :cond_d9

    .line 353
    invoke-virtual {v8, v13, v14}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->onUpdate(J)V

    .line 357
    :cond_d9
    iget v8, v5, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 359
    iget v6, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_e4

    .line 363
    iget v6, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move v8, v15

    goto :goto_106

    :cond_e4
    cmp-long v6, v13, v21

    if-gtz v6, :cond_ea

    const/4 v6, 0x3

    goto :goto_106

    :cond_ea
    cmp-long v6, v13, v11

    if-gtz v6, :cond_f0

    :goto_ee
    const/4 v6, 0x2

    goto :goto_106

    .line 368
    :cond_f0
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ff

    sget-wide v11, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    cmp-long v6, v13, v11

    if-gez v6, :cond_ff

    goto :goto_ee

    :cond_ff
    cmp-long v6, v13, v17

    if-gtz v6, :cond_105

    const/4 v6, 0x1

    goto :goto_106

    :cond_105
    const/4 v6, 0x0

    :goto_106
    const-string v11, ")"

    if-eqz v6, :cond_139

    .line 380
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ") oldLevel:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", newLevel:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " (usableBytes="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    move-object v12, v10

    move-object v15, v11

    .line 384
    iget-wide v10, v5, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    sub-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sget-wide v17, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    cmp-long v10, v10, v17

    if-gtz v10, :cond_14a

    if-eq v8, v6, :cond_159

    .line 386
    :cond_14a
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v25, v8

    move/from16 v26, v6

    move-wide/from16 v27, v13

    invoke-static/range {v24 .. v30}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    .line 388
    iput-wide v13, v5, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 392
    :cond_159
    invoke-virtual {v1, v7, v8, v6, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    .line 394
    iput v6, v5, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 396
    new-instance v5, Landroid/os/StatFs;

    iget-object v6, v7, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v5}, Landroid/os/StatFs;->getTotalFileNode()J

    move-result-wide v10

    .line 398
    div-long v13, v10, v19

    const-wide/16 v17, 0x5

    mul-long v17, v17, v10

    .line 399
    div-long v17, v17, v19

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check_f2fs_stat_ffree()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v6, v19, v21

    if-gez v6, :cond_17f

    .line 404
    invoke-virtual {v5}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v19

    :cond_17f
    move-wide/from16 v5, v19

    .line 408
    sput-wide v13, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    .line 409
    sput-wide v17, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    .line 410
    sput-wide v10, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    .line 411
    sput-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 430
    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateFileNodeState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    move-result-object v0

    .line 432
    iget v8, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    .line 434
    iget v10, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_197

    .line 438
    iget v8, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    goto :goto_1a7

    :cond_197
    cmp-long v10, v5, v13

    if-gtz v10, :cond_19e

    move v11, v8

    const/4 v8, 0x2

    goto :goto_1a7

    :cond_19e
    cmp-long v10, v5, v17

    if-gtz v10, :cond_1a5

    move v11, v8

    const/4 v8, 0x1

    goto :goto_1a7

    :cond_1a5
    move v11, v8

    const/4 v8, 0x0

    :goto_1a7
    if-eqz v8, :cond_1d9

    .line 448
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") fn_oldLevel:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", fn_newLevel:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (usableFileNode="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object v5, v15

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1d9
    invoke-virtual {v1, v7, v11, v8}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications_filenode(Landroid/os/storage/VolumeInfo;II)V

    .line 452
    invoke-virtual {v1, v7, v11, v8, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts_filenode(Landroid/os/storage/VolumeInfo;III)V

    .line 454
    iput v8, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    goto/16 :goto_1d

    .line 460
    :cond_1e3
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1f8

    .line 461
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 464
    :cond_1f8
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_20d

    .line 465
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2255100

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_20d
    return-void
.end method

.method public final check_f2fs_stat_ffree()J
    .registers 8

    .line 269
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 272
    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalFileNode()J

    move-result-wide v0

    .line 274
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getUsedF2fsFileNode()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    const-string v6, "DeviceStorageMonitorService"

    if-nez p0, :cond_29

    const-string p0, "Cannot get USED FILE NODE NUMBER!!!"

    .line 277
    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_29
    sub-long v4, v0, v2

    .line 281
    :goto_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Available File Node Number is ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 693
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_2f

    .line 694
    array-length v1, p3

    if-eqz v1, :cond_2f

    aget-object v1, p3, p2

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2f

    .line 770
    :cond_18
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 771
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 p0, 0x0

    invoke-direct {v9, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_250

    .line 695
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    const-string v2, "Known volumes:"

    .line 696
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, p2

    .line 698
    :goto_44
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-string v4, "level"

    const-string v5, "Default:"

    const-string v6, ":"

    if-ge v2, v3, :cond_e8

    .line 699
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 700
    iget-object v7, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 701
    sget-object v8, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 702
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_80

    .line 704
    :cond_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 706
    :goto_80
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 707
    iget v5, v7, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smlevelToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 708
    iget-wide v4, v7, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "lastUsableBytes"

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 709
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 710
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 711
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    .line 712
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    .line 713
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    const-string v3, "lowBytes="

    .line 714
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v1, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const-string v3, " fullBytes="

    .line 716
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v1, v6}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v3, "path="

    .line 718
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 723
    :cond_e1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_44

    .line 726
    :cond_e8
    :goto_e8
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p2, v1, :cond_133

    .line 727
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 728
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    .line 729
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 730
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11e

    .line 732
    :cond_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 734
    :goto_11e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 735
    iget v1, v2, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-$$Nest$smlevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 736
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 737
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_e8

    .line 740
    :cond_133
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 741
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 743
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "mSeq"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 744
    iget p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smlevelToString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "mForceState"

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 745
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 746
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Storage info : "

    .line 749
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 751
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRomTotalBytes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 752
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFullBytes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowBytes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 756
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExhaustionBytes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 757
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTotalBytes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 758
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsableBytes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 760
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFullFileNodes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowFileNodes : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTotalFileNode : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUsableFileNode : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string p2, "Log history : "

    .line 765
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 766
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_250
    return-void
.end method

.method public final findOrCreateFileNodeState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;
    .registers 4

    .line 257
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    if-nez v0, :cond_15

    .line 259
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState-IA;)V

    .line 260
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public final findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .registers 4

    .line 247
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    if-nez v0, :cond_15

    .line 249
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$State-IA;)V

    .line 250
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public final loge(Ljava/lang/String;)V
    .registers 3

    const-string v0, "DeviceStorageMonitorService"

    .line 530
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .registers 11

    if-nez p2, :cond_7

    .line 631
    invoke-virtual {p1, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 633
    :cond_7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 634
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_bc

    :goto_16
    move v1, v3

    goto :goto_39

    :sswitch_18
    const-string v1, "force-not-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_16

    :cond_21
    move v1, v2

    goto :goto_39

    :sswitch_23
    const-string v1, "force-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_16

    :cond_2c
    move v1, v5

    goto :goto_39

    :sswitch_2e
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_16

    :cond_38
    move v1, v4

    :goto_39
    const/4 v6, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    packed-switch v1, :pswitch_data_ca

    .line 672
    invoke-virtual {p1, p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 648
    :pswitch_44
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result p1

    .line 649
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 652
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_bb

    .line 654
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_bb

    .line 636
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result p1

    .line 637
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iput v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 640
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_bb

    .line 642
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 644
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_bb

    .line 660
    :pswitch_94
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result p1

    .line 661
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iput v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 664
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    and-int/2addr p1, v5

    if-eqz p1, :cond_bb

    .line 666
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 668
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(I)V

    :cond_bb
    :goto_bb
    return v4

    :sswitch_data_bc
    .sparse-switch
        0x6761d4f -> :sswitch_2e
        0x5b023572 -> :sswitch_23
        0x64de7478 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_94
        :pswitch_6c
        :pswitch_44
    .end packed-switch
.end method

.method public onStart()V
    .registers 6

    .line 537
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 538
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 540
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 541
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 544
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    .line 545
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 548
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/NotificationChannel;

    const v3, 0x1040428

    .line 550
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const-string v4, "devicestoragemonitor.tv"

    invoke-direct {v2, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 548
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 555
    :cond_38
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const-string v1, "devicestoragemonitor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 556
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 559
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    .line 560
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 559
    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 564
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .registers 4

    const/4 p0, 0x0

    .line 621
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "-f"

    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_12
    return p0
.end method

.method public final updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .registers 16

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcasts("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") oldLevel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newLevel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceStorageMonitorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    return-void

    .line 833
    :cond_3e
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 836
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.DEVICE_STORAGE_EXHAUSTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 837
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x1000000

    .line 838
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "seq"

    .line 839
    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 840
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.DEVICE_STORAGE_NOT_EXHAUSTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 842
    invoke-virtual {v4, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    .line 844
    invoke-static {v5, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v6

    const-string v7, ", mUsableFileNode : "

    const-string v8, "mUsableBytes : "

    if-eqz v6, :cond_b8

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") sending intent : ACTION_DEVICE_STORAGE_EXHAUSTION"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_105

    .line 848
    :cond_b8
    invoke-static {v5, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result v5

    if-eqz v5, :cond_105

    .line 849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_NOT_EXHAUSTION"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 852
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 857
    :cond_105
    :goto_105
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x5200000

    .line 858
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 861
    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 862
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 866
    invoke-virtual {v4, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x2

    .line 868
    invoke-static {v5, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v6

    if-eqz v6, :cond_16b

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") sending intent : ACTION_DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1b8

    .line 872
    :cond_16b
    invoke-static {v5, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result v5

    if-eqz v5, :cond_1b8

    .line 873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") sending intent : ACTION_DEVICE_STORAGE_OK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 876
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 879
    :cond_1b8
    :goto_1b8
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 881
    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 882
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 884
    invoke-virtual {v4, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 887
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 889
    invoke-virtual {v5, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 890
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.samsung.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 892
    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    const/4 v2, 0x3

    .line 895
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v3

    const-string v6, "com.samsung.android.lool"

    const-string v9, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    if-eqz v3, :cond_252

    .line 896
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") sending intent : ACTION_DEVICE_STORAGE_FULL"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 900
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v9, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v5, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2b3

    .line 903
    :cond_252
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result p2

    if-eqz p2, :cond_2b3

    .line 904
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") sending intent : ACTION_DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 905
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 907
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 909
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v9, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2b3
    :goto_2b3
    return-void
.end method

.method public final updateBroadcasts_filenode(Landroid/os/storage/VolumeInfo;III)V
    .registers 11

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBroadcasts_filenode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") fn_oldLevel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fn_newLevel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceStorageMonitorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    return-void

    .line 960
    :cond_3e
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 963
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.DEVICE_FILENODE_FULL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x5200000

    .line 964
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "seq"

    .line 967
    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 968
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.DEVICE_FILENODE_NOT_FULL "

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 972
    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    const/4 v2, 0x1

    .line 974
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-$$Nest$smisEntering(III)Z

    move-result v3

    const-string v4, ", mUsableFileNode : "

    const-string v5, "mUsableBytes : "

    if-eqz v3, :cond_b2

    .line 975
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") sending intent : ACTION_DEVICE_FILENODE_FULL"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 976
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_ff

    .line 978
    :cond_b2
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-$$Nest$smisLeaving(III)Z

    move-result p2

    if-eqz p2, :cond_ff

    .line 979
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") sending intent : ACTION_DEVICE_FILENODE_NOT_FULL"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 980
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 982
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_ff
    :goto_ff
    return-void
.end method

.method public final updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .registers 16

    .line 776
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 777
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    const/4 v8, 0x2

    .line 779
    invoke-static {v8, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisEntering(III)Z

    move-result v0

    const/16 v9, 0x82

    const/16 v10, 0x17

    const/4 v11, 0x1

    if-eqz v0, :cond_b4

    .line 780
    new-instance v2, Landroid/content/Intent;

    const-string p2, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.os.storage.extra.UUID"

    .line 781
    invoke-virtual {v2, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const p2, 0x10008000

    .line 782
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x10406e9

    .line 785
    invoke-virtual {v6, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const p3, 0x10406e7

    .line 788
    invoke-virtual {v6, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x0

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    .line 791
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 793
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v6, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080a78

    .line 795
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 796
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x106001c

    .line 797
    invoke-virtual {v6, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 799
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 800
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 801
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 803
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    .line 802
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 804
    invoke-virtual {p2, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string/jumbo p3, "sys"

    .line 805
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$TvExtender;

    invoke-direct {p3}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string v0, "devicestoragemonitor.tv"

    .line 807
    invoke-virtual {p3, v0}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object p3

    .line 806
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 808
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 809
    iget p3, p2, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Landroid/app/Notification;->flags:I

    .line 810
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p3, v10, p2, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 813
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 812
    invoke-static {v9, p0, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    goto :goto_d0

    .line 815
    :cond_b4
    invoke-static {v8, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smisLeaving(III)Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 816
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, v10, p3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 819
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 818
    invoke-static {v9, p0, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    :cond_d0
    :goto_d0
    return-void
.end method

.method public final updateNotifications_filenode(Landroid/os/storage/VolumeInfo;II)V
    .registers 11

    .line 917
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 918
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x1

    .line 920
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-$$Nest$smisEntering(III)Z

    move-result v3

    const/16 v4, 0x68

    const-string/jumbo v5, "updateNotifications_filenode("

    if-eqz v3, :cond_92

    const p2, 0x1040691

    .line 921
    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const p3, 0x1040690

    .line 924
    invoke-virtual {v0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 927
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v3, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080a78

    .line 929
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 930
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v6, 0x106001c

    .line 931
    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 933
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 934
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 936
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    .line 935
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 937
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    const-string/jumbo p3, "sys"

    .line 938
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 939
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 940
    iget p3, p2, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Landroid/app/Notification;->flags:I

    .line 942
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") notifyAsUser"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 943
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v4, p2, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_bc

    .line 945
    :cond_92
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-$$Nest$smisLeaving(III)Z

    move-result p2

    if-eqz p2, :cond_bc

    .line 946
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") cancelAsUser"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 947
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v4, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_bc
    :goto_bc
    return-void
.end method
