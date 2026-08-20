.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.super Lcom/android/server/SystemService;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;,
        Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final INVALID_CLIENT_ID:I = -0x1

.field public static final INVALID_FE_COUNT:I = -0x1

.field public static final INVALID_THREAD_ID:J = -0x1L

.field public static final MAX_CLIENT_PRIORITY:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "TunerResourceManagerService"

.field public static final TRMS_LOCK_TIMEOUT:J = 0x1f4L


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mCasResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation
.end field

.field public mCiCamResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation
.end field

.field public mClientProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/ClientProfile;",
            ">;"
        }
    .end annotation
.end field

.field public mFrontendExistingNums:Landroid/util/SparseIntArray;

.field public mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

.field public mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

.field public mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

.field public mFrontendResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation
.end field

.field public mFrontendResourcesBackup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation
.end field

.field public mFrontendUsedNums:Landroid/util/SparseIntArray;

.field public mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

.field public mListeners:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mLnbResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mMediaResourceManager:Landroid/media/IResourceManagerService;

.field public mNextUnusedClientId:I

.field public mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

.field public mResourceRequestCount:I

.field public mTunerApiLockHolder:I

.field public mTunerApiLockHolderThreadId:J

.field public mTunerApiLockNestedCount:I

.field public final mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

