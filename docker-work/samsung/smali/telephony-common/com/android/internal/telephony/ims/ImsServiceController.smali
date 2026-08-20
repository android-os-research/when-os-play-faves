.class public Lcom/android/internal/telephony/ims/ImsServiceController;
.super Ljava/lang/Object;
.source "ImsServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;,
        Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;,
        Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
    }
.end annotation


# instance fields
.field private final blacklist mAnomalyUUID:Ljava/util/UUID;

.field private blacklist mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

.field private blacklist mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

.field private blacklist mChangedPackages:Landroid/content/pm/ChangedPackages;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field protected final blacklist mContext:Landroid/content/Context;

.field private blacklist mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

.field private blacklist mFeatureStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

.field private blacklist mImsFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

.field private blacklist mImsStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsServiceFeatureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsBinding:Z

.field private blacklist mIsBound:Z

.field private blacklist mLastSequenceNumber:I

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mPermissionManager:Landroid/permission/LegacyPermissionManager;

.field private blacklist mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

.field private blacklist mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

.field private blacklist mRestartImsServiceRunnable:Ljava/lang/Runnable;

.field private blacklist mServiceCapabilities:J

.field private blacklist mSlotIdToSubIdMap:Landroid/util/SparseIntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$-Gkfyshrim9YXSbB4Ca7ZnN_PLs(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$getFeaturesForSlot$6(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8bAk-TWEhmttqXdd0QYdh-bc_Tw(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$changeImsServiceFeatures$2(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$EDxUgc3FjVUa6FB1qNLUcefesWk(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$grantPermissionsToService$3(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Syp57zGLQ-xU1yGkYIi4veLgOJo(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$changeImsServiceFeatures$1(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Y4FfpRzJkl2juMdHcL2Rchj4MH8(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$removeImsFeatureStatusCallback$4(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Z8GLh5ve60BeL3C-PNIPwWfsbBw(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$sanitizeFeatureConfig$0(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$h4SEVJKJMZ7XNw_EjbPGpUhCiWE(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->lambda$getFeaturesForSlot$5(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepo(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/ims/ImsFeatureBinderRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsServiceFeature(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndReportAnomaly(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->checkAndReportAnomaly(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupAllFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->cleanupAllFeatures()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmodifyCapabiltiesForSlot(Lcom/android/internal/telephony/ims/ImsServiceController;Ljava/util/Set;IJ)J
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mretrieveStaticImsServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->retrieveStaticImsServiceCapabilities()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->startDelayedRebindToService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindService()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Landroid/os/Handler;Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;Lcom/android/ims/ImsFeatureBinderRepository;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "e93b05e4-6d0a-4755-a6da-a2d2dbfb10d6"

    .line 81
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 245
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImsServiceControllerHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 251
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 260
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 263
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 322
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 365
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 366
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 367
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 368
    new-instance p1, Lcom/android/internal/telephony/ExponentialBackoff;

    .line 369
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v2

    .line 370
    invoke-interface {p5}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v4

    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    const/4 v6, 0x2

    move-object v1, p1

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 375
    iput-object p6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;Lcom/android/ims/ImsFeatureBinderRepository;)V
    .registers 15

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "e93b05e4-6d0a-4755-a6da-a2d2dbfb10d6"

    .line 81
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 245
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ImsServiceControllerHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 251
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 260
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    .line 263
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    .line 268
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    .line 310
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    .line 322
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 336
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    .line 338
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    .line 339
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 340
    new-instance p2, Lcom/android/internal/telephony/ExponentialBackoff;

    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 341
    invoke-interface {p3}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getStartDelay()J

    move-result-wide v3

    iget-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRebindRetry:Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;

    .line 342
    invoke-interface {p3}, Lcom/android/internal/telephony/ims/ImsServiceController$RebindRetry;->getMaximumDelay()J

    move-result-wide v5

    .line 344
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRestartImsServiceRunnable:Ljava/lang/Runnable;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    const-string p2, "legacy_permission"

    .line 346
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/permission/LegacyPermissionManager;

    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 348
    iput-object p4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_95

    .line 352
    iget p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mChangedPackages:Landroid/content/pm/ChangedPackages;

    if-eqz p1, :cond_95

    .line 354
    invoke-virtual {p1}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    :cond_95
    return-void
.end method

.method private blacklist addImsFeatureBinder(IIILandroid/os/IInterface;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ImsServiceController"

    if-nez p4, :cond_45

    .line 905
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addImsFeatureBinder: null IInterface reported for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 906
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    .line 908
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 911
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImsFeatureBinder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;

    move-result-object p4

    .line 913
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsFeatureBinderRepository;->addConnection(IIILcom/android/ims/ImsFeatureContainer;)V

    return-void
.end method

.method private blacklist addImsFeatureStatusCallback(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;II)V

    .line 862
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method private blacklist addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    const-string v1, "ImsServiceController"

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_d

    goto :goto_4a

    .line 793
    :cond_d
    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v3, :cond_2a

    .line 794
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    move-object v0, p0

    move v2, p4

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->createImsFeature(IIIJ)Landroid/os/IInterface;

    move-result-object v4

    .line 796
    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureBinder(IIILandroid/os/IInterface;J)V

    .line 798
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsFeatureStatusCallback(II)V

    goto :goto_40

    .line 801
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supports emergency calling on slot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_40
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    iget v1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureCreated(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    return-void

    :cond_4a
    :goto_4a
    const-string v0, "addImsServiceFeature called with null values."

    .line 790
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist checkAndReportAnomaly(Landroid/content/ComponentName;)V
    .registers 5

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "ImsServiceController"

    if-nez v0, :cond_c

    const-string p0, "mPackageManager null"

    .line 958
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 961
    :cond_c
    iget v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 962
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getChangedPackages(I)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 964
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getSequenceNumber()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLastSequenceNumber:I

    .line 965
    invoke-virtual {v0}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    move-result-object v0

    .line 966
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 967
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore due to updated, package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 972
    :cond_41
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mAnomalyUUID:Ljava/util/UUID;

    const-string p1, "IMS Service Crashed"

    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist cleanupAllFeatures()V
    .registers 5

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const/4 v3, 0x0

    .line 951
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_9

    .line 953
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method private blacklist getFeaturesForSlot(ILjava/util/Set;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 943
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 944
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private blacklist grantPermissionsToService()V
    .registers 7

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grant permissions to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Granting Runtime permissions to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 766
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 768
    :try_start_40
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    if-eqz v3, :cond_6b

    .line 769
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 770
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mPermissionManager:Landroid/permission/LegacyPermissionManager;

    .line 771
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v4, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataServiceManager$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 770
    invoke-virtual {p0, v2, v0, v4, v5}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    const-wide/16 v4, 0x3a98

    .line 779
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/util/TelephonyUtils;->waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_65} :catch_66

    goto :goto_6b

    :catch_66
    const-string p0, "Unable to grant permissions, binder died."

    .line 782
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    return-void
.end method

.method private static synthetic blacklist lambda$changeImsServiceFeatures$1(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .registers 1

    .line 495
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$changeImsServiceFeatures$2(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 551
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic blacklist lambda$getFeaturesForSlot$5(ILandroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 2

    .line 943
    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic blacklist lambda$getFeaturesForSlot$6(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Ljava/lang/Integer;
    .registers 1

    .line 943
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$grantPermissionsToService$3(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 2

    .line 773
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 774
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_11

    :cond_a
    const-string p0, "ImsServiceController"

    const-string p1, "Failed to grant permissions to service."

    .line 776
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void
.end method

.method private static synthetic blacklist lambda$removeImsFeatureStatusCallback$4(IILcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)Z
    .registers 4

    .line 869
    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmSlotId(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result v0

    if-ne v0, p0, :cond_e

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->-$$Nest$fgetmFeatureType(Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;)I

    move-result p0

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static synthetic blacklist lambda$sanitizeFeatureConfig$0(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;)Z
    .registers 1

    .line 450
    iget p0, p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private blacklist modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;IJ)J"
        }
    .end annotation

    .line 741
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getFeaturesForSlot(ILjava/util/Set;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 742
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-wide/16 p0, 0x1

    or-long/2addr p3, p0

    :cond_12
    const-string p0, "ImsServiceController"

    const-string p1, "skipping single service enforce check..."

    .line 756
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3
.end method

.method private blacklist removeImsFeatureBinder(II)V
    .registers 3

    .line 917
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsFeatureBinderRepository;->removeConnection(II)Lcom/android/ims/ImsFeatureContainer;

    return-void
.end method

.method private blacklist removeImsFeatureStatusCallback(II)V
    .registers 5

    .line 868
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda7;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 869
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;

    if-eqz v0, :cond_28

    .line 872
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsFeatureStatusCallback;->getCallback()Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    :cond_28
    return-void
.end method

.method private blacklist removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V
    .registers 7

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v0

    const-string v1, "ImsServiceController"

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mCallbacks:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    if-nez v0, :cond_d

    goto :goto_73

    .line 815
    :cond_d
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v3, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-interface {v0, v2, v3, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceFeatureRemoved(IILcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 816
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    if-eqz v0, :cond_5c

    .line 817
    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureStatusCallback(II)V

    .line 818
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeatureBinder(II)V

    .line 820
    :try_start_24
    iget v0, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget v2, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {p0, v0, v2, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsFeature(IIZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2c

    goto :goto_72

    :catch_2c
    move-exception p0

    .line 824
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t remove feature {"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/telephony/ims/feature/ImsFeature;->FEATURE_LOG_MAP:Ljava/util/Map;

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    .line 825
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}, connection is down: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 824
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 830
    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doesn\'t support emergency calling on slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return-void

    :cond_73
    :goto_73
    const-string p0, "removeImsServiceFeature called with null values."

    .line 811
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist retrieveStaticImsServiceCapabilities()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getStaticServiceCapabilities()J

    move-result-wide v0

    const-string v2, "ImsServiceController"

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStaticImsServiceCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStaticImsServiceCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->getCapabilitiesString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 681
    :try_start_3b
    iput-wide v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    .line 682
    monitor-exit v2

    return-void

    :catchall_3f
    move-exception p0

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    throw p0
.end method

.method private blacklist sanitizeFeatureConfig(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda4;-><init>()V

    .line 450
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 451
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 452
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 453
    new-instance v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    iget v2, v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;-><init>(II)V

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 455
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_39
    return-void
.end method

.method private blacklist startDelayedRebindToService()V
    .registers 1

    .line 712
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->start()V

    return-void
.end method

.method private blacklist unbindService()V
    .registers 5

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-eqz v1, :cond_42

    const-string v1, "ImsServiceController"

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbinding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 721
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    goto :goto_72

    :cond_42
    const-string v1, "ImsServiceController"

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService called on already unbound ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Note: unbindService called with no ServiceConnection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 728
    :goto_72
    monitor-exit v0

    return-void

    :catchall_74
    move-exception p0

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw p0
.end method


# virtual methods
.method public blacklist bind(Ljava/util/Set;Landroid/util/SparseIntArray;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")Z"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_fe

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    if-nez v1, :cond_fe

    const/4 v1, 0x1

    .line 404
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 405
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    .line 407
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->grantPermissionsToService()V

    .line 409
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getServiceInterface()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    .line 411
    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    const v1, 0x4000041

    .line 414
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string p1, "ImsServiceController"

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding ImsService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_100

    .line 420
    :try_start_60
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_90

    .line 424
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    binding failed, retrying in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 425
    invoke-virtual {v3}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 426
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    .line 427
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_90} :catch_92
    .catchall {:try_start_60 .. :try_end_90} :catchall_100

    .line 429
    :cond_90
    :try_start_90
    monitor-exit v0

    return p1

    :catch_92
    move-exception p1

    .line 431
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ExponentialBackoff;->notifyFailed()V

    .line 432
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    binding exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", retrying in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    .line 433
    invoke-virtual {v3}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mS"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string p2, "ImsServiceController"

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") with exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rebinding in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 434
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-exit v0

    return v2

    .line 440
    :cond_fe
    monitor-exit v0

    return v2

    :catchall_100
    move-exception p0

    .line 442
    monitor-exit v0
    :try_end_102
    .catchall {:try_start_90 .. :try_end_102} :catchall_100

    throw p0
.end method

.method public blacklist changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->sanitizeFeatureConfig(Ljava/util/Set;)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_6
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;-><init>()V

    .line 496
    invoke-static {v2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 495
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 498
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 499
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 500
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x2

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 501
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2f

    .line 503
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subId changed for slot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string v6, "ImsServiceController"

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subId changed for slot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 510
    :cond_a4
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    .line 512
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b6

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-nez p2, :cond_b6

    .line 513
    monitor-exit v0

    return-void

    .line 515
    :cond_b6
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const-string p2, "ImsServiceController"

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Features ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for ImsService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance p2, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    .line 522
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    if-eqz p1, :cond_1fb

    .line 524
    new-instance p1, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 526
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 527
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_120
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 528
    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v5, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v4

    .line 530
    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    goto :goto_120

    .line 533
    :cond_142
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 535
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 536
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_150
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_161

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 537
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_150

    .line 540
    :cond_161
    new-instance p2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-direct {p2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 542
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 543
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 545
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-lez p1, :cond_1d7

    .line 546
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object p1

    array-length v1, p1

    :goto_179
    if-ge v4, v1, :cond_1d7

    aget v3, p1, v4

    const/4 v5, -0x1

    .line 547
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 550
    invoke-virtual {p2}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;

    invoke-direct {v7, v3}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 551
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v6, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/internal/telephony/ims/ImsServiceController$$ExternalSyntheticLambda1;-><init>()V

    .line 552
    invoke-static {v6}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v6

    .line 551
    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 553
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    const/4 v8, 0x1

    .line 554
    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;Z)V

    goto :goto_1a2

    .line 556
    :cond_1b3
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1b7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 557
    iget-object v8, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v9, v7, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v10, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v8

    .line 559
    invoke-direct {p0, v7, v8, v9, v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->addImsServiceFeature(Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V

    goto :goto_1b7

    .line 561
    :cond_1d1
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_179

    .line 564
    :cond_1d7
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1db
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1fb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 565
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    iget v2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-wide v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mServiceCapabilities:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ims/ImsServiceController;->modifyCapabiltiesForSlot(Ljava/util/Set;IJ)J

    move-result-wide v1

    .line 567
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mRepo:Lcom/android/ims/ImsFeatureBinderRepository;

    iget v4, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget p2, p2, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->featureType:I

    invoke-virtual {v3, v4, p2, v1, v2}, Lcom/android/ims/ImsFeatureBinderRepository;->notifyFeatureCapabilitiesChanged(IIJ)V

    goto :goto_1db

    .line 570
    :cond_1fb
    monitor-exit v0

    return-void

    :catchall_1fd
    move-exception p0

    monitor-exit v0
    :try_end_1ff
    .catchall {:try_start_6 .. :try_end_1ff} :catchall_1fd

    throw p0
.end method

.method protected blacklist createFeatureContainer(IILandroid/os/IBinder;J)Lcom/android/ims/ImsFeatureContainer;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 924
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v2

    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v3

    const-string p2, "ImsServiceController"

    if-eqz v2, :cond_21

    if-nez v3, :cond_f

    goto :goto_21

    .line 936
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v4

    const-string p0, "createFeatureContainer: create ImsFeatureContainer"

    .line 937
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance p0, Lcom/android/ims/ImsFeatureContainer;

    move-object v0, p0

    move-object v1, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/ims/ImsFeatureContainer;-><init>(Landroid/os/IBinder;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;J)V

    return-object p0

    .line 929
    :cond_21
    :goto_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createFeatureContainer: invalid state. Reporting as not available. componentName= "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 929
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string p1, "createFeatureContainer: invalid state. Reporting as not available."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected blacklist createImsFeature(IIIJ)Landroid/os/IInterface;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_f

    const/4 p4, 0x2

    if-eq p3, p4, :cond_8

    return-object v0

    .line 852
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p3, -0x1

    if-ne p2, p3, :cond_27

    const-wide/16 p2, 0x1

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_26

    .line 844
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0

    :cond_26
    return-object v0

    .line 849
    :cond_27
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method public blacklist disableIms(II)V
    .registers 5

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_13

    .line 615
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 616
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->disableIms(II)V

    .line 618
    :cond_e
    monitor-exit v0

    goto :goto_2e

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    const-string p1, "ImsServiceController"

    .line 620
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t disable IMS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 986
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist enableIms(II)V
    .registers 5

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_13

    .line 599
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 600
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->enableIms(II)V

    .line 602
    :cond_e
    monitor-exit v0

    goto :goto_2e

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    const-string p1, "ImsServiceController"

    .line 604
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t enable IMS: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 589
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 640
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 641
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public blacklist getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-object p0
.end method

.method public blacklist getRebindDelay()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 580
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 630
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/aidl/IImsServiceController;->getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 631
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method protected blacklist getServiceInterface()Ljava/lang/String;
    .registers 1

    const-string p0, "android.telephony.ims.ImsService"

    return-object p0
.end method

.method public blacklist getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 650
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsServiceController;->getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 651
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method protected blacklist getStaticServiceCapabilities()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 657
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsServiceController;->getImsServiceCapabilities()J

    move-result-wide v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, 0x0

    :goto_12
    monitor-exit v0

    return-wide v1

    :catchall_14
    move-exception p0

    .line 658
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method protected blacklist isServiceControllerAvailable()Z
    .registers 1

    .line 702
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected blacklist notifyImsServiceReady()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->isServiceControllerAvailable()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "ImsServiceController"

    const-string v2, "notifyImsServiceReady"

    .line 667
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mFeatureChangedListener:Landroid/telephony/ims/ImsService$Listener;

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsServiceController;->setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    .line 669
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0}, Landroid/telephony/ims/aidl/IImsServiceController;->notifyImsServiceReadyForFeatureCreation()V

    .line 671
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method protected blacklist registerImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method protected blacklist removeImsFeature(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeImsFeature(IIZ)V

    return-void
.end method

.method public blacklist removeImsServiceFeatureCallbacks()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 707
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsStatusCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected blacklist setServiceController(Landroid/os/IBinder;)V
    .registers 2

    .line 694
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    return-void
.end method

.method protected blacklist startBindToService(Landroid/content/Intent;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;I)Z
    .registers 4

    .line 379
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public blacklist stopBackoffTimerForTesting()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 585
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 977
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsServiceController: componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsFeatures:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", serviceController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getImsServiceController()Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rebindDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getRebindDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_55
    move-exception p0

    .line 982
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public blacklist unbind()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mBackoff:Lcom/android/internal/telephony/ExponentialBackoff;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    if-nez v1, :cond_e

    .line 468
    monitor-exit v0

    return-void

    .line 471
    :cond_e
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mSlotIdToSubIdMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->changeImsServiceFeatures(Ljava/util/Set;Landroid/util/SparseIntArray;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->removeImsServiceFeatureCallbacks()V

    const-string v1, "ImsServiceController"

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding ImsService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v2, "unbinding"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V

    const/4 v1, 0x0

    .line 479
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBound:Z

    .line 480
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIsBinding:Z

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 482
    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    .line 483
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method protected blacklist unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V
    .registers 3

    .line 384
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mImsServiceConnection:Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception p0

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to unbind due to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    return-void
.end method

.method protected blacklist unregisterImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mIImsServiceController:Landroid/telephony/ims/aidl/IImsServiceController;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsServiceController;->removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1c

    .line 889
    :catch_6
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterImsFeatureStatusCallback - couldn\'t remove "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method
