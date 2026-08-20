.class public final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field public static final INITIAL_VERSION:I = 0x0

.field public static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field public static final MIN_WRITE_PERMISSIONS_INTERVAL_MILLIS:J = 0x1f4L

.field public static final UPGRADE_VERSION:I = -0x1

.field public static final WRITE_PERMISSIONS_DELAY_JITTER:D = 0.3

.field public static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x12cL

.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public final mAsyncHandler:Landroid/os/Handler;

.field public mExtendedFingerprint:Ljava/lang/String;

.field public final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIsLegacyPermissionStateStale:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mLastWriteDoneTimeMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mPendingStatesToWrite:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/permission/persistence/RuntimePermissionsState;",
            ">;"
        }
    .end annotation
.end field

.field public final mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPersistenceLock"
        }
    .end annotation
.end field

.field public final mPersistenceHandler:Landroid/os/Handler;

.field public final mPersistenceLock:Ljava/lang/Object;

.field public final mVersions:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HEFoCIzlLh6X_fMQwMUi81rvum4(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->lambda$writeStateForUser$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$mn_n2HZi-7bQsMe3Pafa4-vqUko(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;Ljava/lang/Object;ZZLcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;ILcom/android/server/utils/WatchedArrayMap;ILjava/lang/String;Landroid/os/Handler;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->lambda$writeStateForUser$1(Ljava/lang/Object;ZZLcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;ILcom/android/server/utils/WatchedArrayMap;ILjava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAsyncHandler(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInvokeWriteUserStateAsyncCallback(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastWriteDoneTimeMillis(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastWriteDoneTimeMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemoved(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 5631
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/permission/persistence/RuntimePermissionsPersistence;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5637
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5640
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    .line 5641
    new-instance v0, Landroid/os/Handler;

    .line 5642
    invoke-static {}, Lcom/android/server/pm/PmHandlerThread2;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Landroid/os/Handler;

    .line 5645
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 5648
    iput-wide v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastWriteDoneTimeMillis:J

    .line 5652
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5655
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    const/4 v0, 0x0

    .line 5659
    iput-boolean v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5664
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5668
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5672
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 5676
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 5687
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 5688
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private synthetic lambda$writeStateForUser$0()V
    .registers 1

    .line 5861
    invoke-virtual {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    return-void
.end method

.method private synthetic lambda$writeStateForUser$1(Ljava/lang/Object;ZZLcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;ILcom/android/server/utils/WatchedArrayMap;ILjava/lang/String;Landroid/os/Handler;)V
    .registers 16

    .line 5814
    monitor-enter p1

    if-nez p2, :cond_5

    if-eqz p3, :cond_8

    .line 5816
    :cond_5
    :try_start_5
    invoke-interface {p4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->writeLegacyPermissionStateTEMP()V

    .line 5819
    :cond_8
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 5821
    invoke-virtual {p5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p3

    const/4 p4, 0x0

    move v0, p4

    :goto_13
    if-ge v0, p3, :cond_42

    .line 5823
    invoke-virtual {p5, v0}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5824
    invoke-virtual {p5, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5825
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 5828
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    .line 5827
    invoke-virtual {p0, v3, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;

    move-result-object v3

    .line 5829
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 5830
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_3f

    .line 5836
    :cond_3c
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 5841
    :cond_42
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 5843
    invoke-virtual {p7}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p5

    :goto_4b
    if-ge p4, p5, :cond_67

    .line 5845
    invoke-virtual {p7, p4}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5846
    invoke-virtual {p7, p4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5849
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 5848
    invoke-virtual {p0, v1, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;

    move-result-object v1

    .line 5850
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p4, p4, 0x1

    goto :goto_4b

    .line 5853
    :cond_67
    new-instance p4, Lcom/android/permission/persistence/RuntimePermissionsState;

    invoke-direct {p4, p8, p9, p2, p3}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 5855
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_8a

    .line 5856
    iget-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5857
    :try_start_70
    iget-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {p1, p6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5858
    monitor-exit p2
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_87

    if-eqz p10, :cond_83

    .line 5861
    iget-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_86

    .line 5864
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    :goto_86
    return-void

    :catchall_87
    move-exception p0

    .line 5858
    :try_start_88
    monitor-exit p2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0

    :catchall_8a
    move-exception p0

    .line 5855
    :try_start_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public static nextWritePermissionDelayMillis()J
    .registers 4

    const-wide v0, -0x3fa9800000000000L    # -90.0

    const-wide v2, 0x4056800000000000L    # 90.0

    .line 5748
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->uniformRandom(DD)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static uniformRandom(DD)J
    .registers 6

    sub-double/2addr p2, p0

    .line 5742
    sget-object v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, p2

    add-double/2addr v0, p0

    double-to-long p0, v0

    return-wide p0
.end method


# virtual methods
.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3

    .line 5930
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5931
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->deleteForUser(Landroid/os/UserHandle;)V

    .line 5932
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final getExtendedFingerprint(J)Ljava/lang/String;
    .registers 4

    .line 5737
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?pc_version="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 5907
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object p0

    .line 5908
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5909
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5910
    new-instance v0, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 5911
    invoke-virtual {p2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5912
    invoke-virtual {p2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result p2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;-><init>(Ljava/lang/String;ZI)V

    .line 5913
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2e
    return-object p1
.end method

.method public getVersion(I)I
    .registers 4

    .line 5692
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5693
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 5694
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 4

    .line 5705
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5706
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 5707
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final onUserRemoved(I)V
    .registers 4

    .line 5919
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5921
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5923
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5924
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5925
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5926
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final parseLegacyPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 6116
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6117
    :try_start_3
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 6119
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_58

    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    .line 6120
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_58

    :cond_17
    if-eq v1, v3, :cond_7

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1d

    goto :goto_7

    .line 6125
    :cond_1d
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x317b13

    const/4 v6, 0x0

    if-eq v4, v5, :cond_2d

    goto :goto_37

    :cond_2d
    const-string/jumbo v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    move v3, v6

    :cond_37
    :goto_37
    if-eqz v3, :cond_3a

    goto :goto_7

    :cond_3a
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    .line 6127
    invoke-interface {p1, v3, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "granted"

    .line 6129
    invoke-interface {p1, v3, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "flags"

    .line 6131
    invoke-interface {p1, v3, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 6132
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    goto :goto_7

    .line 6138
    :cond_58
    monitor-exit p0

    return-void

    :catchall_5a
    move-exception p1

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method public final parseLegacyRuntimePermissions(Landroid/util/TypedXmlPullParser;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 6062
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6063
    :try_start_3
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 6065
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_17

    .line 6066
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_e0

    :cond_17
    if-eq v2, v4, :cond_7

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1d

    goto :goto_7

    .line 6071
    :cond_1d
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1b1cc

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v4, v5, :cond_4d

    const v5, 0x98dd20f

    if-eq v4, v5, :cond_42

    const v5, 0x1cf15833

    if-eq v4, v5, :cond_37

    goto :goto_58

    :cond_37
    const-string/jumbo v4, "shared-user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    move v2, v6

    goto :goto_59

    :cond_42
    const-string/jumbo v4, "runtime-permissions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x0

    goto :goto_59

    :cond_4d
    const-string/jumbo v4, "pkg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    move v2, v3

    goto :goto_59

    :cond_58
    :goto_58
    move v2, v7

    :goto_59
    const/4 v4, 0x0

    if-eqz v2, :cond_c7

    if-eq v2, v3, :cond_94

    if-eq v2, v6, :cond_61

    goto :goto_7

    :cond_61
    const-string/jumbo v2, "name"

    .line 6097
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6098
    invoke-virtual {p4, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_8b

    const-string v3, "PackageManager"

    .line 6100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown shared user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6101
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 6104
    :cond_8b
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    goto/16 :goto_7

    :cond_94
    const-string/jumbo v2, "name"

    .line 6084
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6085
    invoke-virtual {p3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v3, :cond_be

    const-string v3, "PackageManager"

    .line 6087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6088
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 6091
    :cond_be
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    goto/16 :goto_7

    :cond_c7
    const-string/jumbo v2, "version"

    .line 6075
    invoke-interface {p1, v4, v2, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 6077
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const-string v2, "fingerprint"

    .line 6078
    invoke-interface {p1, v4, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6079
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 6110
    :cond_e0
    monitor-exit v0

    return-void

    :catchall_e2
    move-exception p0

    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_3 .. :try_end_e4} :catchall_e2

    throw p0
.end method

.method public final readLegacyStateForUserSync(ILjava/io/File;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)V"
        }
    .end annotation

    .line 6032
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6033
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 6034
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_47

    return-void

    .line 6039
    :cond_b
    :try_start_b
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_3e
    .catchall {:try_start_b .. :try_end_14} :catchall_47

    .line 6046
    :try_start_14
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 6047
    invoke-virtual {p0, v2, p1, p3, p4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyRuntimePermissions(Landroid/util/TypedXmlPullParser;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_1b} :catch_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_22
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    .line 6053
    :try_start_1b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6055
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_47

    return-void

    :catchall_20
    move-exception p0

    goto :goto_3a

    :catch_22
    move-exception p0

    .line 6050
    :try_start_23
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed parsing permissions file: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_20

    .line 6053
    :goto_3a
    :try_start_3a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 6054
    throw p0

    :catch_3e
    const-string p0, "PackageManager"

    const-string p1, "No permissions state"

    .line 6041
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    .line 6055
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "I)V"
        }
    .end annotation

    .line 6018
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_25

    .line 6020
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 6021
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6022
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->isGranted()Z

    move-result v3

    .line 6023
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    move-result v1

    .line 6024
    new-instance v4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5, v3, v1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {p2, v4, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_25
    return-void
.end method

.method public readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 5940
    iget-object v4, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5943
    :try_start_b
    iget-object v5, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->readForUser(Landroid/os/UserHandle;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_19
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_2b

    :catchall_16
    move-exception v0

    goto/16 :goto_ff

    :catch_19
    :try_start_19
    const-string v5, "Failed to read runtime-permissions.xml. Initiate the files."

    .line 5945
    invoke-static {v5}, Lcom/samsung/android/server/pm/PmLog;->logCriticalInfoAndLogcat(Ljava/lang/String;)V

    const-string/jumbo v5, "runtime-permissions.xml"

    .line 5947
    invoke-static {v1, v5}, Lcom/android/server/pm/PackageManagerSamsungUtils;->deletePermissionApexFile(ILjava/lang/String;)V

    const-string/jumbo v5, "roles.xml"

    .line 5949
    invoke-static {v1, v5}, Lcom/android/server/pm/PackageManagerSamsungUtils;->deletePermissionApexFile(ILjava/lang/String;)V

    const/4 v5, 0x0

    .line 5953
    :goto_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_16

    if-nez v5, :cond_37

    move-object/from16 v4, p5

    .line 5955
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readLegacyStateForUserSync(ILjava/io/File;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 5957
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    return-void

    .line 5960
    :cond_37
    iget-object v6, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5963
    :try_start_3a
    invoke-virtual {v5}, Lcom/android/permission/persistence/RuntimePermissionsState;->getVersion()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_42

    move v4, v7

    .line 5967
    :cond_42
    iget-object v7, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5969
    invoke-virtual {v5}, Lcom/android/permission/persistence/RuntimePermissionsState;->getFingerprint()Ljava/lang/String;

    move-result-object v4

    .line 5970
    iget-object v7, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v4, p2

    .line 5972
    iget v4, v4, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v4, v7, :cond_5c

    move v4, v9

    goto :goto_5d

    :cond_5c
    move v4, v8

    .line 5975
    :goto_5d
    invoke-virtual {v5}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    move-result-object v7

    .line 5976
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v10

    move v11, v8

    :goto_66
    if-ge v11, v10, :cond_ae

    .line 5978
    invoke-virtual {v2, v11}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 5979
    invoke-virtual {v2, v11}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 5982
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-eqz v14, :cond_87

    .line 5985
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v12

    .line 5984
    invoke-virtual {v0, v14, v12, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 5987
    invoke-virtual {v13, v9}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_a9

    .line 5988
    :cond_87
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v14

    if-nez v14, :cond_a9

    if-nez v4, :cond_a9

    const-string v14, "PackageSettings"

    const-string v15, "Missing permission state for package %s on user %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v12, v9, v8

    .line 5990
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v8, 0x1

    aput-object v12, v9, v8

    .line 5989
    invoke-static {v14, v15, v9}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5991
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    :cond_a9
    :goto_a9
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_66

    .line 5996
    :cond_ae
    invoke-virtual {v5}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    move-result-object v2

    .line 5997
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_b7
    if-ge v8, v5, :cond_fa

    .line 5999
    invoke-virtual {v3, v8}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6000
    invoke-virtual {v3, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    .line 6003
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_d5

    .line 6006
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v7

    .line 6005
    invoke-virtual {v0, v10, v7, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    goto :goto_f6

    :cond_d5
    if-nez v4, :cond_f6

    const-string v10, "PackageSettings"

    .line 6008
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing permission state for shared user: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6009
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    goto :goto_f7

    :cond_f6
    :goto_f6
    const/4 v9, 0x1

    :goto_f7
    add-int/lit8 v8, v8, 0x1

    goto :goto_b7

    .line 6012
    :cond_fa
    monitor-exit v6

    return-void

    :catchall_fc
    move-exception v0

    monitor-exit v6
    :try_end_fe
    .catchall {:try_start_3a .. :try_end_fe} :catchall_fc

    throw v0

    .line 5953
    :goto_ff
    :try_start_ff
    monitor-exit v4
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_16

    throw v0
.end method

.method public setPermissionControllerVersion(J)V
    .registers 9

    .line 5723
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5724
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5725
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getExtendedFingerprint(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    const/4 p1, 0x0

    move p2, p1

    :goto_11
    if-ge p2, v1, :cond_34

    .line 5728
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 5729
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5730
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 5731
    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    move v3, p1

    .line 5730
    :goto_2e
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .line 5733
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public setVersion(II)V
    .registers 5

    .line 5698
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5699
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5700
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 5701
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 5

    .line 5711
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5712
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 5717
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5718
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 5719
    monitor-exit v0

    return-void

    .line 5713
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The version of the permission controller hasn\'t been set before trying to update the fingerprint."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19
    move-exception p0

    .line 5719
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final writePendingStates()V
    .registers 6

    .line 5889
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5890
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 5891
    monitor-exit v0

    return-void

    .line 5893
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 5894
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 5895
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5896
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_33

    .line 5897
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5898
    :try_start_25
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->writeForUser(Lcom/android/permission/persistence/RuntimePermissionsState;Landroid/os/UserHandle;)V

    .line 5899
    monitor-exit v2

    goto :goto_0

    :catchall_30
    move-exception p0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw p0

    :catchall_33
    move-exception p0

    .line 5896
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public writeStateForUser(ILcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Ljava/lang/Object;Z)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v13, p1

    move-object/from16 v14, p5

    const-string/jumbo v1, "writePerm"

    const-wide/32 v11, 0x40000

    .line 5795
    invoke-static {v11, v12, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v1, "PackageSettings"

    .line 5796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++ writeStateForUserSyncLPr("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5803
    :try_start_2d
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 5804
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5806
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 5807
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 5808
    iget-boolean v5, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5809
    iput-boolean v3, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5810
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_96

    .line 5812
    new-instance v9, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p1

    move-object v13, v9

    move-object/from16 v9, p4

    move-wide/from16 v16, v11

    move-object v11, v15

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;Ljava/lang/Object;ZZLcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;ILcom/android/server/utils/WatchedArrayMap;ILjava/lang/String;Landroid/os/Handler;)V

    if-eqz v14, :cond_6c

    .line 5870
    invoke-virtual {v14, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6f

    .line 5873
    :cond_6c
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 5877
    :goto_6f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastWriteDoneTimeMillis:J

    const-string v0, "PackageSettings"

    .line 5880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- writeStateForUserSyncLPr("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5881
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_96
    move-exception v0

    .line 5810
    :try_start_97
    monitor-exit v1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0
.end method

.method public writeStateForUserAsync(I)V
    .registers 14

    .line 5752
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 5753
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5754
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5755
    invoke-static {}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->nextWritePermissionDelayMillis()J

    move-result-wide v4

    .line 5757
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 5758
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5761
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5762
    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    sub-long v8, v2, v6

    const-wide/16 v10, 0x7d0

    cmp-long v1, v8, v10

    if-ltz v1, :cond_34

    .line 5767
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 5768
    monitor-exit v0

    return-void

    :cond_34
    add-long/2addr v6, v10

    sub-long/2addr v6, v2

    const-wide/16 v1, 0x0

    .line 5772
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 5774
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 5777
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5778
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_61

    .line 5780
    :cond_4c
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5781
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 5782
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5783
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5785
    :goto_61
    monitor-exit v0

    return-void

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_63

    throw p0
.end method