.field public mTvInputManager:Landroid/media/tv/TvInputManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCasResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCiCamResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmClientProfiles(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendExistingNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendExistingNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendMaxUsableNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendResourcesBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendUsedNums(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrontendUsedNumsBackup(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLnbResources(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPriorityCongfig(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$macquireLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJJ)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->acquireLockInternal(IJJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdumpMap(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpSIA(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceDescramblerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceDescramblerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceTrmAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTrmAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceTunerAccessPermission(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->enforceTunerAccessPermission(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getMaxNumberOfFrontendsInternal(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLockInternal(IJZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveClientProfile(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetMaxNumberOfFrontendsInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setMaxNumberOfFrontendsInternal(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mvalidateResourceHandle(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->validateResourceHandle(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x3

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    .line 85
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    .line 89
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    .line 95
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    .line 96
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    .line 111
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-direct {v0}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    .line 114
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 v0, -0x1

    .line 122
    iput-wide v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 123
    iput p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    return-void
.end method


# virtual methods
.method public final acquireLockInternal(IJJ)Z
    .registers 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    const-string v7, "TunerResourceManagerService"

    const-string v8, ", "

    .line 1375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const-string v0, "acquireLockInternal()"

    .line 1378
    invoke-virtual {v1, v2, v5, v6, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1a

    return v11

    .line 1383
    :cond_1a
    :try_start_1a
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_21

    const/4 v14, 0x1

    goto :goto_22

    :cond_21
    move v14, v11

    :goto_22
    if-ne v2, v0, :cond_2d

    move v15, v14

    .line 1384
    iget-wide v13, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_27} :catch_195
    .catchall {:try_start_1a .. :try_end_27} :catchall_193

    cmp-long v13, v3, v13

    if-nez v13, :cond_2e

    const/4 v13, 0x1

    goto :goto_2f

    :cond_2d
    move v15, v14

    :cond_2e
    move v13, v11

    :goto_2f
    move v14, v15

    :goto_30
    const-string v15, "acquireLockInternal("

    if-nez v14, :cond_cb

    if-nez v13, :cond_cb

    .line 1391
    :try_start_36
    invoke-virtual {v1, v9, v10}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getElapsedTime(J)J

    move-result-wide v16
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3a} :catch_195
    .catchall {:try_start_36 .. :try_end_3a} :catchall_193

    sub-long v11, v5, v16

    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    const-string v0, "("

    if-gtz v16, :cond_7d

    .line 1393
    :try_start_44
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FAILED:acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") - timed out, but will grant the lock to the callee by stealing it from the current holder:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "), who likely failed to call releaseLock(), to prevent this from becoming an unrecoverable error"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_cc

    .line 1408
    :cond_7d
    iget-object v14, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    move-wide/from16 v18, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v14, v11, v12, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1413
    iget v9, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8d

    const/4 v14, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v14, 0x0

    :goto_8e
    if-nez v14, :cond_c5

    .line 1416
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") - woken up from cond wait, but "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") is already holding the lock. Going to wait again if timeout hasn\'t reached yet"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    move v12, v10

    move-wide/from16 v9, v18

    const/4 v11, 0x0

    goto/16 :goto_30

    :cond_cb
    const/4 v9, 0x0

    :goto_cc
    if-nez v14, :cond_12c

    if-eqz v9, :cond_d1

    goto :goto_12c

    :cond_d1
    if-eqz v13, :cond_108

    .line 1441
    iget v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v10, 0x1

    add-int/lit8 v11, v0, 0x1

    iput v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1442
    sget-boolean v10, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v10, :cond_106

    .line 1443
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") - nested count incremented to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    :goto_106
    const/4 v0, 0x1

    goto :goto_17b

    .line 1448
    :cond_108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ") - should not reach here"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 1425
    :cond_12c
    :goto_12c
    sget-boolean v10, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v10, :cond_155

    .line 1426
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SUCCESS:acquireLockInternal("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_155
    iget v10, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-eqz v10, :cond_174

    .line 1431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Something is wrong as nestedCount("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") is not zero. Will overriding it to 1 anyways"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_174
    iput v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    .line 1437
    iput-wide v3, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    const/4 v0, 0x1

    .line 1438
    iput v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I
    :try_end_17b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_17b} :catch_195
    .catchall {:try_start_44 .. :try_end_17b} :catchall_193

    :goto_17b
    if-nez v14, :cond_184

    if-nez v13, :cond_184

    if-eqz v9, :cond_182

    goto :goto_184

    :cond_182
    const/4 v11, 0x0

    goto :goto_185

    :cond_184
    :goto_184
    move v11, v0

    .line 1459
    :goto_185
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 1460
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_192
    return v11

    :catchall_193
    move-exception v0

    goto :goto_1cd

    :catch_195
    move-exception v0

    .line 1455
    :try_start_196
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception thrown in acquireLockInternal("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catchall {:try_start_196 .. :try_end_1be} :catchall_193

    .line 1459
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 1460
    iget-object v0, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1cb
    const/4 v1, 0x0

    return v1

    .line 1459
    :goto_1cd
    iget-object v2, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 1460
    iget-object v1, v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1462
    :cond_1da
    throw v0
.end method

.method public final addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V
    .registers 3

    .line 1947
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V
    .registers 3

    .line 1952
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .registers 6

    .line 1991
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1992
    invoke-virtual {p0, p1, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    return-void
.end method

.method public final addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V
    .registers 6

    .line 1858
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 1859
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupId()I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 1860
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(I)V

    .line 1861
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandles(Ljava/util/Collection;)V

    .line 1862
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1863
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 1864
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(I)V

    goto :goto_38

    .line 1866
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->addExclusiveGroupMemberFeHandle(I)V

    .line 1871
    :cond_5b
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public final addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 3

    .line 1909
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addResourcesReclaimListener(ILandroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V
    .registers 6

    const-string v0, "TunerResourceManagerService"

    if-nez p2, :cond_22

    .line 1556
    sget-boolean p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz p0, :cond_21

    .line 1557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Listener is null when client "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " registered!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void

    .line 1562
    :cond_22
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V

    .line 1566
    :try_start_27
    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_39

    .line 1572
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_39
    const-string p0, "Listener already died."

    .line 1568
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 651
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "TunerResourceManagerService"

    const-string v1, "Native media resource manager service has died"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_b
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 655
    :try_start_f
    iput-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    .line 656
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0
.end method

.method public checkClientExists(I)Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2058
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public checkIsForeground(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1633
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 1636
    :cond_6
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_d

    return v0

    .line 1640
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1641
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_11

    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_29
    return v0
.end method

.method public final clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2040
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2041
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_b

    .line 2044
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    .line 2045
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2048
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    if-eq v0, v1, :cond_4e

    .line 2049
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 2052
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2053
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->reclaimAllResources()V

    return-void
.end method

.method public final clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 2009
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2010
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    .line 2011
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    .line 2012
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 2013
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    goto :goto_b

    .line 2016
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2018
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    goto :goto_b

    .line 2023
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_51

    .line 2025
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 2027
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 2031
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseFrontend()V

    return-void
.end method

.method public clearResourceMapInternal(I)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_18

    .line 789
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 790
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 791
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 792
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_18
    return-void
.end method

.method public clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1318
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->isPriorityOverwritten()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1322
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getProcessId()I

    move-result v0

    .line 1323
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    .line 1325
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getUseCase()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    .line 1324
    invoke-virtual {p1, p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    return-void
.end method

.method public final decreFrontendNum(Landroid/util/SparseIntArray;I)V
    .registers 4

    const/4 p0, -0x1

    .line 1802
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, p0, :cond_c

    add-int/lit8 v0, v0, -0x1

    .line 1804
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_c
    return-void
.end method

.method public final dumpMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_45

    .line 1831
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1833
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    .line 1837
    :cond_3f
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1838
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_45
    return-void
.end method

.method public final dumpSIA(Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Landroid/util/IndentingPrintWriter;)V
    .registers 6

    if-eqz p1, :cond_3a

    .line 1845
    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p0, 0x0

    .line 1847
    :goto_9
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_34

    .line 1848
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p4, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    .line 1851
    :cond_34
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1852
    invoke-virtual {p4}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3a
    return-void
.end method

.method public final enforceDescramblerAccessPermission(Ljava/lang/String;)V
    .registers 4

    .line 2095
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_TV_DESCRAMBLER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTrmAccessPermission(Ljava/lang/String;)V
    .registers 4

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.TUNER_RESOURCE_ACCESS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTunerAccessPermission(Ljava/lang/String;)V
    .registers 4

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TunerResourceManagerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_TV_TUNER"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final generateResourceHandle(II)I
    .registers 4

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 2063
    iget p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mResourceRequestCount:I

    const p0, 0xffff

    and-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1926
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CasResource;

    return-object p0
.end method

.method public getCasResources()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CasResource;",
            ">;"
        }
    .end annotation

    .line 1937
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    return-object p0
.end method

.method public getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1932
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    return-object p0
.end method

.method public getCiCamResources()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/CiCamResource;",
            ">;"
        }
    .end annotation

    .line 1942
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    return-object p0
.end method

.method public getClientPriority(IZ)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1620
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClientPriority useCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    if-eqz p2, :cond_30

    .line 1626
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getForegroundPriority(I)I

    move-result p0

    return p0

    .line 1628
    :cond_30
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->getBackgroundPriority(I)I

    move-result p0

    return p0
.end method

.method public getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1986
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    return-object p0
.end method

.method public final getElapsedTime(J)J
    .registers 7

    .line 1342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long p0, v0, p1

    const-wide v2, 0x7fffffffffffffffL

    if-ltz p0, :cond_10

    sub-long v2, v0, p1

    goto :goto_1b

    :cond_10
    sub-long p0, v2, p1

    add-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-gez p2, :cond_1a

    goto :goto_1b

    :cond_1a
    move-wide v2, p0

    :goto_1b
    return-wide v2
.end method

.method public final getFrontendHighestClientPriority(I)I
    .registers 4

    .line 1724
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1730
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result p1

    .line 1733
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1734
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v1

    if-le v1, p1, :cond_14

    move p1, v1

    goto :goto_14

    :cond_2c
    return p1
.end method

.method public getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1745
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    return-object p0
.end method

.method public getFrontendResources()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;"
        }
    .end annotation

    .line 1750
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    return-object p0
.end method

.method public getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1899
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    return-object p0
.end method

.method public getLnbResources()Ljava/util/Map;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/LnbResource;",
            ">;"
        }
    .end annotation

    .line 1904
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    return-object p0
.end method

.method public final getMaxNumberOfFrontendsInternal(I)I
    .registers 4

    .line 1767
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_20

    .line 1769
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "existingNum is -1 for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1772
    :cond_20
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_29

    return v0

    :cond_29
    return p0
.end method

.method public getResourceIdFromHandle(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, -0x1

    if-ne p1, p0, :cond_4

    return p1

    :cond_4
    const/high16 p0, 0xff0000

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public hasUnusedFrontendInternal(I)Z
    .registers 4

    .line 740
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 741
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v1

    if-ne v1, p1, :cond_c

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final increFrontendNum(Landroid/util/SparseIntArray;I)V
    .registers 5

    const/4 p0, -0x1

    .line 1793
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p0, :cond_c

    .line 1795
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_10

    :cond_c
    add-int/2addr v0, v1

    .line 1797
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_10
    return-void
.end method

.method public final isFrontendMaxNumUseReached(I)Z
    .registers 5

    .line 1781
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    return v2

    .line 1785
    :cond_b
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_14

    move p0, v2

    :cond_14
    if-lt p0, v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method public isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1238
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_27

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHigherPriority(challengerProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", holderProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_27
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    const/4 v2, 0x1

    if-nez v0, :cond_32

    const-string p0, "TvInputManager is null. Can\'t compare the priority."

    .line 1244
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1250
    :cond_32
    iget-object v1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_3b

    .line 1251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_3f

    .line 1252
    :cond_3b
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    .line 1253
    :goto_3f
    iget-object v1, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    goto :goto_4e

    .line 1255
    :cond_48
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v3, v1}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v1

    .line 1257
    :goto_4e
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 1258
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    .line 1257
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    .line 1259
    iget p2, p2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p0

    if-le p1, p0, :cond_65

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    return v2
.end method

.method public isLowestPriorityInternal(II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_8

    return v0

    .line 755
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 756
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p1

    .line 759
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 760
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    if-ne v3, p2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 761
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v2

    if-le p1, v2, :cond_1b

    const/4 p0, 0x0

    return p0

    :cond_3f
    return v0
.end method

.method public final lockForTunerApiLock(IJLjava/lang/String;)Z
    .registers 9

    const-string v0, "TunerResourceManagerService"

    const/4 v1, 0x0

    .line 1357
    :try_start_3
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    .line 1360
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAILED to lock mLockForTRMSLock in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeoutMS:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mTunerApiLockHolder:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3d} :catch_3e

    return v1

    :catch_3e
    move-exception p1

    .line 1366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception thrown in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_68

    .line 1368
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_68
    return v1
.end method

.method public onStart()V
    .registers 2

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_e

    .line 137
    new-instance p1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService-IA;)V

    const-string/jumbo v0, "tv_tuner_resource_mgr"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 139
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "tv_input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/tv/TvInputManager;

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 141
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 142
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mPriorityCongfig:Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->parse()V

    .line 144
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-nez p1, :cond_54

    const-string p1, "media.resource_manager"

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "TunerResourceManagerService"

    if-nez p1, :cond_44

    const-string p0, "Resource Manager Service not available."

    .line 147
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_44
    const/4 v1, 0x0

    .line 151
    :try_start_45
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_4f

    .line 156
    invoke-static {p1}, Landroid/media/IResourceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IResourceManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    goto :goto_54

    :catch_4f
    const-string p0, "Could not link to death of native resource manager service."

    .line 153
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public reclaimResource(II)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1584
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 1588
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    return v1

    .line 1593
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v2

    .line 1594
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Failed to reclaim resources on client "

    const-string v6, "TunerResourceManagerService"

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1596
    :try_start_28
    iget-object v7, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_43

    .line 1601
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_13

    :catch_43
    move-exception p0

    .line 1598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 1604
    :cond_57
    sget-boolean v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v2, :cond_77

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reclaiming resources because higher priority client request resource type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", clientId:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_77
    :try_start_77
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;

    invoke-virtual {p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    move-result-object p2

    invoke-interface {p2}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;->onReclaimResources()V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_8a} :catch_8e

    .line 1614
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    return v1

    :catch_8e
    move-exception p0

    .line 1611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 662
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_20

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClientProfile(clientProfile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 666
    aput v0, p3, v2

    .line 667
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_2e

    const-string p0, "TvInputManager is null. Can\'t register client profile."

    .line 668
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 672
    :cond_2e
    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mNextUnusedClientId:I

    aput v3, p3, v2

    .line 674
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-nez v3, :cond_3f

    .line 675
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    goto :goto_43

    .line 676
    :cond_3f
    invoke-virtual {v0, v3}, Landroid/media/tv/TvInputManager;->getClientPid(Ljava/lang/String;)I

    move-result v0

    .line 679
    :goto_43
    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz v3, :cond_68

    .line 681
    :try_start_4b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-interface {v3, v4, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_52} :catch_53

    goto :goto_68

    :catch_53
    move-exception v3

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not overridePid in resourceManagerSercice, remote exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_68
    :goto_68
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    aget v3, p3, v2

    invoke-direct {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;-><init>(I)V

    iget-object v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 689
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->tvInputSessionId(Ljava/lang/String;)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    iget v3, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 690
    invoke-virtual {v1, v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->useCase(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 691
    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->processId(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 693
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 694
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkIsForeground(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientPriority(IZ)I

    move-result p1

    .line 693
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPriority(I)V

    .line 696
    aget p1, p3, v2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addClientProfile(ILcom/android/server/tv/tunerresourcemanager/ClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;)V

    return-void
.end method

.method public releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1290
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCasSession(sessionResourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    return-void
.end method

.method public releaseCiCamInternal(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1298
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseCiCamInternal(ciCamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V

    return-void
.end method

.method public releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1265
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseFrontend(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    if-ne p2, v0, :cond_59

    .line 1269
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 1271
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 1272
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    goto :goto_44

    .line 1277
    :cond_59
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    return-void
.end method

.method public releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1282
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseLnb(lnbHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    return-void
.end method

.method public final releaseLockInternal(IJZZ)Z
    .registers 13

    const-string/jumbo v0, "releaseLockInternal()"

    .line 1468
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->lockForTunerApiLock(IJLjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 1473
    :cond_b
    :try_start_b
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_10a

    const/4 v2, -0x1

    const-string/jumbo v3, "releaseLockInternal("

    const-string v4, "TunerResourceManagerService"

    const-string v5, ", "

    if-ne v0, p1, :cond_a4

    .line 1475
    :try_start_17
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    if-nez p4, :cond_5a

    if-gtz v0, :cond_22

    goto :goto_5a

    .line 1488
    :cond_22
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_96

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - NOT signaling because nested count is not zero ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 1477
    :cond_5a
    :goto_5a
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_89

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUCCESS:releaseLockInternal("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ") - signaling!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_89
    iput v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    const-wide/16 p1, -0x1

    .line 1484
    iput-wide p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolderThreadId:J

    .line 1485
    iput v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockNestedCount:I

    .line 1486
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockReleasedCV:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_96
    .catchall {:try_start_17 .. :try_end_96} :catchall_10a

    .line 1515
    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 1516
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_a3
    return v6

    :cond_a4
    if-ne v0, v2, :cond_d3

    if-nez p5, :cond_c5

    .line 1498
    :try_start_a8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") - called while there is no current holder"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_a8 .. :try_end_c5} :catchall_10a

    .line 1515
    :cond_c5
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 1516
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_d2
    return v1

    :cond_d3
    if-nez p5, :cond_fc

    .line 1506
    :try_start_d5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") - called while someone else:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mTunerApiLockHolder:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "is the current holder"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catchall {:try_start_d5 .. :try_end_fc} :catchall_10a

    .line 1515
    :cond_fc
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    if-eqz p1, :cond_109

    .line 1516
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_109
    return v1

    :catchall_10a
    move-exception p1

    .line 1515
    iget-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    if-eqz p2, :cond_118

    .line 1516
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLockForTRMSLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1518
    :cond_118
    throw p1
.end method

.method public final releaseLowerPriorityClientCasResources(I)V
    .registers 2

    return-void
.end method

.method public final removeCasResource(I)V
    .registers 4

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1960
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1961
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    goto :goto_f

    .line 1963
    :cond_27
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCasResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeCiCamResource(I)V
    .registers 4

    .line 1967
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1971
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1972
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    goto :goto_f

    .line 1974
    :cond_27
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mCiCamResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeClientProfile(I)V
    .registers 4

    .line 1996
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1997
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_c

    .line 1999
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearAllResourcesAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 2000
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mClientProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeFrontendResource(I)V
    .registers 6

    .line 1877
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1881
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1882
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1883
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getShareFeClientIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1884
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    goto :goto_1d

    .line 1886
    :cond_35
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clearFrontendAndClientMapping(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1888
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1889
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 1890
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->removeExclusiveGroupMemberFeId(I)V

    goto :goto_40

    .line 1892
    :cond_5c
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->decreFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 1893
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final removeLnbResource(I)V
    .registers 4

    .line 1913
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1917
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1918
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 1920
    :cond_10
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mLnbResources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .registers 5

    if-eqz p2, :cond_1c

    .line 1820
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    if-eqz p1, :cond_1c

    const/4 p0, 0x0

    .line 1822
    :goto_8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_1c

    .line 1823
    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public final replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/tv/tunerresourcemanager/FrontendResource;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 1811
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_10

    .line 1812
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_10

    .line 1813
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_10
    return-void
.end method

.method public requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1139
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCasSession(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_20
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 1145
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    iget v1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    invoke-direct {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    const v1, 0x7fffffff

    .line 1146
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v0

    .line 1147
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1148
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    :cond_3d
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1150
    aput v2, p2, v1

    .line 1151
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    .line 1152
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    const/16 v4, 0x3e9

    .line 1156
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x4

    if-nez v5, :cond_66

    .line 1158
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v0

    .line 1157
    invoke-virtual {p0, v7, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v0

    aput v0, p2, v1

    .line 1159
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    return v6

    .line 1162
    :cond_66
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v2

    :cond_6f
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1164
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v4, v10, :cond_6f

    move v8, v9

    move v4, v10

    goto :goto_6f

    :cond_88
    if-le v8, v2, :cond_a9

    .line 1173
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-le v2, v4, :cond_a9

    .line 1174
    invoke-virtual {p0, v8, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_97

    return v1

    .line 1179
    :cond_97
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getSystemId()I

    move-result v0

    .line 1178
    invoke-virtual {p0, v7, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v0

    aput v0, p2, v1

    .line 1180
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasClientMappingOnNewGrant(II)V

    return v6

    :cond_a9
    return v1
.end method

.method public requestCiCamInternal(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1188
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCiCamInternal(TunerCiCamRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_20
    iget v0, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 1194
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    iget v1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    invoke-direct {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(I)V

    const v1, 0x7fffffff

    .line 1195
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 1197
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    :cond_3d
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1199
    aput v2, p2, v1

    .line 1200
    iget v3, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v3

    .line 1201
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    const/16 v4, 0x3e9

    .line 1205
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->isFullyUsed()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x5

    if-nez v5, :cond_66

    .line 1207
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v0

    .line 1206
    invoke-virtual {p0, v7, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v0

    aput v0, p2, v1

    .line 1208
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    return v6

    .line 1211
    :cond_66
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v2

    :cond_6f
    :goto_6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1213
    invoke-virtual {p0, v9}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v10

    if-le v4, v10, :cond_6f

    move v8, v9

    move v4, v10

    goto :goto_6f

    :cond_88
    if-le v8, v2, :cond_a9

    .line 1222
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v2

    if-le v2, v4, :cond_a9

    .line 1223
    invoke-virtual {p0, v8, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v2

    if-nez v2, :cond_97

    return v1

    .line 1228
    :cond_97
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource;->getCiCamId()I

    move-result v0

    .line 1227
    invoke-virtual {p0, v7, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result v0

    aput v0, p2, v1

    .line 1229
    iget p2, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCiCamClientMappingOnNewGrant(II)V

    return v6

    :cond_a9
    return v1
.end method

.method public requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1306
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDemux(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TunerResourceManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1310
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result p0

    aput p0, p2, v0

    return p1
.end method

.method public requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1331
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDescrambler(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TunerResourceManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 1336
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->generateResourceHandle(II)I

    move-result p0

    aput p0, p2, v0

    const/4 p0, 0x1

    return p0
.end method

.method public requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 924
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestFrontend(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 928
    aput v1, p2, v0

    .line 929
    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    if-nez v2, :cond_2d

    return v0

    .line 934
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    const/16 v3, 0x3e9

    .line 939
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    move v6, v5

    :cond_40
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    .line 940
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v8

    iget v9, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    if-ne v8, v9, :cond_40

    .line 941
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v8

    if-nez v8, :cond_79

    .line 944
    iget v8, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    invoke-virtual {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isFrontendMaxNumUseReached(I)Z

    move-result v8

    if-eqz v8, :cond_63

    goto :goto_40

    .line 948
    :cond_63
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 949
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v5

    goto :goto_8c

    :cond_72
    if-ne v5, v1, :cond_40

    .line 955
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v5

    goto :goto_40

    :cond_79
    if-ne v5, v1, :cond_40

    .line 960
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendHighestClientPriority(I)I

    move-result v8

    if-le v3, v8, :cond_40

    .line 962
    invoke-virtual {v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v3

    move v6, v3

    move v3, v8

    goto :goto_40

    :cond_8c
    :goto_8c
    const/4 v4, 0x1

    if-eq v5, v1, :cond_97

    .line 971
    aput v5, p2, v0

    .line 972
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    return v4

    :cond_97
    if-eq v6, v1, :cond_b6

    .line 979
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    if-le v1, v3, :cond_b6

    .line 981
    invoke-virtual {p0, v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    .line 980
    invoke-virtual {p0, v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_ae

    return v0

    .line 985
    :cond_ae
    aput v6, p2, v0

    .line 986
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateFrontendClientMappingOnNewGrant(II)V

    return v4

    :cond_b6
    return v0
.end method

.method public requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1087
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestLnb(request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1091
    aput v1, p2, v0

    .line 1092
    iget v2, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    .line 1093
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    const/16 v3, 0x3e9

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    .line 1099
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->isInUse()Z

    move-result v7

    if-nez v7, :cond_53

    .line 1101
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v4

    goto :goto_64

    .line 1106
    :cond_53
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateAndGetOwnerClientPriority(I)I

    move-result v7

    if-le v3, v7, :cond_3c

    .line 1108
    invoke-virtual {v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result v5

    move v3, v7

    goto :goto_3c

    :cond_63
    move v4, v1

    :goto_64
    const/4 v6, 0x1

    if-le v4, v1, :cond_6f

    .line 1116
    aput v4, p2, v0

    .line 1117
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v4, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(II)V

    return v6

    :cond_6f
    if-le v5, v1, :cond_8f

    .line 1124
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result v1

    if-le v1, v3, :cond_8f

    .line 1125
    invoke-virtual {p0, v5}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->reclaimResource(II)Z

    move-result v1

    if-nez v1, :cond_87

    return v0

    .line 1129
    :cond_87
    aput v5, p2, v0

    .line 1130
    iget p1, p1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    invoke-virtual {p0, v5, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateLnbClientMappingOnNewGrant(II)V

    return v6

    :cond_8f
    return v0
.end method

.method public restoreResourceMapInternal(I)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_1f

    .line 803
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 804
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 805
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 806
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_1f
    return-void
.end method

.method public setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 816
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const/4 v1, 0x0

    const-string v2, "TunerResourceManagerService"

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "updateFrontendInfo:"

    .line 817
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 818
    :goto_e
    array-length v3, p1

    if-ge v0, v3, :cond_1d

    .line 819
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 826
    :cond_1d
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 829
    :goto_2a
    array-length v3, p1

    if-ge v1, v3, :cond_87

    .line 830
    aget-object v3, p1, v1

    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 831
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_58

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_58
    aget-object v3, p1, v1

    iget v3, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_84

    .line 837
    :cond_64
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->handle:I

    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;-><init>(I)V

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->type:I

    .line 838
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->type(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    aget-object v4, p1, v1

    iget v4, v4, Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;->exclusiveGroupId:I

    .line 839
    invoke-virtual {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->exclusiveGroupId(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;

    move-result-object v3

    .line 840
    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    .line 841
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addFrontendResource(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 845
    :cond_87
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 847
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeFrontendResource(I)V

    goto :goto_8b

    :cond_9f
    return-void
.end method

.method public setLnbInfoListInternal([I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 853
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    move v0, v2

    .line 854
    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_2a

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLnbInfo(lnbHanle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 862
    :cond_2a
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 865
    :goto_37
    array-length v3, p1

    if-ge v2, v3, :cond_7c

    .line 866
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 867
    sget-boolean v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v3, :cond_61

    .line 868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lnb handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "exists."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_61
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_79

    .line 873
    :cond_6b
    new-instance v3, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;

    aget v4, p1, v2

    invoke-direct {v3, v4}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;-><init>(I)V

    invoke-virtual {v3}, Lcom/android/server/tv/tunerresourcemanager/LnbResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v3

    .line 874
    invoke-virtual {p0, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addLnbResource(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    :goto_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 878
    :cond_7c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeLnbResource(I)V

    goto :goto_80

    :cond_94
    return-void
.end method

.method public final setMaxNumberOfFrontendsInternal(II)Z
    .registers 5

    .line 1754
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_34

    if-gt v0, p2, :cond_c

    goto :goto_34

    .line 1759
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "max number of frontend for frontendType: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be set to a value lower than the current usage count. (requested max num = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", current usage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1756
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public shareFrontendInternal(II)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 996
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shareFrontend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_23
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    goto :goto_2f

    .line 1002
    :cond_47
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    return-void
.end method

.method public storeResourceMapInternal(I)V
    .registers 3

    if-eqz p1, :cond_3

    goto :goto_1f

    .line 775
    :cond_3
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResources:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendResourcesBackup:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeResourceMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 776
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendExistingNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 777
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 778
    iget-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNums:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendMaxUsableNumsBackup:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->replaceFeCounts(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_1f
    return-void
.end method

.method public final transferFeCiCamOwner(II)Z
    .registers 5

    .line 1030
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1031
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1034
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCiCamId()I

    move-result v1

    .line 1035
    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    .line 1038
    invoke-virtual {p0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p0

    .line 1039
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 1042
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    const/4 p0, 0x1

    return p0
.end method

.method public final transferFeOwner(II)Z
    .registers 6

    .line 1006
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1007
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1009
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->shareFrontend(I)V

    .line 1010
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->stopSharingFrontend(I)V

    .line 1011
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1012
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    goto :goto_16

    .line 1015
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPrimaryFrontend()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(I)V

    const/4 p1, -0x1

    .line 1016
    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(I)V

    .line 1018
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseFrontendHandles()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1019
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v1

    if-eq v1, p2, :cond_41

    .line 1021
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "something is wrong in transferFeOwner:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_82
    const/4 p0, 0x1

    return p0
.end method

.method public final transferLnbOwner(II)Z
    .registers 8

    .line 1047
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1048
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v0

    .line 1050
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1051
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseLnbHandles()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1053
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(I)V

    .line 1056
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v4

    .line 1057
    invoke-virtual {v4, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 1059
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1063
    :cond_37
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1064
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(I)V

    goto :goto_3b

    :cond_4f
    const/4 p0, 0x1

    return p0
.end method

.method public transferOwnerInternal(III)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x5

    if-eq p1, v0, :cond_21

    .line 1080
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "transferOwnerInternal. unsupported resourceType: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TunerResourceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1076
    :cond_21
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeCiCamOwner(II)Z

    move-result p0

    return p0

    .line 1078
    :cond_26
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferLnbOwner(II)Z

    move-result p0

    return p0

    .line 1074
    :cond_2b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->transferFeOwner(II)Z

    move-result p0

    return p0
.end method

.method public unregisterClientProfileInternal(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 701
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_20

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClientProfile(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeClientProfile(I)V

    .line 706
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mMediaResourceManager:Landroid/media/IResourceManagerService;

    if-eqz p0, :cond_45

    .line 708
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    const/4 v0, -0x1

    invoke-interface {p0, p1, v0}, Landroid/media/IResourceManagerService;->overridePid(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_30

    goto :goto_45

    :catch_30
    move-exception p0

    .line 710
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not overridePid in resourceManagerSercice when unregister, remote exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void
.end method

.method public final updateAndGetOwnerClientPriority(I)I
    .registers 2

    .line 1710
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p1

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->clientPriorityUpdateOnRequest(Lcom/android/server/tv/tunerresourcemanager/ClientProfile;)V

    .line 1712
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getPriority()I

    move-result p0

    return p0
.end method

.method public final updateCasClientMappingOnNewGrant(II)V
    .registers 4

    .line 1676
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 1677
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 1678
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 1679
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCas(I)V

    return-void
.end method

.method public final updateCasClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V
    .registers 3

    .line 1691
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 1692
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCas()V

    return-void
.end method

.method public updateCasInfoInternal(II)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 885
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCasInfo(casSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSessionNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    if-nez p2, :cond_31

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCasResource(I)V

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->removeCiCamResource(I)V

    return-void

    .line 897
    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v1

    if-eqz v0, :cond_4d

    .line 900
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    move-result p0

    if-le p0, p2, :cond_44

    .line 902
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getUsedSessionNum()I

    .line 905
    :cond_44
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    if-eqz v1, :cond_4c

    .line 907
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->updateMaxSessionNum(I)V

    :cond_4c
    return-void

    .line 912
    :cond_4d
    new-instance v0, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;-><init>(I)V

    .line 913
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/CasResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v0

    .line 915
    new-instance v1, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    invoke-direct {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;-><init>(I)V

    .line 916
    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->maxSessionNum(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;

    move-result-object p1

    .line 917
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/CiCamResource$Builder;->build()Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object p1

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCasResource(Lcom/android/server/tv/tunerresourcemanager/CasResource;)V

    .line 919
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->addCiCamResource(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;)V

    return-void
.end method

.method public final updateCiCamClientMappingOnNewGrant(II)V
    .registers 4

    .line 1683
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCiCamResource(I)Lcom/android/server/tv/tunerresourcemanager/CiCamResource;

    move-result-object v0

    .line 1684
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 1685
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->setOwner(I)V

    .line 1686
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useCiCam(I)V

    return-void
.end method

.method public final updateCiCamClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/CiCamResource;I)V
    .registers 3

    .line 1698
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 1699
    invoke-virtual {p1, p2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->removeOwner(I)V

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseCiCam()V

    return-void
.end method

.method public updateClientPriorityInternal(III)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 718
    sget-boolean v0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->DEBUG:Z

    const-string v1, "TunerResourceManagerService"

    if-eqz v0, :cond_30

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClientPriority(clientId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", priority="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niceValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    if-nez p0, :cond_51

    .line 726
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not find client profile with id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when trying to update the client priority."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 732
    :cond_51
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->overwritePriority(I)V

    .line 733
    invoke-virtual {p0, p3}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setNiceValue(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateFrontendClientMappingOnNewGrant(II)V
    .registers 7

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v0

    .line 1651
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    .line 1652
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 1653
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->mFrontendUsedNums:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getType()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->increFrontendNum(Landroid/util/SparseIntArray;I)V

    .line 1654
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    .line 1655
    invoke-virtual {v0}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getExclusiveGroupMemberFeHandles()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1656
    invoke-virtual {p0, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 1657
    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useFrontend(I)V

    goto :goto_1f

    .line 1659
    :cond_3a
    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->setPrimaryFrontend(I)V

    return-void
.end method

.method public final updateLnbClientMappingOnNewGrant(II)V
    .registers 4

    .line 1663
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v0

    .line 1664
    invoke-virtual {p0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 1665
    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->setOwner(I)V

    .line 1666
    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->useLnb(I)V

    return-void
.end method

.method public final updateLnbClientMappingOnRelease(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V
    .registers 3

    .line 1670
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getOwnerClientId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object p0

    .line 1671
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->removeOwner()V

    .line 1672
    invoke-virtual {p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceBasic;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->releaseLnb(I)V

    return-void
.end method

.method public final validateResourceHandle(II)Z
    .registers 3

    const/4 p0, -0x1

    if-eq p2, p0, :cond_d

    const/high16 p0, -0x1000000

    and-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x18

    if-eq p0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method
